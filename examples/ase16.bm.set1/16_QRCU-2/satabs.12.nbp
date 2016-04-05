// automatically generated by CPROVER/SATABS

// variables with procedure-global scope

decl b0;               // 1 == (signed int)MTX
decl b1;               // 1 == ((signed int)(MTX == FALSE))
decl b2_FALSE_eq_MTX;  // FALSE == MTX

// main
void main() begin

// initialization of the shared-global and thread-local variables

b0:=*;
b1:=*;
b2_FALSE_eq_MTX:=*;

0: skip; // location only

// file ./cav16.bm/16_QRCU-2/main.c line 21
1: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 22
2: skip; // no predicates changed

// file <built-in-additions> line 27
3: skip; // no predicates changed

// file <built-in-additions> line 28
4: skip; // no predicates changed

// file <built-in-additions> line 30
5: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 16
6: b0,b1,b2_FALSE_eq_MTX := 0,1,1 constrain
((!b1) | b2_FALSE_eq_MTX) &
((!b0) | (!b2_FALSE_eq_MTX)) &
(b1 | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

// file ./cav16.bm/16_QRCU-2/main.c line 18
7: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 19
8: skip; // no predicates changed

9: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 20
10: skip; // no predicates changed

11: skip; // no predicates changed

12: skip; // location only

13: skip; // location only

// file ./cav16.bm/16_QRCU-2/main.c line 203 function main
//l1:
14: if 0 then goto 170; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 204 function main
15: start_thread goto 17;

16: goto 68;

//l2:
17: skip; // location only

// file ./cav16.bm/16_QRCU-2/main.c line 25 function qrcu_reader1
18: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 28 function qrcu_reader1
//l3:
19: if 0 then goto 50; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 29 function qrcu_reader1
20: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 30 function qrcu_reader1
21: if * then goto 35; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 32 function qrcu_reader1
22: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 32 function qrcu_reader1
// FROM Predicates: b2_FALSE_eq_MTX
23: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 32 function qrcu_reader1
// FROM Predicates: b1
24: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | 'b1) &
((!'b0) | (!'b2_FALSE_eq_MTX)) &
((!b0) | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

25: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 32 function qrcu_reader1
26: assert(b0);

// file ./cav16.bm/16_QRCU-2/main.c line 33 function qrcu_reader1
27: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 34 function qrcu_reader1
28: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 35 function qrcu_reader1
29: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 36 function qrcu_reader1
30: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 36 function qrcu_reader1
31: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 36 function qrcu_reader1
32: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

33: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 38 function qrcu_reader1
34: goto 50;

// file ./cav16.bm/16_QRCU-2/main.c line 40 function qrcu_reader1
//l4:
35: if * then goto 49; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 42 function qrcu_reader1
36: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 42 function qrcu_reader1
37: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 42 function qrcu_reader1
38: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!'b0) | (!'b1)) &
((!'b0) | (!'b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

39: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 42 function qrcu_reader1
40: assert(b0);

// file ./cav16.bm/16_QRCU-2/main.c line 43 function qrcu_reader1
41: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 44 function qrcu_reader1
42: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 45 function qrcu_reader1
43: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 46 function qrcu_reader1
44: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 46 function qrcu_reader1
45: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 46 function qrcu_reader1
46: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | (!'b0)) &
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

47: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 48 function qrcu_reader1
48: goto 50;

// file ./cav16.bm/16_QRCU-2/main.c line 28 function qrcu_reader1
//l5:
49: goto 19;

// file ./cav16.bm/16_QRCU-2/main.c line 64 function qrcu_reader1
//l6:
50: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 65 function qrcu_reader1
51: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 69 function qrcu_reader1
52: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 69 function qrcu_reader1
53: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 69 function qrcu_reader1
54: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
('b0 | 'b1) &
((!b0) | (!b2_FALSE_eq_MTX)) &
('b0 | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

55: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 69 function qrcu_reader1
56: assert(b0);

// file ./cav16.bm/16_QRCU-2/main.c line 70 function qrcu_reader1
57: if !(*) then goto 60; fi;

58: skip; // no predicates changed

59: goto 61;

// file ./cav16.bm/16_QRCU-2/main.c line 71 function qrcu_reader1
//l7:
60: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 72 function qrcu_reader1
//l8:
61: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 72 function qrcu_reader1
62: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 72 function qrcu_reader1
63: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

64: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 74 function qrcu_reader1
65: skip; // no predicates changed

66: skip; // location only

// file ./cav16.bm/16_QRCU-2/main.c line 204 function main
67: end_thread;

// file ./cav16.bm/16_QRCU-2/main.c line 205 function main
//l9:
68: start_thread goto 140;

69: goto 121;

//l10:
70: skip; // location only

// file ./cav16.bm/16_QRCU-2/main.c line 147 function qrcu_reader2
71: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 150 function qrcu_reader2
//l11:
72: if 0 then goto 144; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 151 function qrcu_reader2
73: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 152 function qrcu_reader2
74: if * then goto 142; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 154 function qrcu_reader2
75: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 154 function qrcu_reader2
76: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 154 function qrcu_reader2
77: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!'b0) | (!'b2_FALSE_eq_MTX)) &
((!b0) | 'b1) &
((!b0) | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

78: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 154 function qrcu_reader2
79: assert(b0);

// file ./cav16.bm/16_QRCU-2/main.c line 155 function qrcu_reader2
80: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 156 function qrcu_reader2
81: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 157 function qrcu_reader2
82: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 158 function qrcu_reader2
83: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 158 function qrcu_reader2
84: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 158 function qrcu_reader2
85: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

86: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 160 function qrcu_reader2
87: goto 144;

// file ./cav16.bm/16_QRCU-2/main.c line 162 function qrcu_reader2
//l12:
88: if * then goto 143; fi;

// file ./cav16.bm/16_QRCU-2/main.c line 164 function qrcu_reader2
89: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 164 function qrcu_reader2
90: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 164 function qrcu_reader2
91: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!'b0) | (!'b2_FALSE_eq_MTX)) &
((!'b0) | (!'b1));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

92: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 164 function qrcu_reader2
93: assert(b0);

// file ./cav16.bm/16_QRCU-2/main.c line 165 function qrcu_reader2
94: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 166 function qrcu_reader2
95: assume(*);

// file ./cav16.bm/16_QRCU-2/main.c line 167 function qrcu_reader2
96: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 168 function qrcu_reader2
97: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 168 function qrcu_reader2
98: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 168 function qrcu_reader2
99: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | (!'b0)) &
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

100: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 170 function qrcu_reader2
101: goto 144;

// file ./cav16.bm/16_QRCU-2/main.c line 150 function qrcu_reader2
//l13:
102: goto 141;

// file ./cav16.bm/16_QRCU-2/main.c line 175 function qrcu_reader2
//l14:
103: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 176 function qrcu_reader2
104: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 180 function qrcu_reader2
105: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 180 function qrcu_reader2
106: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 180 function qrcu_reader2
107: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
('b0 | 'b1) &
((!b0) | (!b2_FALSE_eq_MTX)) &
('b0 | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

108: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 180 function qrcu_reader2
109: assert(b0);

// file ./cav16.bm/16_QRCU-2/main.c line 181 function qrcu_reader2
110: if !(*) then goto 113; fi;

111: skip; // no predicates changed

112: goto 114;

// file ./cav16.bm/16_QRCU-2/main.c line 182 function qrcu_reader2
//l15:
113: skip; // no predicates changed

// file ./cav16.bm/16_QRCU-2/main.c line 183 function qrcu_reader2
//l16:
114: atomic_begin;

// file ./cav16.bm/16_QRCU-2/main.c line 183 function qrcu_reader2
115: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/16_QRCU-2/main.c line 183 function qrcu_reader2
116: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

117: atomic_end;

// file ./cav16.bm/16_QRCU-2/main.c line 186 function qrcu_reader2
118: skip; // no predicates changed

119: skip; // location only

// file ./cav16.bm/16_QRCU-2/main.c line 205 function main
120: end_thread;

// file ./cav16.bm/16_QRCU-2/main.c line 206 function main
//l17:
121: start_thread goto 123;

122: goto 125;

//l18:
123: skip; // location only

124: end_thread;

// file ./cav16.bm/16_QRCU-2/main.c line 203 function main
//l19:
125: goto 14;

// file ./cav16.bm/16_QRCU-2/main.c line 209 function main
//l20:
126: skip; // no predicates changed

127: skip; // location only

128: skip;

end

// c::__CPROVER_initialize
void c$$__CPROVER_initialize() begin

end

// c::qrcu_reader1
void c$$qrcu_reader1() begin

end

// c::qrcu_reader2
void c$$qrcu_reader2() begin

end

// c::main
void c$$main() begin

end

// c::qrcu_writer
void c$$qrcu_writer() begin

end

