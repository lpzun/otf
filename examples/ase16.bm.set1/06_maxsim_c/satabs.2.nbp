// automatically generated by CPROVER/SATABS

// variables with procedure-global scope


// main
void main() begin

// the procedure-local variables

decl b0_c_lt_e;  // LOCAL -- c < e

// initialization of the shared-global and thread-local variables


0: skip; // location only

// file <built-in-additions> line 27
1: skip; // no predicates changed

// file <built-in-additions> line 28
2: skip; // no predicates changed

// file <built-in-additions> line 30
3: skip; // no predicates changed

// file ./cav16.bm/06_maxsim_c/main.c line 8
4: skip; // no predicates changed

// file ./cav16.bm/06_maxsim_c/main.c line 10
5: skip; // no predicates changed

6: skip; // location only

7: skip; // location only

// file ./cav16.bm/06_maxsim_c/main.c line 79 function main
//l1:
8: if 0 then goto 45; fi;

9: start_thread goto 11;

10: goto 44;

//l2:
11: skip; // location only

// file ./cav16.bm/06_maxsim_c/main.c line 66 function thr1
12: skip; // no predicates changed

// file ./cav16.bm/06_maxsim_c/main.c line 69 function thr1
13: assume((*) & (*) & (*));

// file ./cav16.bm/06_maxsim_c/main.c line 74 function thr1
14: skip; // location only

// file ./cav16.bm/06_maxsim_c/main.c line 41 function findMax
15: skip; // no predicates changed

16: skip; // no predicates changed

17: skip; // no predicates changed

// file ./cav16.bm/06_maxsim_c/main.c line 42 function findMax
18: b0_c_lt_e := *;
// TO Predicates: b0_c_lt_e

// file ./cav16.bm/06_maxsim_c/main.c line 43 function findMax
19: b0_c_lt_e := *;
// TO Predicates: b0_c_lt_e

// file ./cav16.bm/06_maxsim_c/main.c line 44 function findMax
20: skip; // no predicates changed

// file ./cav16.bm/06_maxsim_c/main.c line 46 function findMax
21: skip; // no predicates changed

//l3:
22: if * then goto 80; fi;

// file ./cav16.bm/06_maxsim_c/main.c line 47 function findMax
23: b0_c_lt_e := *;
// TO Predicates: b0_c_lt_e

// file ./cav16.bm/06_maxsim_c/main.c line 49 function findMax
//l4:
24: if 0 then goto 38; fi;

// file ./cav16.bm/06_maxsim_c/main.c line 50 function findMax
25: b0_c_lt_e := *;
// TO Predicates: b0_c_lt_e

// file ./cav16.bm/06_maxsim_c/main.c line 51 function findMax
// FROM Predicates: b0_c_lt_e
26: if !b0_c_lt_e then goto 36; fi;

// file ./cav16.bm/06_maxsim_c/main.c line 52 function findMax
27: atomic_begin;

28: if !(*) then goto 32; fi;

29: skip; // no predicates changed

30: skip; // no predicates changed

31: goto 33;

//l5:
32: skip; // no predicates changed

//l6:
33: atomic_end;

// file ./cav16.bm/06_maxsim_c/main.c line 54 function findMax
34: if !(*) then goto 38; fi;

35: goto 37;

// file ./cav16.bm/06_maxsim_c/main.c line 57 function findMax
//l7:
36: goto 38;

// file ./cav16.bm/06_maxsim_c/main.c line 49 function findMax
//l8:
37: goto 24;

// file ./cav16.bm/06_maxsim_c/main.c line 61 function findMax
//l9:
38: assert(*);

// file ./cav16.bm/06_maxsim_c/main.c line 46 function findMax
39: skip; // no predicates changed

40: goto 22;

// file ./cav16.bm/06_maxsim_c/main.c line 63 function findMax
//l10:
41: skip; // location only

// file ./cav16.bm/06_maxsim_c/main.c line 75 function thr1
42: skip; // location only

// file ./cav16.bm/06_maxsim_c/main.c line 79 function main
43: end_thread;

//l11:
44: goto 8;

// file ./cav16.bm/06_maxsim_c/main.c line 80 function main
//l12:
45: skip; // no predicates changed

46: skip; // location only

47: skip;

end

// c::__CPROVER_initialize
void c$$__CPROVER_initialize() begin

// the procedure-local variables

decl b0_c_lt_e;  // LOCAL -- c < e

end

// c::findMax
void c$$findMax() begin

// the procedure-local variables

decl b0_c_lt_e;  // LOCAL -- c < e

end

// c::thr1
void c$$thr1() begin

// the procedure-local variables

decl b0_c_lt_e;  // LOCAL -- c < e

end

// c::main
void c$$main() begin

// the procedure-local variables

decl b0_c_lt_e;  // LOCAL -- c < e

end

