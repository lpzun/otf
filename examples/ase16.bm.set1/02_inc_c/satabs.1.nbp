// automatically generated by CPROVER/SATABS

// variables with procedure-global scope


// main
void main() begin

// initialization of the shared-global and thread-local variables


0: skip; // location only

// file <built-in-additions> line 27
1: skip; // no predicates changed

// file <built-in-additions> line 28
2: skip; // no predicates changed

// file <built-in-additions> line 30
3: skip; // no predicates changed

// file ./cav16.bm/02_inc_c/main.c line 34
4: skip; // no predicates changed

5: skip; // location only

6: skip; // location only

// file ./cav16.bm/02_inc_c/main.c line 58 function main
//l1:
7: if 0 then goto 32; fi;

8: start_thread goto 10;

9: goto 31;

//l2:
10: skip; // location only

// file ./cav16.bm/02_inc_c/main.c line 37 function thr1
11: skip; // no predicates changed

12: skip; // no predicates changed

13: skip; // no predicates changed

// file ./cav16.bm/02_inc_c/main.c line 40 function thr1
//l3:
14: skip; // no predicates changed

// file ./cav16.bm/02_inc_c/main.c line 42 function thr1
15: if !(*) then goto 18; fi;

// file ./cav16.bm/02_inc_c/main.c line 43 function thr1
16: skip; // no predicates changed

17: goto 29;

// file ./cav16.bm/02_inc_c/main.c line 46 function thr1
//l4:
18: skip; // no predicates changed

// file ./cav16.bm/02_inc_c/main.c line 48 function thr1
19: atomic_begin;

20: if !(*) then goto 24; fi;

21: skip; // no predicates changed

22: skip; // no predicates changed

23: goto 25;

//l5:
24: skip; // no predicates changed

//l6:
25: atomic_end;

// file ./cav16.bm/02_inc_c/main.c line 50 function thr1
26: if * then goto 14; fi;

// file ./cav16.bm/02_inc_c/main.c line 51 function thr1
27: assert(!(*));

// file ./cav16.bm/02_inc_c/main.c line 53 function thr1
28: skip; // no predicates changed

// file ./cav16.bm/02_inc_c/main.c line 54 function thr1
//l7:
29: skip; // location only

// file ./cav16.bm/02_inc_c/main.c line 58 function main
30: end_thread;

//l8:
31: goto 7;

// file ./cav16.bm/02_inc_c/main.c line 59 function main
//l9:
32: skip; // no predicates changed

33: skip; // location only

34: skip;

end

// c::__CPROVER_initialize
void c$$__CPROVER_initialize() begin

end

// c::thr1
void c$$thr1() begin

end

// c::main
void c$$main() begin

end

