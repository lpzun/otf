// automatically generated by CPROVER/SATABS

// variables with procedure-global scope


// main
void main() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

// initialization of the shared-global and thread-local variables


0: skip; // location only

// file <built-in-additions> line 27
1: skip; // no predicates changed

// file <built-in-additions> line 28
2: skip; // no predicates changed

// file <built-in-additions> line 30
3: skip; // no predicates changed

// file ./cav16.bm/04_PrngSimp-L/main.c line 36
4: skip; // no predicates changed

5: skip; // location only

6: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 93 function main
//l1:
7: if 0 then goto 70; fi;

8: start_thread goto 10;

9: goto 44;

//l2:
10: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 87 function thr1
11: b0 := *;
// TO Predicates: b0

12: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 72 function PseudoRandomUsingAtomic_nex
13: skip; // no predicates changed

14: b2_nexts_le_10,b4_nex_return_eq_nexts := *,*;
// TO Predicates: b2_nexts_le_10 b4_nex_return_eq_nexts

15: skip; // no predicates changed

16: b1_nex_return_le_10,b3_10_eq_nex_return,b4_nex_return_eq_nexts := *,*,*;
// TO Predicates: b1_nex_return_le_10 b3_10_eq_nex_return b4_nex_return_eq_nexts

// file ./cav16.bm/04_PrngSimp-L/main.c line 73 function PseudoRandomUsingAtomic_nex
//l3:
17: if 0 then goto 39; fi;

// file ./cav16.bm/04_PrngSimp-L/main.c line 74 function PseudoRandomUsingAtomic_nex
18: skip; // no predicates changed

// file ./cav16.bm/04_PrngSimp-L/main.c line 75 function PseudoRandomUsingAtomic_nex
19: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 27 function nC
20: skip; // no predicates changed

21: skip; // no predicates changed

22: skip; // no predicates changed

// file ./cav16.bm/04_PrngSimp-L/main.c line 30 function nC
//l4:
23: skip; // location only

24: skip; // no predicates changed

// file ./cav16.bm/04_PrngSimp-L/main.c line 32 function nC
25: if (*) | (*) then goto 23; fi;

// file ./cav16.bm/04_PrngSimp-L/main.c line 33 function nC
26: b2_nexts_le_10,b4_nex_return_eq_nexts := *,*;
// TO Predicates: b2_nexts_le_10 b4_nex_return_eq_nexts

// file ./cav16.bm/04_PrngSimp-L/main.c line 34 function nC
27: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 76 function PseudoRandomUsingAtomic_nex
28: atomic_begin;

29: if !(*) then goto 33; fi;

30: skip; // no predicates changed

31: skip; // no predicates changed

32: goto 34;

//l5:
33: skip; // no predicates changed

//l6:
34: atomic_end;

// file ./cav16.bm/04_PrngSimp-L/main.c line 78 function PseudoRandomUsingAtomic_nex
35: if !(*) then goto 38; fi;

// file ./cav16.bm/04_PrngSimp-L/main.c line 79 function PseudoRandomUsingAtomic_nex
// FROM Predicates: b2_nexts_le_10 b3_10_eq_nex_return b4_nex_return_eq_nexts
36: b1_nex_return_le_10,b3_10_eq_nex_return,b4_nex_return_eq_nexts := 1,*,*;
// TO Predicates: b1_nex_return_le_10 b3_10_eq_nex_return b4_nex_return_eq_nexts

// file ./cav16.bm/04_PrngSimp-L/main.c line 80 function PseudoRandomUsingAtomic_nex
37: goto 39;

// file ./cav16.bm/04_PrngSimp-L/main.c line 73 function PseudoRandomUsingAtomic_nex
//l7:
38: goto 17;

// file ./cav16.bm/04_PrngSimp-L/main.c line 83 function PseudoRandomUsingAtomic_nex
// FROM Predicates: b1_nex_return_le_10
//l8:
39: b0 := b1_nex_return_le_10;
// TO Predicates: b0

// file ./cav16.bm/04_PrngSimp-L/main.c line 84 function PseudoRandomUsingAtomic_nex
40: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 87 function thr1
41: assert(b0);

// file ./cav16.bm/04_PrngSimp-L/main.c line 88 function thr1
42: skip; // location only

// file ./cav16.bm/04_PrngSimp-L/main.c line 93 function main
43: end_thread;

//l9:
44: goto 7;

// file ./cav16.bm/04_PrngSimp-L/main.c line 94 function main
//l10:
45: skip; // no predicates changed

46: skip; // location only

47: skip;

end

// c::__CPROVER_initialize
void c$$__CPROVER_initialize() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

end

// c::nC
void c$$nC() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

end

// c::rand
void c$$rand() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

end

// c::PseudoRandomUsingAtomic_nex
void c$$PseudoRandomUsingAtomic_nex() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

end

// c::thr1
void c$$thr1() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

end

// c::main
void c$$main() begin

// the procedure-local variables

decl b0;                      // LOCAL -- return_value_PseudoRandomUsingAtomic_nex$1 <= 10
decl b1_nex_return_le_10;     // LOCAL -- nex_return <= 10
decl b2_nexts_le_10;          // LOCAL -- nexts <= 10
decl b3_10_eq_nex_return;     // LOCAL -- 10 == nex_return
decl b4_nex_return_eq_nexts;  // LOCAL -- nex_return == nexts

end

