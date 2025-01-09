t0	DS.W 2
	ORG 	$2
START:
	MOVE.B #0, D1
	MOVE.W #12, D0
	TRAP #15
* ----COPY:COPY(10, --, t0)----
	LEA t0, A5
	MOVE.W #10, (A5)

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL:CALL(--, --, main)----

e1: *e1: SKIP
	SUB.L #88, SP *:PMB(--, --, f0)

* ----COPY:COPY(32, --, t3)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(t3, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t5)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t1, t5, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY:COPY(0, --, t4)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO:GOTO(--, --, e3)----

e2: *e2: SKIP
* ----COPY:COPY(-1, --, t4)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3: *e3: SKIP
* ----COPY:COPY(0, --, t6)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t4, t6, e4)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t7)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY:COPY(t7, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-20, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COPY:COPY(1, --, t9)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COMPARE EQ:IFEQ(t1, t9, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t8)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t8)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COPY:COPY(0, --, t10)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t8, t10, e8)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t11)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY:COPY(t11, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-28, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COPY:COPY(2, --, t13)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COMPARE EQ:IFEQ(t1, t13, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t12)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t12)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COPY:COPY(0, --, t14)----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t12, t14, e12)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t15)----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY:COPY(t15, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COPY:COPY(3, --, t17)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COMPARE EQ:IFEQ(t1, t17, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t16)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t16)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COPY:COPY(0, --, t18)----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t16, t18, e16)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t19)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY:COPY(t19, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-44, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COPY:COPY(4, --, t21)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COMPARE EQ:IFEQ(t1, t21, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t20)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t20)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COPY:COPY(0, --, t22)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t20, t22, e20)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t23)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY:COPY(t23, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-52, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COPY:COPY(5, --, t25)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COMPARE EQ:IFEQ(t1, t25, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t24)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t24)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COPY:COPY(0, --, t26)----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t24, t26, e24)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t27)----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY:COPY(t27, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COPY:COPY(6, --, t29)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COMPARE EQ:IFEQ(t1, t29, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t28)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t28)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COPY:COPY(0, --, t30)----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t28, t30, e28)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t31)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY:COPY(t31, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-68, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COPY:COPY(7, --, t33)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COMPARE EQ:IFEQ(t1, t33, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t32)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t32)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COPY:COPY(0, --, t34)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t32, t34, e32)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t35)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY:COPY(t35, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-76, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COPY:COPY(8, --, t37)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COMPARE EQ:IFEQ(t1, t37, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t36)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t36)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COPY:COPY(0, --, t38)----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t36, t38, e36)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t39)----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY:COPY(t39, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COPY:COPY(9, --, t41)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COMPARE EQ:IFEQ(t1, t41, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t40)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t40)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COPY:COPY(0, --, t42)----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t40, t42, e40)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t43)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY:COPY(t43, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-92, A4
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
* ----RETURN:RTN(--, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41: *e41: SKIP
	SUB.L #90, SP *:PMB(--, --, f1)

* ----COPY:COPY(1, --, t47)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(t47, --, t46)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-14, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----NEGATE:NEG(--, --, t46)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	NEG.W (A5)

* ----COPY:COPY(t46, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(48, --, t49)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COMPARE EQ:IFEQ(t44, t49, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY:COPY(0, --, t48)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO:GOTO(--, --, e43)----

e42: *e42: SKIP
* ----COPY:COPY(-1, --, t48)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43: *e43: SKIP
* ----COPY:COPY(0, --, t50)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t48, t50, e44)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY:COPY(0, --, t51)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t51, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-22, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e45 * ----GOTO:GOTO(--, --, e45)----

e44: *e44: SKIP
* ----COPY:COPY(49, --, t53)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COMPARE EQ:IFEQ(t44, t53, e46)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY:COPY(0, --, t52)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO:GOTO(--, --, e47)----

e46: *e46: SKIP
* ----COPY:COPY(-1, --, t52)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47: *e47: SKIP
* ----COPY:COPY(0, --, t54)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t52, t54, e48)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e48

* ----COPY:COPY(1, --, t55)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(t55, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-30, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e49 * ----GOTO:GOTO(--, --, e49)----

e48: *e48: SKIP
* ----COPY:COPY(50, --, t57)----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COMPARE EQ:IFEQ(t44, t57, e50)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY:COPY(0, --, t56)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO:GOTO(--, --, e51)----

e50: *e50: SKIP
* ----COPY:COPY(-1, --, t56)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51: *e51: SKIP
* ----COPY:COPY(0, --, t58)----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t56, t58, e52)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e52

* ----COPY:COPY(2, --, t59)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY:COPY(t59, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-38, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e53 * ----GOTO:GOTO(--, --, e53)----

e52: *e52: SKIP
* ----COPY:COPY(51, --, t61)----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COMPARE EQ:IFEQ(t44, t61, e54)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY:COPY(0, --, t60)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO:GOTO(--, --, e55)----

e54: *e54: SKIP
* ----COPY:COPY(-1, --, t60)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55: *e55: SKIP
* ----COPY:COPY(0, --, t62)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t60, t62, e56)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e56

* ----COPY:COPY(3, --, t63)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COPY:COPY(t63, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-46, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e57 * ----GOTO:GOTO(--, --, e57)----

e56: *e56: SKIP
* ----COPY:COPY(52, --, t65)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COMPARE EQ:IFEQ(t44, t65, e58)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY:COPY(0, --, t64)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO:GOTO(--, --, e59)----

e58: *e58: SKIP
* ----COPY:COPY(-1, --, t64)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59: *e59: SKIP
* ----COPY:COPY(0, --, t66)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t64, t66, e60)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e60

* ----COPY:COPY(4, --, t67)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY:COPY(t67, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-54, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e61 * ----GOTO:GOTO(--, --, e61)----

e60: *e60: SKIP
* ----COPY:COPY(53, --, t69)----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COMPARE EQ:IFEQ(t44, t69, e62)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY:COPY(0, --, t68)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO:GOTO(--, --, e63)----

e62: *e62: SKIP
* ----COPY:COPY(-1, --, t68)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63: *e63: SKIP
* ----COPY:COPY(0, --, t70)----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t68, t70, e64)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e64

* ----COPY:COPY(5, --, t71)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COPY:COPY(t71, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-62, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e65 * ----GOTO:GOTO(--, --, e65)----

e64: *e64: SKIP
* ----COPY:COPY(54, --, t73)----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COMPARE EQ:IFEQ(t44, t73, e66)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY:COPY(0, --, t72)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO:GOTO(--, --, e67)----

e66: *e66: SKIP
* ----COPY:COPY(-1, --, t72)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67: *e67: SKIP
* ----COPY:COPY(0, --, t74)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t72, t74, e68)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e68

* ----COPY:COPY(6, --, t75)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COPY:COPY(t75, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-70, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e69 * ----GOTO:GOTO(--, --, e69)----

e68: *e68: SKIP
* ----COPY:COPY(55, --, t77)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COMPARE EQ:IFEQ(t44, t77, e70)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY:COPY(0, --, t76)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO:GOTO(--, --, e71)----

e70: *e70: SKIP
* ----COPY:COPY(-1, --, t76)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71: *e71: SKIP
* ----COPY:COPY(0, --, t78)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t76, t78, e72)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e72

* ----COPY:COPY(7, --, t79)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COPY:COPY(t79, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-78, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e73 * ----GOTO:GOTO(--, --, e73)----

e72: *e72: SKIP
* ----COPY:COPY(56, --, t81)----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COMPARE EQ:IFEQ(t44, t81, e74)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY:COPY(0, --, t80)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO:GOTO(--, --, e75)----

e74: *e74: SKIP
* ----COPY:COPY(-1, --, t80)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75: *e75: SKIP
* ----COPY:COPY(0, --, t82)----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t80, t82, e76)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e76

* ----COPY:COPY(8, --, t83)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COPY:COPY(t83, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-86, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e77 * ----GOTO:GOTO(--, --, e77)----

e76: *e76: SKIP
* ----COPY:COPY(57, --, t85)----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COMPARE EQ:IFEQ(t44, t85, e78)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY:COPY(0, --, t84)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO:GOTO(--, --, e79)----

e78: *e78: SKIP
* ----COPY:COPY(-1, --, t84)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79: *e79: SKIP
* ----COPY:COPY(0, --, t86)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t84, t86, e80)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e80

* ----COPY:COPY(9, --, t87)----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COPY:COPY(t87, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-94, A4
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
* ----RETURN:RTN(--, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main: *main: SKIP
	SUB.L #916, SP *:PMB(--, --, f2)

* ----COPY:COPY(0, --, t91)----
	MOVE.L #-724, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t91, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.L #-724, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t94)----
	MOVE.L #-730, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t94, e82)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-730, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e82

* ----COPY:COPY(0, --, t93)----
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e83 * ----GOTO:GOTO(--, --, e83)----

e82: *e82: SKIP
* ----COPY:COPY(-1, --, t93)----
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e83: *e83: SKIP
* ----COPY:COPY(t93, --, t92)----
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.L #-728, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t97)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t97, e84)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e84

* ----COPY:COPY(0, --, t96)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e85 * ----GOTO:GOTO(--, --, e85)----

e84: *e84: SKIP
* ----COPY:COPY(-1, --, t96)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e85: *e85: SKIP
* ----COPY:COPY(t96, --, t95)----
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.L #-734, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e86: *e86: SKIP
* ----AND:AND(t95, t92, t98)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(0, --, t99)----
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t98, t99, e87)----
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e87

* ----COPY:COPY(t90, --, t100)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(t90, --, t101)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t104)----
	MOVE.L #-750, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t100, t104, e88)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-750, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e88

* ----COPY:COPY(0, --, t103)----
	MOVE.L #-748, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e89 * ----GOTO:GOTO(--, --, e89)----

e88: *e88: SKIP
* ----COPY:COPY(-1, --, t103)----
	MOVE.L #-748, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e89: *e89: SKIP
* ----COPY:COPY(t103, --, t102)----
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.L #-748, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t107)----
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t100, t107, e90)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e90

* ----COPY:COPY(0, --, t106)----
	MOVE.L #-754, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e91 * ----GOTO:GOTO(--, --, e91)----

e90: *e90: SKIP
* ----COPY:COPY(-1, --, t106)----
	MOVE.L #-754, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e91: *e91: SKIP
* ----COPY:COPY(t106, --, t105)----
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.L #-754, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e92: *e92: SKIP
* ----AND:AND(t105, t102, t108)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-758, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(0, --, t109)----
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t108, t109, e93)----
	MOVE.L #-758, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e93

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t90)----
	MOVE.L #0, D6
	MOVE.L #-722, A5
	ADD.L A6, A5
MOVE_LOOP_t90_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t90_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e1 * ----FUNCTION CALL:CALL(--, --, f0)----

* ----POP:POP(f0, --, t110)----
	ADD.L #2, A7
	MOVE.L #-762, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----COPY:COPY(10, --, t113)----
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----MUL:PROD(t90, t113, t114)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM:SUM(t100, t114, t115)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-772, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t110, t115, t89)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	MOVE.L #-772, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-762, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(1, --, t117)----
	MOVE.L #-776, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUM:SUM(t117, t100, t116)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-776, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-774, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t116, --, t100)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.L #-774, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t119)----
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t100, t119, e94)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e94

* ----COPY:COPY(0, --, t118)----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e95 * ----GOTO:GOTO(--, --, e95)----

e94: *e94: SKIP
* ----COPY:COPY(-1, --, t118)----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e95: *e95: SKIP
* ----COPY:COPY(t118, --, t102)----
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.L #-778, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t121)----
	MOVE.L #-784, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t100, t121, e96)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-784, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e96

* ----COPY:COPY(0, --, t120)----
	MOVE.L #-782, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e97 * ----GOTO:GOTO(--, --, e97)----

e96: *e96: SKIP
* ----COPY:COPY(-1, --, t120)----
	MOVE.L #-782, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e97: *e97: SKIP
* ----COPY:COPY(t120, --, t105)----
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.L #-782, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e92 * ----GOTO:GOTO(--, --, e92)----

e93: *e93: SKIP
* ----COPY:COPY(10, --, t124)----
	MOVE.L #-790, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t101, t124, e98)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-790, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e98

* ----COPY:COPY(0, --, t123)----
	MOVE.L #-788, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e99 * ----GOTO:GOTO(--, --, e99)----

e98: *e98: SKIP
* ----COPY:COPY(-1, --, t123)----
	MOVE.L #-788, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e99: *e99: SKIP
* ----COPY:COPY(t123, --, t122)----
	MOVE.L #-786, A5
	ADD.L A6, A5
	MOVE.L #-788, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t127)----
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t101, t127, e100)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e100

* ----COPY:COPY(0, --, t126)----
	MOVE.L #-794, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e101 * ----GOTO:GOTO(--, --, e101)----

e100: *e100: SKIP
* ----COPY:COPY(-1, --, t126)----
	MOVE.L #-794, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e101: *e101: SKIP
* ----COPY:COPY(t126, --, t125)----
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.L #-794, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e102: *e102: SKIP
* ----AND:AND(t125, t122, t128)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-786, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-798, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(0, --, t129)----
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t128, t129, e103)----
	MOVE.L #-798, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e103

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t90)----
	MOVE.L #0, D6
	MOVE.L #-722, A5
	ADD.L A6, A5
MOVE_LOOP_t90_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t90_2

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e1 * ----FUNCTION CALL:CALL(--, --, f0)----

* ----POP:POP(f0, --, t130)----
	ADD.L #2, A7
	MOVE.L #-802, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----COPY:COPY(10, --, t133)----
	MOVE.L #-808, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----MUL:PROD(t101, t133, t134)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-808, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-810, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM:SUM(t90, t134, t135)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-810, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-812, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t130, t135, t89)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	MOVE.L #-812, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-802, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(1, --, t137)----
	MOVE.L #-816, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUM:SUM(t137, t101, t136)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-816, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-814, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t136, --, t101)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.L #-814, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t139)----
	MOVE.L #-820, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t101, t139, e104)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-820, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e104

* ----COPY:COPY(0, --, t138)----
	MOVE.L #-818, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e105 * ----GOTO:GOTO(--, --, e105)----

e104: *e104: SKIP
* ----COPY:COPY(-1, --, t138)----
	MOVE.L #-818, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e105: *e105: SKIP
* ----COPY:COPY(t138, --, t122)----
	MOVE.L #-786, A5
	ADD.L A6, A5
	MOVE.L #-818, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t141)----
	MOVE.L #-824, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t101, t141, e106)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-824, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e106

* ----COPY:COPY(0, --, t140)----
	MOVE.L #-822, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e107 * ----GOTO:GOTO(--, --, e107)----

e106: *e106: SKIP
* ----COPY:COPY(-1, --, t140)----
	MOVE.L #-822, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e107: *e107: SKIP
* ----COPY:COPY(t140, --, t125)----
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.L #-822, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e102 * ----GOTO:GOTO(--, --, e102)----

e103: *e103: SKIP
* ----COPY:COPY(1, --, t143)----
	MOVE.L #-828, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUM:SUM(t143, t90, t142)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-828, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-826, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t142, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.L #-826, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t145)----
	MOVE.L #-832, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t145, e108)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-832, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e108

* ----COPY:COPY(0, --, t144)----
	MOVE.L #-830, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e109 * ----GOTO:GOTO(--, --, e109)----

e108: *e108: SKIP
* ----COPY:COPY(-1, --, t144)----
	MOVE.L #-830, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e109: *e109: SKIP
* ----COPY:COPY(t144, --, t92)----
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.L #-830, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t147)----
	MOVE.L #-836, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t147, e110)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-836, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e110

* ----COPY:COPY(0, --, t146)----
	MOVE.L #-834, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e111 * ----GOTO:GOTO(--, --, e111)----

e110: *e110: SKIP
* ----COPY:COPY(-1, --, t146)----
	MOVE.L #-834, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e111: *e111: SKIP
* ----COPY:COPY(t146, --, t95)----
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.L #-834, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e86 * ----GOTO:GOTO(--, --, e86)----

e87: *e87: SKIP
* ----COPY:COPY(0, --, t148)----
	MOVE.L #-838, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t148, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.L #-838, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t151)----
	MOVE.L #-844, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t151, e112)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-844, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e112

* ----COPY:COPY(0, --, t150)----
	MOVE.L #-842, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e113 * ----GOTO:GOTO(--, --, e113)----

e112: *e112: SKIP
* ----COPY:COPY(-1, --, t150)----
	MOVE.L #-842, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e113: *e113: SKIP
* ----COPY:COPY(t150, --, t149)----
	MOVE.L #-840, A5
	ADD.L A6, A5
	MOVE.L #-842, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t154)----
	MOVE.L #-850, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t154, e114)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-850, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e114

* ----COPY:COPY(0, --, t153)----
	MOVE.L #-848, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e115 * ----GOTO:GOTO(--, --, e115)----

e114: *e114: SKIP
* ----COPY:COPY(-1, --, t153)----
	MOVE.L #-848, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e115: *e115: SKIP
* ----COPY:COPY(t153, --, t152)----
	MOVE.L #-846, A5
	ADD.L A6, A5
	MOVE.L #-848, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e116: *e116: SKIP
* ----AND:AND(t152, t149, t155)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-846, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-840, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-852, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(0, --, t156)----
	MOVE.L #-854, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t155, t156, e117)----
	MOVE.L #-852, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-854, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e117

* ----COPY:COPY(t90, --, t157)----
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t160)----
	MOVE.L #-862, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t157, t160, e118)----
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-862, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e118

* ----COPY:COPY(0, --, t159)----
	MOVE.L #-860, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e119 * ----GOTO:GOTO(--, --, e119)----

e118: *e118: SKIP
* ----COPY:COPY(-1, --, t159)----
	MOVE.L #-860, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e119: *e119: SKIP
* ----COPY:COPY(t159, --, t158)----
	MOVE.L #-858, A5
	ADD.L A6, A5
	MOVE.L #-860, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t163)----
	MOVE.L #-868, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t157, t163, e120)----
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-868, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e120

* ----COPY:COPY(0, --, t162)----
	MOVE.L #-866, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e121 * ----GOTO:GOTO(--, --, e121)----

e120: *e120: SKIP
* ----COPY:COPY(-1, --, t162)----
	MOVE.L #-866, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e121: *e121: SKIP
* ----COPY:COPY(t162, --, t161)----
	MOVE.L #-864, A5
	ADD.L A6, A5
	MOVE.L #-866, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e122: *e122: SKIP
* ----AND:AND(t161, t158, t164)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-864, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-858, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-870, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(0, --, t165)----
	MOVE.L #-872, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t164, t165, e123)----
	MOVE.L #-870, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-872, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e123

* ----COPY:COPY(10, --, t169)----
	MOVE.L #-880, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----MUL:PROD(t157, t169, t170)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-880, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-882, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM:SUM(t90, t170, t171)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-882, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-884, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----OBTAIN VALUE FROM INDIRECTION:IND_VAL(t89, t171, t166)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	CLR.L D1
	MOVE.L #-884, A4
	ADD.L A6, A4
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-874, A4
	ADD.L A6, A4
	MOVE.W (A5), (A4)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t166, t157, t88)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-856, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-874, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(1, --, t174)----
	MOVE.L #-890, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUM:SUM(t174, t157, t173)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-890, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-888, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t173, --, t157)----
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.L #-888, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t176)----
	MOVE.L #-894, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t157, t176, e124)----
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-894, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e124

* ----COPY:COPY(0, --, t175)----
	MOVE.L #-892, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e125 * ----GOTO:GOTO(--, --, e125)----

e124: *e124: SKIP
* ----COPY:COPY(-1, --, t175)----
	MOVE.L #-892, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e125: *e125: SKIP
* ----COPY:COPY(t175, --, t158)----
	MOVE.L #-858, A5
	ADD.L A6, A5
	MOVE.L #-892, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t178)----
	MOVE.L #-898, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t157, t178, e126)----
	MOVE.L #-856, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-898, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e126

* ----COPY:COPY(0, --, t177)----
	MOVE.L #-896, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e127 * ----GOTO:GOTO(--, --, e127)----

e126: *e126: SKIP
* ----COPY:COPY(-1, --, t177)----
	MOVE.L #-896, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e127: *e127: SKIP
* ----COPY:COPY(t177, --, t161)----
	MOVE.L #-864, A5
	ADD.L A6, A5
	MOVE.L #-896, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e122 * ----GOTO:GOTO(--, --, e122)----

e123: *e123: SKIP
* ----COPY:COPY(0, --, t179)----
	MOVE.L #-900, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----POS:POS(t179, t90, --)----
	MOVE.L #-900, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t180)----
	MOVE.L #-902, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(1, --, t182)----
	MOVE.L #-906, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(10, --, t183)----
	MOVE.L #-908, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SUB:SUB(t182, t183, t181)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-906, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-908, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-904, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----WRITE:WRITE(t180, t181, t88)----
	MOVE.L #-902, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-904, A5
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

* ----COPY:COPY(1, --, t185)----
	MOVE.L #-912, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUM:SUM(t185, t90, t184)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-912, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-910, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t184, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.L #-910, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t187)----
	MOVE.L #-916, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t187, e128)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-916, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e128

* ----COPY:COPY(0, --, t186)----
	MOVE.L #-914, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e129 * ----GOTO:GOTO(--, --, e129)----

e128: *e128: SKIP
* ----COPY:COPY(-1, --, t186)----
	MOVE.L #-914, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e129: *e129: SKIP
* ----COPY:COPY(t186, --, t149)----
	MOVE.L #-840, A5
	ADD.L A6, A5
	MOVE.L #-914, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t189)----
	MOVE.L #-920, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COMPARE LT:IFLT(t90, t189, e130)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-920, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLT.W e130

* ----COPY:COPY(0, --, t188)----
	MOVE.L #-918, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e131 * ----GOTO:GOTO(--, --, e131)----

e130: *e130: SKIP
* ----COPY:COPY(-1, --, t188)----
	MOVE.L #-918, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e131: *e131: SKIP
* ----COPY:COPY(t188, --, t152)----
	MOVE.L #-846, A5
	ADD.L A6, A5
	MOVE.L #-918, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e116 * ----GOTO:GOTO(--, --, e116)----

e117: *e117: SKIP
	SIMHALT *HALT(--, --, --)
	END START
