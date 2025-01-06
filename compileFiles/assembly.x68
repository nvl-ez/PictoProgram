t0	DS.W 2
t1	DS.W 2
t2	DS.W 2
t3	DS.W 2
	ORG 	$8
START:
	MOVE.B #0, D1
	MOVE.W #12, D0
	TRAP #15
* ----COPY:COPY(45, --, t1)----
	LEA t1, A5
	MOVE.W #45, (A5)

* ----COPY:COPY(45, --, t3)----
	LEA t3, A5
	MOVE.W #45, (A5)

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL:CALL(--, --, main)----

e1: *e1: SKIP
	SUB.L #130, SP *:PMB(--, --, f0)

* ----COPY:COPY(32, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(0, --, t9)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t4, t9, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY:COPY(0, --, t7)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO:GOTO(--, --, e3)----

e2: *e2: SKIP
* ----COPY:COPY(-1, --, t7)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3: *e3: SKIP
* ----COPY:COPY(0, --, t10)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t7, t10, e4)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t12)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY:COPY(t12, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-24, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COPY:COPY(1, --, t15)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COMPARE EQ:IFEQ(t4, t15, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t13)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t13)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COPY:COPY(0, --, t16)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t13, t16, e8)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t18)----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY:COPY(t18, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COPY:COPY(2, --, t21)----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COMPARE EQ:IFEQ(t4, t21, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t19)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t19)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COPY:COPY(0, --, t22)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t19, t22, e12)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t24)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY:COPY(t24, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-48, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COPY:COPY(3, --, t27)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COMPARE EQ:IFEQ(t4, t27, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t25)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t25)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COPY:COPY(0, --, t28)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t25, t28, e16)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t30)----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY:COPY(t30, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COPY:COPY(4, --, t33)----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COMPARE EQ:IFEQ(t4, t33, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t31)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t31)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COPY:COPY(0, --, t34)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t31, t34, e20)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t36)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY:COPY(t36, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-72, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COPY:COPY(5, --, t39)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COMPARE EQ:IFEQ(t4, t39, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t37)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t37)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COPY:COPY(0, --, t40)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t37, t40, e24)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t42)----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY:COPY(t42, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COPY:COPY(6, --, t45)----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COMPARE EQ:IFEQ(t4, t45, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t43)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t43)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COPY:COPY(0, --, t46)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t43, t46, e28)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t48)----
	MOVE.L #-96, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY:COPY(t48, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-96, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COPY:COPY(7, --, t51)----
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COMPARE EQ:IFEQ(t4, t51, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t49)----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t49)----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COPY:COPY(0, --, t52)----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t49, t52, e32)----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t54)----
	MOVE.L #-108, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY:COPY(t54, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-108, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COPY:COPY(8, --, t57)----
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COMPARE EQ:IFEQ(t4, t57, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t55)----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t55)----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COPY:COPY(0, --, t58)----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t55, t58, e36)----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t60)----
	MOVE.L #-120, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY:COPY(t60, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-120, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COPY:COPY(9, --, t63)----
	MOVE.L #-126, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COMPARE EQ:IFEQ(t4, t63, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-126, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t61)----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t61)----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COPY:COPY(0, --, t64)----
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t61, t64, e40)----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t66)----
	MOVE.L #-132, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY:COPY(t66, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-132, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e40: *e40: SKIP
e37: *e37: SKIP
e33: *e33: SKIP
e29: *e29: SKIP
e25: *e25: SKIP
e21: *e21: SKIP
e17: *e17: SKIP
e13: *e13: SKIP
e9: *e9: SKIP
e5: *e5: SKIP
* ----RETURN:RTN(--, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41: *e41: SKIP
	SUB.L #132, SP *:PMB(--, --, f1)

* ----COPY:COPY(1, --, t71)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(t71, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-14, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----NEGATE:NEG(--, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	NEG.W (A5)

* ----COPY:COPY(48, --, t74)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COMPARE EQ:IFEQ(t68, t74, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY:COPY(0, --, t72)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO:GOTO(--, --, e43)----

e42: *e42: SKIP
* ----COPY:COPY(-1, --, t72)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43: *e43: SKIP
* ----COPY:COPY(0, --, t75)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t72, t75, e44)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY:COPY(0, --, t77)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t77, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-26, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e45 * ----GOTO:GOTO(--, --, e45)----

e44: *e44: SKIP
* ----COPY:COPY(49, --, t80)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COMPARE EQ:IFEQ(t68, t80, e46)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY:COPY(0, --, t78)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO:GOTO(--, --, e47)----

e46: *e46: SKIP
* ----COPY:COPY(-1, --, t78)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47: *e47: SKIP
* ----COPY:COPY(0, --, t81)----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t78, t81, e48)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e48

* ----COPY:COPY(1, --, t83)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(t83, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-38, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e49 * ----GOTO:GOTO(--, --, e49)----

e48: *e48: SKIP
* ----COPY:COPY(50, --, t86)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COMPARE EQ:IFEQ(t68, t86, e50)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY:COPY(0, --, t84)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO:GOTO(--, --, e51)----

e50: *e50: SKIP
* ----COPY:COPY(-1, --, t84)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51: *e51: SKIP
* ----COPY:COPY(0, --, t87)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t84, t87, e52)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e52

* ----COPY:COPY(2, --, t89)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY:COPY(t89, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-50, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e53 * ----GOTO:GOTO(--, --, e53)----

e52: *e52: SKIP
* ----COPY:COPY(51, --, t92)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COMPARE EQ:IFEQ(t68, t92, e54)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY:COPY(0, --, t90)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO:GOTO(--, --, e55)----

e54: *e54: SKIP
* ----COPY:COPY(-1, --, t90)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55: *e55: SKIP
* ----COPY:COPY(0, --, t93)----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t90, t93, e56)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e56

* ----COPY:COPY(3, --, t95)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COPY:COPY(t95, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-62, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e57 * ----GOTO:GOTO(--, --, e57)----

e56: *e56: SKIP
* ----COPY:COPY(52, --, t98)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COMPARE EQ:IFEQ(t68, t98, e58)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY:COPY(0, --, t96)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO:GOTO(--, --, e59)----

e58: *e58: SKIP
* ----COPY:COPY(-1, --, t96)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59: *e59: SKIP
* ----COPY:COPY(0, --, t99)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t96, t99, e60)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e60

* ----COPY:COPY(4, --, t101)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY:COPY(t101, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-74, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e61 * ----GOTO:GOTO(--, --, e61)----

e60: *e60: SKIP
* ----COPY:COPY(53, --, t104)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COMPARE EQ:IFEQ(t68, t104, e62)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY:COPY(0, --, t102)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO:GOTO(--, --, e63)----

e62: *e62: SKIP
* ----COPY:COPY(-1, --, t102)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63: *e63: SKIP
* ----COPY:COPY(0, --, t105)----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t102, t105, e64)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e64

* ----COPY:COPY(5, --, t107)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COPY:COPY(t107, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-86, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e65 * ----GOTO:GOTO(--, --, e65)----

e64: *e64: SKIP
* ----COPY:COPY(54, --, t110)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COMPARE EQ:IFEQ(t68, t110, e66)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY:COPY(0, --, t108)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO:GOTO(--, --, e67)----

e66: *e66: SKIP
* ----COPY:COPY(-1, --, t108)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67: *e67: SKIP
* ----COPY:COPY(0, --, t111)----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t108, t111, e68)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e68

* ----COPY:COPY(6, --, t113)----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COPY:COPY(t113, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-98, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e69 * ----GOTO:GOTO(--, --, e69)----

e68: *e68: SKIP
* ----COPY:COPY(55, --, t116)----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COMPARE EQ:IFEQ(t68, t116, e70)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY:COPY(0, --, t114)----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO:GOTO(--, --, e71)----

e70: *e70: SKIP
* ----COPY:COPY(-1, --, t114)----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71: *e71: SKIP
* ----COPY:COPY(0, --, t117)----
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t114, t117, e72)----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e72

* ----COPY:COPY(7, --, t119)----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COPY:COPY(t119, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-110, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e73 * ----GOTO:GOTO(--, --, e73)----

e72: *e72: SKIP
* ----COPY:COPY(56, --, t122)----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COMPARE EQ:IFEQ(t68, t122, e74)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY:COPY(0, --, t120)----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO:GOTO(--, --, e75)----

e74: *e74: SKIP
* ----COPY:COPY(-1, --, t120)----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75: *e75: SKIP
* ----COPY:COPY(0, --, t123)----
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t120, t123, e76)----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e76

* ----COPY:COPY(8, --, t125)----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COPY:COPY(t125, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-122, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e77 * ----GOTO:GOTO(--, --, e77)----

e76: *e76: SKIP
* ----COPY:COPY(57, --, t128)----
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COMPARE EQ:IFEQ(t68, t128, e78)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY:COPY(0, --, t126)----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO:GOTO(--, --, e79)----

e78: *e78: SKIP
* ----COPY:COPY(-1, --, t126)----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79: *e79: SKIP
* ----COPY:COPY(0, --, t129)----
	MOVE.L #-130, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t126, t129, e80)----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-130, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e80

* ----COPY:COPY(9, --, t131)----
	MOVE.L #-134, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COPY:COPY(t131, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-134, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e80: *e80: SKIP
e77: *e77: SKIP
e73: *e73: SKIP
e69: *e69: SKIP
e65: *e65: SKIP
e61: *e61: SKIP
e57: *e57: SKIP
e53: *e53: SKIP
e49: *e49: SKIP
e45: *e45: SKIP
* ----RETURN:RTN(--, --, t69)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main: *main: SKIP
	SUB.L #798, SP *:PMB(--, --, f2)

* ----COPY:COPY(80, --, t135)----
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W #80, (A5)

* ----COPY:COPY(0, --, t136)----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t135, t136, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-526, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-524, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(117, --, t138)----
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W #117, (A5)

* ----COPY:COPY(1, --, t139)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t138, t139, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-532, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-530, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t141)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(2, --, t142)----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t141, t142, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-536, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t144)----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(3, --, t145)----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t144, t145, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-544, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-542, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(97, --, t147)----
	MOVE.L #-548, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY:COPY(4, --, t148)----
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t147, t148, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-550, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-548, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t150)----
	MOVE.L #-554, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(5, --, t151)----
	MOVE.L #-556, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t150, t151, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-556, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-554, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(100, --, t153)----
	MOVE.L #-560, A5
	ADD.L A6, A5
	MOVE.W #100, (A5)

* ----COPY:COPY(6, --, t154)----
	MOVE.L #-562, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t153, t154, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-562, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-560, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(101, --, t156)----
	MOVE.L #-566, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY:COPY(7, --, t157)----
	MOVE.L #-568, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t156, t157, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-568, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-566, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(99, --, t159)----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W #99, (A5)

* ----COPY:COPY(8, --, t160)----
	MOVE.L #-574, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t159, t160, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-574, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-572, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(105, --, t162)----
	MOVE.L #-578, A5
	ADD.L A6, A5
	MOVE.W #105, (A5)

* ----COPY:COPY(9, --, t163)----
	MOVE.L #-580, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t162, t163, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-580, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-578, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(109, --, t165)----
	MOVE.L #-584, A5
	ADD.L A6, A5
	MOVE.W #109, (A5)

* ----COPY:COPY(10, --, t166)----
	MOVE.L #-586, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t165, t166, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-586, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-584, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(97, --, t168)----
	MOVE.L #-590, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY:COPY(11, --, t169)----
	MOVE.L #-592, A5
	ADD.L A6, A5
	MOVE.W #11, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t168, t169, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-592, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-590, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(108, --, t171)----
	MOVE.L #-596, A5
	ADD.L A6, A5
	MOVE.W #108, (A5)

* ----COPY:COPY(12, --, t172)----
	MOVE.L #-598, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t171, t172, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-598, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-596, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(58, --, t174)----
	MOVE.L #-602, A5
	ADD.L A6, A5
	MOVE.W #58, (A5)

* ----COPY:COPY(13, --, t175)----
	MOVE.L #-604, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t174, t175, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-604, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-602, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t177)----
	MOVE.L #-608, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(0, --, t179)----
	MOVE.L #-612, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----POS:POS(t177, t179, --)----
	MOVE.L #-608, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-612, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t181)----
	MOVE.L #-616, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(13, --, t183)----
	MOVE.L #-620, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----WRITE:WRITE(t181, t183, t133)----
	MOVE.L #-616, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-620, A5
	ADD.L A6, A5
	MOVE.W (A5), D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_0:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_0

* ----READ:READ(--, --, t185)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-624, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t185, --, t1)----
	LEA t1, A5
	MOVE.L #-624, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(14, --, t187)----
	MOVE.L #-628, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t1, t187, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-628, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	LEA t1, A4
	MOVE.W (A4), (A5)

* ----READ:READ(--, --, t189)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-632, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t189, --, t3)----
	LEA t3, A5
	MOVE.L #-632, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(15, --, t191)----
	MOVE.L #-636, A5
	ADD.L A6, A5
	MOVE.W #15, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t3, t191, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-636, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	LEA t3, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(14, --, t193)----
	MOVE.L #-640, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----COPY:COPY(0, --, t195)----
	MOVE.L #-644, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----POS:POS(t193, t195, --)----
	MOVE.L #-640, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-644, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(14, --, t197)----
	MOVE.L #-648, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----COPY:COPY(15, --, t199)----
	MOVE.L #-652, A5
	ADD.L A6, A5
	MOVE.W #15, (A5)

* ----WRITE:WRITE(t197, t199, t133)----
	MOVE.L #-648, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-652, A5
	ADD.L A6, A5
	MOVE.W (A5), D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_1:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_1

* ----COPY:COPY(10, --, t203)----
	MOVE.L #-660, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY GLOBAL VARIABLE ON THE STACK:PUT(--, --, t1)----
	MOVE.L #0, D6
	LEA t1, A5
MOVE_LOOP_t1_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t1_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t204)----
	ADD.L #2, A7
	MOVE.L #-662, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----MUL:PROD(t203, t204, t201)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-660, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-662, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-656, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY GLOBAL VARIABLE ON THE STACK:PUT(--, --, t3)----
	MOVE.L #0, D6
	LEA t3, A5
MOVE_LOOP_t3_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t3_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t206)----
	ADD.L #2, A7
	MOVE.L #-666, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----SUM:SUM(t201, t206, t200)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-656, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-666, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(80, --, t209)----
	MOVE.L #-672, A5
	ADD.L A6, A5
	MOVE.W #80, (A5)

* ----COPY:COPY(0, --, t210)----
	MOVE.L #-674, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t209, t210, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-674, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-672, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(117, --, t212)----
	MOVE.L #-678, A5
	ADD.L A6, A5
	MOVE.W #117, (A5)

* ----COPY:COPY(1, --, t213)----
	MOVE.L #-680, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t212, t213, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-680, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-678, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t215)----
	MOVE.L #-684, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(2, --, t216)----
	MOVE.L #-686, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t215, t216, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-686, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-684, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t218)----
	MOVE.L #-690, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(3, --, t219)----
	MOVE.L #-692, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t218, t219, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-692, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-690, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(97, --, t221)----
	MOVE.L #-696, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY:COPY(4, --, t222)----
	MOVE.L #-698, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t221, t222, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-698, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-696, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t224)----
	MOVE.L #-702, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(5, --, t225)----
	MOVE.L #-704, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t224, t225, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-704, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-702, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(108, --, t227)----
	MOVE.L #-708, A5
	ADD.L A6, A5
	MOVE.W #108, (A5)

* ----COPY:COPY(6, --, t228)----
	MOVE.L #-710, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t227, t228, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-710, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-708, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(101, --, t230)----
	MOVE.L #-714, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY:COPY(7, --, t231)----
	MOVE.L #-716, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t230, t231, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-716, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-714, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t233)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(8, --, t234)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t233, t234, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-720, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t236)----
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(9, --, t237)----
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t236, t237, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-728, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-726, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(101, --, t239)----
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY:COPY(10, --, t240)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t239, t240, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-734, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-732, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(114, --, t242)----
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.W #114, (A5)

* ----COPY:COPY(11, --, t243)----
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.W #11, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t242, t243, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-740, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-738, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(13, --, t246)----
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----OBTAIN VALUE FROM INDIRECTION:IND_VAL(t133, t246, t245)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	CLR.L D1
	MOVE.L #-746, A4
	ADD.L A6, A4
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-744, A4
	ADD.L A6, A4
	MOVE.W (A5), (A4)

* ----COPY:COPY(12, --, t247)----
	MOVE.L #-748, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t245, t247, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-748, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-744, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t249)----
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(2, --, t251)----
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----POS:POS(t249, t251, --)----
	MOVE.L #-752, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t253)----
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(12, --, t255)----
	MOVE.L #-764, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----WRITE:WRITE(t253, t255, t133)----
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-764, A5
	ADD.L A6, A5
	MOVE.W (A5), D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_2:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_2

* ----READ:READ(--, --, t257)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(1, --, t260)----
	MOVE.L #-774, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUB:SUB(t260, t200, t258)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-774, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t258, --, t200)----
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.L #-770, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t262)----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

e82: *e82: SKIP
* ----COMPARE LE:IFLE(t262, t200, e83)----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLE.W e83

* ----COPY:COPY(0, --, t263)----
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e84 * ----GOTO:GOTO(--, --, e84)----

e83: *e83: SKIP
* ----COPY:COPY(-1, --, t263)----
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e84: *e84: SKIP
* ----COPY:COPY(0, --, t265)----
	MOVE.L #-784, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t263, t265, e85)----
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-784, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e85

* ----SET VALUE FROM INDIRECTION:IND_ASS(t257, t262, t133)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-778, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-768, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----INCREMENT LOCAL VARIABLE:INC(--, --, t262)----
	MOVE.L #-778, A5
	ADD.L A6, A5
	ADD.W #1, (A5)

	JMP e82 * ----GOTO:GOTO(--, --, e82)----

e85: *e85: SKIP
* ----COPY:COPY(0, --, t269)----
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(4, --, t271)----
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----POS:POS(t269, t271, --)----
	MOVE.L #-792, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t273)----
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----WRITE:WRITE(t273, t200, t133)----
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.W (A5), D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_3:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_3

	SIMHALT *HALT(--, --, --)
	END START
