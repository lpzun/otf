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

// file ./cav16.bm/17_QRCU-4/main.c line 17
1: skip; // no predicates changed

2: skip; // no predicates changed

3: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 18
4: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 19
5: skip; // no predicates changed

// file <built-in-additions> line 27
6: skip; // no predicates changed

// file <built-in-additions> line 28
7: skip; // no predicates changed

// file <built-in-additions> line 30
8: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 13
9: b0,b1,b2_FALSE_eq_MTX := 0,1,1 constrain
((!b1) | b2_FALSE_eq_MTX) &
((!b0) | (!b2_FALSE_eq_MTX)) &
(b1 | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

// file ./cav16.bm/17_QRCU-4/main.c line 15
10: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 16
11: skip; // no predicates changed

12: skip; // no predicates changed

13: skip; // location only

14: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 227 function main
//l1:
15: if 0 then goto 362; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 228 function main
16: start_thread goto 18;

17: goto 69;

//l2:
18: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 22 function qrcu_reader1
19: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 25 function qrcu_reader1
//l3:
20: if 0 then goto 51; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 26 function qrcu_reader1
21: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 27 function qrcu_reader1
22: if * then goto 36; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 29 function qrcu_reader1
23: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 29 function qrcu_reader1
// FROM Predicates: b2_FALSE_eq_MTX
24: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 29 function qrcu_reader1
// FROM Predicates: b1
25: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | 'b1) &
((!'b0) | (!'b2_FALSE_eq_MTX)) &
((!b0) | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

26: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 29 function qrcu_reader1
27: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 30 function qrcu_reader1
28: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 31 function qrcu_reader1
29: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 32 function qrcu_reader1
30: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 33 function qrcu_reader1
31: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 33 function qrcu_reader1
32: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 33 function qrcu_reader1
33: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

34: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 35 function qrcu_reader1
35: goto 51;

// file ./cav16.bm/17_QRCU-4/main.c line 37 function qrcu_reader1
//l4:
36: if * then goto 50; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 39 function qrcu_reader1
37: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 39 function qrcu_reader1
38: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 39 function qrcu_reader1
39: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!'b0) | (!'b1)) &
((!'b0) | (!'b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

40: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 39 function qrcu_reader1
41: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 40 function qrcu_reader1
42: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 41 function qrcu_reader1
43: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 42 function qrcu_reader1
44: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 43 function qrcu_reader1
45: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 43 function qrcu_reader1
46: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 43 function qrcu_reader1
47: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | (!'b0)) &
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

48: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 45 function qrcu_reader1
49: goto 51;

// file ./cav16.bm/17_QRCU-4/main.c line 25 function qrcu_reader1
//l5:
50: goto 20;

// file ./cav16.bm/17_QRCU-4/main.c line 50 function qrcu_reader1
//l6:
51: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 51 function qrcu_reader1
52: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 55 function qrcu_reader1
53: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 55 function qrcu_reader1
54: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 55 function qrcu_reader1
55: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
('b0 | 'b1) &
((!b0) | (!b2_FALSE_eq_MTX)) &
('b0 | (!b2_FALSE_eq_MTX)) &
((!'b0) | (!'b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

56: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 55 function qrcu_reader1
57: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 56 function qrcu_reader1
58: if !(*) then goto 61; fi;

59: skip; // no predicates changed

60: goto 62;

// file ./cav16.bm/17_QRCU-4/main.c line 57 function qrcu_reader1
//l7:
61: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 58 function qrcu_reader1
//l8:
62: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 58 function qrcu_reader1
63: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 58 function qrcu_reader1
64: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

65: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 60 function qrcu_reader1
66: skip; // no predicates changed

67: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 228 function main
68: end_thread;

// file ./cav16.bm/17_QRCU-4/main.c line 229 function main
//l9:
69: start_thread goto 150;

70: goto 122;

//l10:
71: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 132 function qrcu_reader2
72: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 135 function qrcu_reader2
//l11:
73: if 0 then goto 154; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 136 function qrcu_reader2
74: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 137 function qrcu_reader2
75: if * then goto 152; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 139 function qrcu_reader2
76: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 139 function qrcu_reader2
77: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 139 function qrcu_reader2
78: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!'b0) | (!'b2_FALSE_eq_MTX)) &
((!b0) | 'b1) &
((!b0) | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

79: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 139 function qrcu_reader2
80: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 140 function qrcu_reader2
81: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 141 function qrcu_reader2
82: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 142 function qrcu_reader2
83: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 143 function qrcu_reader2
84: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 143 function qrcu_reader2
85: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 143 function qrcu_reader2
86: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

87: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 145 function qrcu_reader2
88: goto 154;

// file ./cav16.bm/17_QRCU-4/main.c line 147 function qrcu_reader2
//l12:
89: if * then goto 153; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 149 function qrcu_reader2
90: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 149 function qrcu_reader2
91: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 149 function qrcu_reader2
92: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!'b0) | (!'b2_FALSE_eq_MTX)) &
((!'b0) | (!'b1)) &
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

93: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 149 function qrcu_reader2
94: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 150 function qrcu_reader2
95: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 151 function qrcu_reader2
96: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 152 function qrcu_reader2
97: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 153 function qrcu_reader2
98: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 153 function qrcu_reader2
99: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 153 function qrcu_reader2
100: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
((!b0) | (!'b0)) &
((!b0) | 'b1);
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

101: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 155 function qrcu_reader2
102: goto 154;

// file ./cav16.bm/17_QRCU-4/main.c line 135 function qrcu_reader2
//l13:
103: goto 151;

// file ./cav16.bm/17_QRCU-4/main.c line 160 function qrcu_reader2
//l14:
104: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 161 function qrcu_reader2
105: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 164 function qrcu_reader2
106: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 164 function qrcu_reader2
107: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 164 function qrcu_reader2
108: b0,b1,b2_FALSE_eq_MTX := b1,*,* constrain
('b0 | 'b1) &
((!b0) | (!b2_FALSE_eq_MTX)) &
('b0 | (!b2_FALSE_eq_MTX));
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

109: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 164 function qrcu_reader2
110: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 165 function qrcu_reader2
111: if !(*) then goto 114; fi;

112: skip; // no predicates changed

113: goto 115;

// file ./cav16.bm/17_QRCU-4/main.c line 166 function qrcu_reader2
//l15:
114: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 167 function qrcu_reader2
//l16:
115: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 167 function qrcu_reader2
116: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 167 function qrcu_reader2
117: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

118: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 169 function qrcu_reader2
119: skip; // no predicates changed

120: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 229 function main
121: end_thread;

// file ./cav16.bm/17_QRCU-4/main.c line 230 function main
//l17:
122: start_thread goto 124;

123: goto 185;

//l18:
124: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 172 function qrcu_reader3
125: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 175 function qrcu_reader3
//l19:
126: if 0 then goto 182; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 176 function qrcu_reader3
127: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 177 function qrcu_reader3
128: if * then goto 180; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 179 function qrcu_reader3
129: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 179 function qrcu_reader3
130: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 179 function qrcu_reader3
131: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

132: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 179 function qrcu_reader3
133: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 180 function qrcu_reader3
134: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 181 function qrcu_reader3
135: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 182 function qrcu_reader3
136: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 183 function qrcu_reader3
137: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 183 function qrcu_reader3
138: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 183 function qrcu_reader3
139: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

140: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 185 function qrcu_reader3
141: goto 182;

// file ./cav16.bm/17_QRCU-4/main.c line 187 function qrcu_reader3
//l20:
142: if * then goto 181; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 189 function qrcu_reader3
143: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 189 function qrcu_reader3
144: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 189 function qrcu_reader3
145: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

146: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 189 function qrcu_reader3
147: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 190 function qrcu_reader3
148: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 191 function qrcu_reader3
149: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 192 function qrcu_reader3
150: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 193 function qrcu_reader3
151: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 193 function qrcu_reader3
152: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 193 function qrcu_reader3
153: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

154: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 195 function qrcu_reader3
155: goto 182;

// file ./cav16.bm/17_QRCU-4/main.c line 175 function qrcu_reader3
//l21:
156: goto 126;

// file ./cav16.bm/17_QRCU-4/main.c line 200 function qrcu_reader3
//l22:
157: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 201 function qrcu_reader3
158: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 205 function qrcu_reader3
159: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 205 function qrcu_reader3
160: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 205 function qrcu_reader3
161: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

162: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 205 function qrcu_reader3
163: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 206 function qrcu_reader3
164: if !(*) then goto 183; fi;

165: skip; // no predicates changed

166: goto 184;

// file ./cav16.bm/17_QRCU-4/main.c line 207 function qrcu_reader3
//l23:
167: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 208 function qrcu_reader3
//l24:
168: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 208 function qrcu_reader3
169: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 208 function qrcu_reader3
170: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

171: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 210 function qrcu_reader3
172: skip; // no predicates changed

173: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 230 function main
174: end_thread;

// file ./cav16.bm/17_QRCU-4/main.c line 231 function main
//l25:
175: start_thread goto 186;

176: goto 361;

//l26:
177: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 73 function qrcu_updater
178: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 74 function qrcu_updater
179: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 75 function qrcu_updater
180: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 76 function qrcu_updater
181: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 77 function qrcu_updater
182: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 79 function qrcu_updater
183: skip; // location only

184: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 80 function qrcu_updater
185: skip; // location only

186: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 81 function qrcu_updater
187: skip; // location only

188: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 82 function qrcu_updater
189: skip; // location only

190: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 83 function qrcu_updater
191: skip; // location only

192: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 84 function qrcu_updater
193: skip; // location only

194: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 85 function qrcu_updater
195: skip; // location only

196: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 89 function qrcu_updater
197: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 89 function qrcu_updater
198: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 89 function qrcu_updater
199: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

200: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 89 function qrcu_updater
201: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 90 function qrcu_updater
202: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 91 function qrcu_updater
203: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 92 function qrcu_updater
204: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 93 function qrcu_updater
205: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 93 function qrcu_updater
206: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 93 function qrcu_updater
207: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

208: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 96 function qrcu_updater
209: if * then goto 187; fi;

210: skip; // no predicates changed

211: skip; // no predicates changed

212: goto 188;

//l27:
213: skip; // no predicates changed

214: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 97 function qrcu_updater
//l28:
215: if !(*) then goto 200; fi;

216: if * then goto 189; fi;

217: skip; // no predicates changed

218: skip; // no predicates changed

219: goto 200;

//l29:
220: skip; // no predicates changed

221: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 98 function qrcu_updater
//l30:
222: if !(*) then goto 245; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 99 function qrcu_updater
223: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 99 function qrcu_updater
224: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 99 function qrcu_updater
225: skip; // no predicates changed

226: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 100 function qrcu_updater
227: if !(*) then goto 201; fi;

228: skip; // no predicates changed

229: skip; // no predicates changed

230: skip; // no predicates changed

231: goto 202;

// file ./cav16.bm/17_QRCU-4/main.c line 101 function qrcu_updater
//l31:
232: skip; // no predicates changed

233: skip; // no predicates changed

234: skip; // no predicates changed

// file ./cav16.bm/17_QRCU-4/main.c line 102 function qrcu_updater
//l32:
235: if !(*) then goto 205; fi;

//l33:
236: if !(*) then goto 204; fi;

237: goto 203;

//l34:
238: goto 206;

// file ./cav16.bm/17_QRCU-4/main.c line 103 function qrcu_updater
//l35:
239: if !(*) then goto 206; fi;

240: goto 205;

// file ./cav16.bm/17_QRCU-4/main.c line 104 function qrcu_updater
//l36:
241: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 104 function qrcu_updater
242: assume(!(*));

// file ./cav16.bm/17_QRCU-4/main.c line 104 function qrcu_updater
243: skip; // no predicates changed

244: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 109 function qrcu_updater
//l37:
245: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 109 function qrcu_updater
246: assume(b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 109 function qrcu_updater
247: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

248: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 109 function qrcu_updater
249: assert(b0);

// file ./cav16.bm/17_QRCU-4/main.c line 110 function qrcu_updater
250: if * then goto 255; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 111 function qrcu_updater
251: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 112 function qrcu_updater
252: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 113 function qrcu_updater
253: assert(0);

254: goto 360;

// file ./cav16.bm/17_QRCU-4/main.c line 115 function qrcu_updater
//l38:
255: if * then goto 260; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 116 function qrcu_updater
256: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 117 function qrcu_updater
257: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 118 function qrcu_updater
258: assert(0);

259: goto 360;

// file ./cav16.bm/17_QRCU-4/main.c line 120 function qrcu_updater
//l39:
260: if * then goto 360; fi;

// file ./cav16.bm/17_QRCU-4/main.c line 121 function qrcu_updater
261: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 122 function qrcu_updater
262: assume(*);

// file ./cav16.bm/17_QRCU-4/main.c line 123 function qrcu_updater
263: assert(0);

// file ./cav16.bm/17_QRCU-4/main.c line 127 function qrcu_updater
//l40:
264: atomic_begin;

// file ./cav16.bm/17_QRCU-4/main.c line 127 function qrcu_updater
265: assume(!b2_FALSE_eq_MTX);

// file ./cav16.bm/17_QRCU-4/main.c line 127 function qrcu_updater
266: b0,b1,b2_FALSE_eq_MTX := b1,*,*;
// TO Predicates: b0 b1 b2_FALSE_eq_MTX

267: atomic_end;

// file ./cav16.bm/17_QRCU-4/main.c line 129 function qrcu_updater
268: skip; // no predicates changed

269: skip; // location only

// file ./cav16.bm/17_QRCU-4/main.c line 231 function main
270: end_thread;

// file ./cav16.bm/17_QRCU-4/main.c line 227 function main
//l41:
271: goto 15;

// file ./cav16.bm/17_QRCU-4/main.c line 234 function main
//l42:
272: skip; // no predicates changed

273: skip; // location only

274: skip;

end

// c::__CPROVER_initialize
void c$$__CPROVER_initialize() begin

end

// c::qrcu_reader1
void c$$qrcu_reader1() begin

end

// c::qrcu_updater
void c$$qrcu_updater() begin

end

// c::glb_init
void c$$glb_init() begin

end

// c::qrcu_reader2
void c$$qrcu_reader2() begin

end

// c::qrcu_reader3
void c$$qrcu_reader3() begin

end

// c::main
void c$$main() begin

end

