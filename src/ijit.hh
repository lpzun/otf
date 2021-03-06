/******************************************************************************
 * Synopsis	 [IJIT: An API for Boolean Program Analysis with JIT Translation]
 *
 * Developer     [Peizun Liu]
 *
 * (C) 2015 - 2018 Peizun Liu, Northeastern University, United States
 *
 * All rights reserved. Redistribution and use in source and binary forms,
 * with or without modification, are permitted provided that the following
 * conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgment:
 *
 *    This product includes software developed by Peizun Liu @ Thomas Wahl's
 *    group, Northeastern University, United States and its contributors.
 *
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS `AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************/

#ifndef IJIT_HH_
#define IJIT_HH_

#include "util/algs.hh"
#include "util/excp.hh"
#include "api/cfg.hh"
#include "bpp/bopp.tab.hh"

namespace ijit {
/**
 * @brief a program state has two different representation in our API:
 *        (1) Counter Abstraction Representation:
 *              tau = <s | (l0, n0), ..., (lk, nk)>
 *            where l0 ... lk are different local states.
 *        (2) Non-Counter Abstraction Representation:
 *              tau = <s | l0, l1, l2, ..., ln>
 *            where l0, ..., ln are probably different or same local states.
 */
using prog_state = global_state;
using prog_thread = thread_state;

/**
 * @brief a parser: parse a Boolean program, build its control flow graph
 *        and extract its weakest preconditions/strongest postconditions
 */
class parser {
public:
	parser();

	~parser();

	static pair<deque<prog_thread>, deque<prog_thread>> parse(
			const string& filename, const mode& m = mode::PREV);

	static const cfg& get_post_G() {
		return post_G;
	}

	static const cfg& get_prev_G() {
		return prev_G;
	}

private:
	static cfg prev_G; /// control flow graph in PREV mode
	static cfg post_G; /// control flow graph in POST mode

	static deque<prog_thread> create_initl_state(
			const map<ushort, sool>& s_vars_init,
			const map<ushort, sool>& l_vars_init, const size_pc& pc = 0);

	static deque<prog_thread> create_final_state(const mode& m,
			const set<size_pc>& pcs);
	static void create_final_state(const size_pc& pos, const cfg& G,
			const size_pc& pc, deque<prog_thread>& fps);
};

/// system state in counter abstraction
using syst_state = pair<uint, map<uint, ushort>>;
using syst_thread = pair<uint, uint>;

ostream& operator <<(ostream& out, const syst_state& s);
ostream& operator <<(ostream& out, const syst_thread& s);

/**
 * @brief a converter: convert a program state to a system state, and vice
 *        versa.
 *
 *        System states are probably represented in counter abstraction form
 *        or non-counter abstraction.
 *
 * @note  Remark that the diversity of local state storage (either in counter
 *        abstraction form or non-counter abstraction, or storing  in various
 *        STL containers, like vector, list, ect.) is materialized here using
 *        the template meta-programming.
 *
 *        With template meta-programming, class converter provides better
 *        flexibility for API users: they could use any STL container to
 *        store their local states, e.g., vector, list, map etc., and finally
 *        convert to our internal representation in this class.
 */
class converter {
public:
	converter() :
			mask(std::numeric_limits<size_pc>::max()) {
	}

	virtual ~converter() {
	}
	/// aliasing system state
//    using syst_state = pair<S, container_t<L ...>>;

	/**
	 * @brief This function is to convert a list of program states to a list
	 *        of system states
	 *
	 * @param ss: a list of program states
	 *
	 * @return a list of system states
	 */
	virtual deque<syst_state> convert(const deque<prog_state>& ps);

	/**
	 * @brief This function is to convert program state to a system state
	 *
	 * @param ss: program state
	 *
	 * @return system state
	 */
	virtual syst_state convert(const prog_state& ps);

	/**
	 * @brief This function is to convert a system state to a program state
	 *
	 * @param ss: system state
	 *
	 * @return program state
	 */
	virtual prog_state convert(const syst_state& ss);

	/**
	 * @brief This function is to convert a list of program thread states to
	 *        a list of system states
	 *
	 * @param ss: a list of program thread states
	 *
	 * @return a list of system thread states
	 */
	virtual deque<syst_thread> convert(const deque<prog_thread>& pts);

	/**
	 * @brief This function is to convert program thread state to a system
	 *        state
	 *
	 * @param ss: program thread state
	 *
	 * @return system thread state
	 */
	virtual syst_thread convert(const prog_thread& pt);

	/**
	 * @brief This function is to convert a system thread state to a program
	 *        thread state
	 *
	 * @param ss: system thread state
	 *
	 * @return program thread state
	 */
	virtual prog_thread convert(const syst_thread& st);

public:
	uint mask;
	state_v convert_sss_to_sps(const uint& ss);
	uint convert_sps_to_sss(const state_v& ps);

	pair<size_pc, state_v> convert_lss_to_lps(const uint& ss);
	uint convert_lps_to_lss(const size_pc& pc, const state_v& ps);
};

/**
 * @brief the type of pre_image: direct preimage or covering preimage
 *        DRC: direct   preimages
 *        COV: covering preimages
 */
enum class prev {
	DRC, COV
};

/**
 * @brief interface: the class <pre_image> is used to compute preimages
 *        of a global program state.
 *
 * @note 1: we have two different kinds of preimages:
 *         (1) the direct preimages, and
 *         (2) the covering preimages.
 *         We use enum {DRC, COV} to distinguish them.
 *
 * @note 2: step functions return a list instead of a set of direct (covering)
 *         preimages due to the following four reasons:
 *
 *         (1) it's not so clear that how to *define* the duplication relation
 *         after we implement different internal representations: the counters,
 *         the orderings or some relation;
 *
 *         (2) the requirement of users are various; maybe they want to delay
 *         the operation of removing duplication;
 *
 *         (3) the duplication elimination is usually implemented in the main
 *         algorithms to which use our API applies. It would lead to duplicate
 *         operations;
 *
 *         (4) I didn't see any potential places which could cause duplication
 *         in one single preimage step.
 */
class pre_image {
public:
	pre_image();
	~pre_image();

	/**
	 * @brief This function is to compute all preimages of global state tau.
	 *        It iterates over all threads, i.e., each thread is used as the
	 *        active thread.
	 *
	 * @param tau: the global program state
	 * @param p  : the type of preimages: the default is to compute direct
	 *             preimages.
	 *
	 * @return a list of direct (covering) preimages.
	 */
	deque<prog_state> step(const prog_state& tau, const prev& p = prev::DRC);

	/**
	 * @brief This function is to compute all DIRECT preimages of global state
	 *         tau w.r.t. a active thread that is identified by thread_id.
	 *
	 * @note  This implementation is always associated with non-counter abstr-
	 *        action representation.
	 *
	 * @param tau      : the global program state
	 * @param thread_id: the identifier of active thread
	 *
	 * @return a list of direct preimages.
	 */
	deque<prog_state> step(const prog_state& tau, const size_tc& thread_id);

	/**
	 * @brief This function is to compute all DIRECT preimages of global state
	 *         tau w.r.t. a active thread that is identified by local state l.
	 *
	 * @note  We still have not found a potential meaningful application of this
	 *        function.
	 *
	 * @param tau: the global program state
	 * @param l  : the identifier of active thread
	 *
	 * @return a list of direct preimages.
	 */
	deque<prog_state> step(const prog_state& tau, const local_state& l);

private:
	set<local_state> cand_L; /// candidate local states for covering preimages

	void init_cand_L();

	/// compute direct   preimages
	deque<prog_state> compute_drc_pre_images(const prog_state& _tau);

	/// compute covering preimages
	deque<prog_state> compute_cov_pre_images(const prog_state& _tau);

	void compute_pre_images(const prog_state& _tau, const local_state& _l,
			deque<prog_state>& images);

	deque<pair<state_v, state_v>> compute_image_assg_stmt(const size_pc pc,
			const state_v _sv, const state_v _lv);
	void conjoin_equality(const bool& _v, const deque<symbol>& se,
			deque<symbol>& app);

	local_state compute_image_ifth_stmt(const local_state& l,
			const size_pc _pc);
	local_state compute_image_else_stmt(const local_state& l);


	deque<prog_thread> compute_image_atom_sect(const size_pc _pc,
			const state_v _sv, const state_v _lv);

	void compute_image_bcst_stmt(deque<local_state>& pw);
};

/**
 * @brief interface: the class <post_image> is used to compute postimages
 *        of a global state state.
 *
 *
 * @note 2: step functions return a list instead of a set of postimages due to
 *         the following four reasons:
 *
 *         (1) it's not so clear that how to *define* the duplication relation
 *         after we implement different internal representations: the counters,
 *         the orderings or some relation;
 *
 *         (2) the requirement of users are various; maybe they want to delay
 *         the operation of removing duplication;
 *
 *         (3) the duplication elimination is usually implemented in the main
 *         algorithms to which use our API applies. It would lead to duplicate
 *         operations;
 *
 *         (4) I didn't see any potential places which could cause duplication
 *         in one single postimage step.
 */
class post_image {
public:
	post_image();
	~post_image();

	/**
	 * @brief This function is to compute all postimages of global state tau.
	 *        It iterates over all threads, i.e., each thread is used as the
	 *        active thread.
	 *
	 * @param tau: the global program state
	 *
	 * @return a list of postimages.
	 */
	deque<prog_state> step(const prog_state& tau);

	/**
	 * @brief This function is to compute all postimages of global state tau
	 *        w.r.t. a active thread that is identified by thread_id.
	 *
	 * @note  This implementation is always associated with non-counter abstr-
	 *        action representation.
	 *
	 * @param tau      : the global program state
	 * @param thread_id: the identifier of active thread
	 *
	 * @return a list of postimages.
	 */
	deque<prog_state> step(const prog_state& tau, const size_tc& thread_id);

	/**
	 * @brief This function is to compute all postimages of global state tau
	 *        w.r.t. a active thread that is identified by local state l.
	 *
	 * @note  We still have not found a potential meaningful application of this
	 *        function.
	 *
	 * @param tau: the global program state
	 * @param l  : the identifier of active thread
	 *
	 * @return a list of postimages.
	 */
	deque<prog_state> step(const prog_state& tau, const local_state& l);

private:
	void compute_post_images(const prog_state& tau, const local_state& l,
			deque<prog_state>& images);

	void compute_image_assg_stmt(const state_v& sv, const state_v& lv,
			const size_pc& pc, deque<state_v>& svs, deque<state_v>& lvs);

	local_state compute_image_ifth_stmt(const local_state& l,
			const size_pc& _pc);
	local_state compute_image_else_stmt(const local_state& l);

	deque<pair<state_v, state_v>> compute_image_atom_sect(const state_v& sv,
			const state_v& lv, size_pc& pc);
};

} /* namespace otf */

#endif /* IJIT_HH_ */
