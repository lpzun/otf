// automatically generated by CPROVER/SATABS

// variables with procedure-global scope

decl b0_0_eq_top;  // 0 == top

// main
void main() begin

// initialization of the shared-global and thread-local variables

b0_0_eq_top:=*;

0: skip; // location only

// file <built-in-additions> line 27
1: skip; // no predicates changed

// file <built-in-additions> line 28
2: skip; // no predicates changed

// file <built-in-additions> line 30
3: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 39
4: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 42
5: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 44
6: b0_0_eq_top := 1;
// TO Predicates: b0_0_eq_top

7: skip; // location only

8: skip; // location only

// file ./cav16.bm/09_Stack-L/main.c line 87 function main
//l1:
9: if 0 then goto 94; fi;

10: start_thread goto 12;

11: goto 93;

//l2:
12: skip; // location only

// file ./cav16.bm/09_Stack-L/main.c line 81 function thr1
//l3:
13: if 0 then goto 92; fi;

14: skip; // location only

// file ./cav16.bm/09_Stack-L/main.c line 67 function push
15: skip; // no predicates changed

16: skip; // no predicates changed

17: skip; // no predicates changed

18: skip; // no predicates changed

19: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 68 function push
20: atomic_begin;

21: if !(*) then goto 24; fi;

22: skip; // no predicates changed

23: goto 26;

//l4:
24: skip; // no predicates changed

25: skip; // no predicates changed

//l5:
26: atomic_end;

// file ./cav16.bm/09_Stack-L/main.c line 69 function push
27: if !(*) then goto 29; fi;

// file ./cav16.bm/09_Stack-L/main.c line 70 function push
28: assume(0);

// file ./cav16.bm/09_Stack-L/main.c line 71 function push
//l6:
29: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 72 function push
//l7:
30: if 0 then goto 91; fi;

// file ./cav16.bm/09_Stack-L/main.c line 73 function push
31: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 74 function push
32: skip; // no predicates changed

// file ./cav16.bm/09_Stack-L/main.c line 75 function push
33: atomic_begin;

34: if !(*) then goto 38; fi;

35: b0_0_eq_top := *;
// TO Predicates: b0_0_eq_top

36: skip; // no predicates changed

37: goto 39;

//l8:
38: skip; // no predicates changed

//l9:
39: atomic_end;

// file ./cav16.bm/09_Stack-L/main.c line 76 function push
40: if * then goto 90; fi;

41: goto 91;

// file ./cav16.bm/09_Stack-L/main.c line 72 function push
//l10:
42: goto 30;

// file ./cav16.bm/09_Stack-L/main.c line 78 function push
//l11:
43: skip; // location only

// file ./cav16.bm/09_Stack-L/main.c line 81 function thr1
44: assert(!b0_0_eq_top);

// file ./cav16.bm/09_Stack-L/main.c line 81 function thr1
45: goto 13;

// file ./cav16.bm/09_Stack-L/main.c line 82 function thr1
//l12:
46: skip; // no predicates changed

47: skip; // location only

// file ./cav16.bm/09_Stack-L/main.c line 87 function main
48: end_thread;

//l13:
49: goto 9;

// file ./cav16.bm/09_Stack-L/main.c line 88 function main
//l14:
50: skip; // no predicates changed

51: skip; // location only

52: skip;

end

// c::__CPROVER_initialize
void c$$__CPROVER_initialize() begin

end

// c::push
void c$$push() begin

end

// c::thr1
void c$$thr1() begin

end

// c::main
void c$$main() begin

end

