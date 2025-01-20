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

* ----COPY:COPY(t1, --, t0)----
	LEA t0, A5
	LEA t1, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(45, --, t3)----
	LEA t3, A5
	MOVE.W #45, (A5)

* ----COPY:COPY(t3, --, t2)----
	LEA t2, A5
	LEA t3, A4
	MOVE.W (A4), (A5)

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL:CALL(--, --, main)----

	SIMHALT *HALT(--, --, --)
e1: *e1: SKIP
	SUB.L #88, SP *:PMB(--, --, f0)

* ----COPY:COPY(32, --, t6)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(t6, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t8)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t4, t8, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-16, A5
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
* ----COPY:COPY(0, --, t9)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t7, t9, e4)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t10)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY:COPY(t10, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-20, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COPY:COPY(1, --, t12)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COMPARE EQ:IFEQ(t4, t12, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t11)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t11)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COPY:COPY(0, --, t13)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t11, t13, e8)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t14)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY:COPY(t14, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-28, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COPY:COPY(2, --, t16)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COMPARE EQ:IFEQ(t4, t16, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t15)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t15)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COPY:COPY(0, --, t17)----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t15, t17, e12)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t18)----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY:COPY(t18, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COPY:COPY(3, --, t20)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COMPARE EQ:IFEQ(t4, t20, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t19)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t19)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COPY:COPY(0, --, t21)----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t19, t21, e16)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t22)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY:COPY(t22, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-44, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COPY:COPY(4, --, t24)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COMPARE EQ:IFEQ(t4, t24, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t23)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t23)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COPY:COPY(0, --, t25)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t23, t25, e20)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t26)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY:COPY(t26, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-52, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COPY:COPY(5, --, t28)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COMPARE EQ:IFEQ(t4, t28, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t27)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t27)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COPY:COPY(0, --, t29)----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t27, t29, e24)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t30)----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY:COPY(t30, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COPY:COPY(6, --, t32)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COMPARE EQ:IFEQ(t4, t32, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t31)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t31)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COPY:COPY(0, --, t33)----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t31, t33, e28)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t34)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY:COPY(t34, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-68, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COPY:COPY(7, --, t36)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COMPARE EQ:IFEQ(t4, t36, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t35)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t35)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COPY:COPY(0, --, t37)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t35, t37, e32)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t38)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY:COPY(t38, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-76, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COPY:COPY(8, --, t40)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COMPARE EQ:IFEQ(t4, t40, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t39)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t39)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COPY:COPY(0, --, t41)----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t39, t41, e36)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t42)----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY:COPY(t42, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COPY:COPY(9, --, t44)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COMPARE EQ:IFEQ(t4, t44, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t43)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t43)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COPY:COPY(0, --, t45)----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t43, t45, e40)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t46)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY:COPY(t46, --, t5)----
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
* ----RETURN:RTN(--, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41: *e41: SKIP
	SUB.L #90, SP *:PMB(--, --, f1)

* ----COPY:COPY(1, --, t50)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(t50, --, t49)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-14, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----NEGATE:NEG(--, --, t49)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	NEG.W (A5)

* ----COPY:COPY(t49, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(48, --, t52)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COMPARE EQ:IFEQ(t47, t52, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY:COPY(0, --, t51)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO:GOTO(--, --, e43)----

e42: *e42: SKIP
* ----COPY:COPY(-1, --, t51)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43: *e43: SKIP
* ----COPY:COPY(0, --, t53)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t51, t53, e44)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY:COPY(0, --, t54)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t54, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-22, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e45 * ----GOTO:GOTO(--, --, e45)----

e44: *e44: SKIP
* ----COPY:COPY(49, --, t56)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COMPARE EQ:IFEQ(t47, t56, e46)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY:COPY(0, --, t55)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO:GOTO(--, --, e47)----

e46: *e46: SKIP
* ----COPY:COPY(-1, --, t55)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47: *e47: SKIP
* ----COPY:COPY(0, --, t57)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t55, t57, e48)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e48

* ----COPY:COPY(1, --, t58)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY:COPY(t58, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-30, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e49 * ----GOTO:GOTO(--, --, e49)----

e48: *e48: SKIP
* ----COPY:COPY(50, --, t60)----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COMPARE EQ:IFEQ(t47, t60, e50)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY:COPY(0, --, t59)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO:GOTO(--, --, e51)----

e50: *e50: SKIP
* ----COPY:COPY(-1, --, t59)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51: *e51: SKIP
* ----COPY:COPY(0, --, t61)----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t59, t61, e52)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e52

* ----COPY:COPY(2, --, t62)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY:COPY(t62, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-38, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e53 * ----GOTO:GOTO(--, --, e53)----

e52: *e52: SKIP
* ----COPY:COPY(51, --, t64)----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COMPARE EQ:IFEQ(t47, t64, e54)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY:COPY(0, --, t63)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO:GOTO(--, --, e55)----

e54: *e54: SKIP
* ----COPY:COPY(-1, --, t63)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55: *e55: SKIP
* ----COPY:COPY(0, --, t65)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t63, t65, e56)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e56

* ----COPY:COPY(3, --, t66)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COPY:COPY(t66, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-46, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e57 * ----GOTO:GOTO(--, --, e57)----

e56: *e56: SKIP
* ----COPY:COPY(52, --, t68)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COMPARE EQ:IFEQ(t47, t68, e58)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY:COPY(0, --, t67)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO:GOTO(--, --, e59)----

e58: *e58: SKIP
* ----COPY:COPY(-1, --, t67)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59: *e59: SKIP
* ----COPY:COPY(0, --, t69)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t67, t69, e60)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e60

* ----COPY:COPY(4, --, t70)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY:COPY(t70, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-54, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e61 * ----GOTO:GOTO(--, --, e61)----

e60: *e60: SKIP
* ----COPY:COPY(53, --, t72)----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COMPARE EQ:IFEQ(t47, t72, e62)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY:COPY(0, --, t71)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO:GOTO(--, --, e63)----

e62: *e62: SKIP
* ----COPY:COPY(-1, --, t71)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63: *e63: SKIP
* ----COPY:COPY(0, --, t73)----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t71, t73, e64)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e64

* ----COPY:COPY(5, --, t74)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COPY:COPY(t74, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-62, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e65 * ----GOTO:GOTO(--, --, e65)----

e64: *e64: SKIP
* ----COPY:COPY(54, --, t76)----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COMPARE EQ:IFEQ(t47, t76, e66)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY:COPY(0, --, t75)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO:GOTO(--, --, e67)----

e66: *e66: SKIP
* ----COPY:COPY(-1, --, t75)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67: *e67: SKIP
* ----COPY:COPY(0, --, t77)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t75, t77, e68)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e68

* ----COPY:COPY(6, --, t78)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COPY:COPY(t78, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-70, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e69 * ----GOTO:GOTO(--, --, e69)----

e68: *e68: SKIP
* ----COPY:COPY(55, --, t80)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COMPARE EQ:IFEQ(t47, t80, e70)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY:COPY(0, --, t79)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO:GOTO(--, --, e71)----

e70: *e70: SKIP
* ----COPY:COPY(-1, --, t79)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71: *e71: SKIP
* ----COPY:COPY(0, --, t81)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t79, t81, e72)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e72

* ----COPY:COPY(7, --, t82)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COPY:COPY(t82, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-78, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e73 * ----GOTO:GOTO(--, --, e73)----

e72: *e72: SKIP
* ----COPY:COPY(56, --, t84)----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COMPARE EQ:IFEQ(t47, t84, e74)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY:COPY(0, --, t83)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO:GOTO(--, --, e75)----

e74: *e74: SKIP
* ----COPY:COPY(-1, --, t83)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75: *e75: SKIP
* ----COPY:COPY(0, --, t85)----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t83, t85, e76)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e76

* ----COPY:COPY(8, --, t86)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COPY:COPY(t86, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-86, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e77 * ----GOTO:GOTO(--, --, e77)----

e76: *e76: SKIP
* ----COPY:COPY(57, --, t88)----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COMPARE EQ:IFEQ(t47, t88, e78)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY:COPY(0, --, t87)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO:GOTO(--, --, e79)----

e78: *e78: SKIP
* ----COPY:COPY(-1, --, t87)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79: *e79: SKIP
* ----COPY:COPY(0, --, t89)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t87, t89, e80)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e80

* ----COPY:COPY(9, --, t90)----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COPY:COPY(t90, --, t48)----
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
* ----RETURN:RTN(--, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main: *main: SKIP
	SUB.L #694, SP *:PMB(--, --, f2)

* ----COPY:COPY(80, --, t92)----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.W #80, (A5)

* ----COPY:COPY(0, --, t93)----
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t92, t93, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-524, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-522, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(117, --, t94)----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W #117, (A5)

* ----COPY:COPY(1, --, t95)----
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t94, t95, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-528, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-526, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t96)----
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(2, --, t97)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t96, t97, t91)----
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

* ----COPY:COPY(32, --, t98)----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(3, --, t99)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t98, t99, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-536, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-534, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(97, --, t100)----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY:COPY(4, --, t101)----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t100, t101, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-540, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t102)----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(5, --, t103)----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t102, t103, t91)----
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

* ----COPY:COPY(100, --, t104)----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W #100, (A5)

* ----COPY:COPY(6, --, t105)----
	MOVE.L #-548, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t104, t105, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-548, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-546, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(101, --, t106)----
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY:COPY(7, --, t107)----
	MOVE.L #-552, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t106, t107, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-552, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-550, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(99, --, t108)----
	MOVE.L #-554, A5
	ADD.L A6, A5
	MOVE.W #99, (A5)

* ----COPY:COPY(8, --, t109)----
	MOVE.L #-556, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t108, t109, t91)----
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

* ----COPY:COPY(105, --, t110)----
	MOVE.L #-558, A5
	ADD.L A6, A5
	MOVE.W #105, (A5)

* ----COPY:COPY(9, --, t111)----
	MOVE.L #-560, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t110, t111, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-560, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-558, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(109, --, t112)----
	MOVE.L #-562, A5
	ADD.L A6, A5
	MOVE.W #109, (A5)

* ----COPY:COPY(10, --, t113)----
	MOVE.L #-564, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t112, t113, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-564, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-562, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(97, --, t114)----
	MOVE.L #-566, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY:COPY(11, --, t115)----
	MOVE.L #-568, A5
	ADD.L A6, A5
	MOVE.W #11, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t114, t115, t91)----
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

* ----COPY:COPY(108, --, t116)----
	MOVE.L #-570, A5
	ADD.L A6, A5
	MOVE.W #108, (A5)

* ----COPY:COPY(12, --, t117)----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t116, t117, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-572, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-570, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(58, --, t118)----
	MOVE.L #-574, A5
	ADD.L A6, A5
	MOVE.W #58, (A5)

* ----COPY:COPY(13, --, t119)----
	MOVE.L #-576, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t118, t119, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-576, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-574, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t120)----
	MOVE.L #-578, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(0, --, t121)----
	MOVE.L #-580, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----POS:POS(t120, t121, --)----
	MOVE.L #-578, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-580, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t122)----
	MOVE.L #-582, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(13, --, t123)----
	MOVE.L #-584, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----WRITE:WRITE(t122, t123, t91)----
	MOVE.L #-582, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-584, A5
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

* ----READ:READ(--, --, t124)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-586, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t124, --, t0)----
	LEA t0, A5
	MOVE.L #-586, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(14, --, t125)----
	MOVE.L #-588, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t0, t125, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-588, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	LEA t0, A4
	MOVE.W (A4), (A5)

* ----READ:READ(--, --, t126)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-590, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t126, --, t2)----
	LEA t2, A5
	MOVE.L #-590, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(15, --, t127)----
	MOVE.L #-592, A5
	ADD.L A6, A5
	MOVE.W #15, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t2, t127, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-592, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	LEA t2, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(14, --, t128)----
	MOVE.L #-594, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----COPY:COPY(0, --, t129)----
	MOVE.L #-596, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----POS:POS(t128, t129, --)----
	MOVE.L #-594, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-596, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(14, --, t130)----
	MOVE.L #-598, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----COPY:COPY(15, --, t131)----
	MOVE.L #-600, A5
	ADD.L A6, A5
	MOVE.W #15, (A5)

* ----WRITE:WRITE(t130, t131, t91)----
	MOVE.L #-598, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-600, A5
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

* ----COPY:COPY(10, --, t135)----
	MOVE.L #-608, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY GLOBAL VARIABLE ON THE STACK:PUT(--, --, t0)----
	MOVE.L #0, D6
	LEA t0, A5
MOVE_LOOP_t0_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t0_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t136)----
	ADD.L #2, A7
	MOVE.L #-610, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----MUL:PROD(t135, t136, t134)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-608, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-610, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-606, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY GLOBAL VARIABLE ON THE STACK:PUT(--, --, t2)----
	MOVE.L #0, D6
	LEA t2, A5
MOVE_LOOP_t2_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t2_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t137)----
	ADD.L #2, A7
	MOVE.L #-612, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----SUM:SUM(t134, t137, t133)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-606, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-612, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-604, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t133, --, t132)----
	MOVE.L #-602, A5
	ADD.L A6, A5
	MOVE.L #-604, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(80, --, t138)----
	MOVE.L #-614, A5
	ADD.L A6, A5
	MOVE.W #80, (A5)

* ----COPY:COPY(0, --, t139)----
	MOVE.L #-616, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t138, t139, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-616, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-614, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(117, --, t140)----
	MOVE.L #-618, A5
	ADD.L A6, A5
	MOVE.W #117, (A5)

* ----COPY:COPY(1, --, t141)----
	MOVE.L #-620, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t140, t141, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-620, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-618, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t142)----
	MOVE.L #-622, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(2, --, t143)----
	MOVE.L #-624, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t142, t143, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-624, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-622, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t144)----
	MOVE.L #-626, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(3, --, t145)----
	MOVE.L #-628, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t144, t145, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-628, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-626, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(97, --, t146)----
	MOVE.L #-630, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY:COPY(4, --, t147)----
	MOVE.L #-632, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t146, t147, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-632, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-630, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(32, --, t148)----
	MOVE.L #-634, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(5, --, t149)----
	MOVE.L #-636, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t148, t149, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-636, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-634, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(108, --, t150)----
	MOVE.L #-638, A5
	ADD.L A6, A5
	MOVE.W #108, (A5)

* ----COPY:COPY(6, --, t151)----
	MOVE.L #-640, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t150, t151, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-640, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-638, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(101, --, t152)----
	MOVE.L #-642, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY:COPY(7, --, t153)----
	MOVE.L #-644, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t152, t153, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-644, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-642, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t154)----
	MOVE.L #-646, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(8, --, t155)----
	MOVE.L #-648, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t154, t155, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-648, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-646, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(116, --, t156)----
	MOVE.L #-650, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY:COPY(9, --, t157)----
	MOVE.L #-652, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t156, t157, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-652, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-650, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(101, --, t158)----
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY:COPY(10, --, t159)----
	MOVE.L #-656, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t158, t159, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-656, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-654, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(114, --, t160)----
	MOVE.L #-658, A5
	ADD.L A6, A5
	MOVE.W #114, (A5)

* ----COPY:COPY(11, --, t161)----
	MOVE.L #-660, A5
	ADD.L A6, A5
	MOVE.W #11, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t160, t161, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-660, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-658, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(13, --, t163)----
	MOVE.L #-664, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----OBTAIN VALUE FROM INDIRECTION:IND_VAL(t91, t163, t162)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	CLR.L D1
	MOVE.L #-664, A4
	ADD.L A6, A4
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-662, A4
	ADD.L A6, A4
	MOVE.W (A5), (A4)

* ----COPY:COPY(12, --, t164)----
	MOVE.L #-666, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t162, t164, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-666, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-662, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t165)----
	MOVE.L #-668, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(2, --, t166)----
	MOVE.L #-670, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----POS:POS(t165, t166, --)----
	MOVE.L #-668, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-670, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t167)----
	MOVE.L #-672, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(12, --, t168)----
	MOVE.L #-674, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----WRITE:WRITE(t167, t168, t91)----
	MOVE.L #-672, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-674, A5
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

* ----READ:READ(--, --, t170)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-678, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t170, --, t169)----
	MOVE.L #-676, A5
	ADD.L A6, A5
	MOVE.L #-678, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(1, --, t172)----
	MOVE.L #-682, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUB:SUB(t172, t132, t171)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-682, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-602, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-680, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t171, --, t132)----
	MOVE.L #-602, A5
	ADD.L A6, A5
	MOVE.L #-680, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t174)----
	MOVE.L #-686, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t174, --, t173)----
	MOVE.L #-684, A5
	ADD.L A6, A5
	MOVE.L #-686, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e82: *e82: SKIP
* ----COMPARE LE:IFLE(t173, t132, e83)----
	MOVE.L #-684, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-602, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLE.W e83

* ----COPY:COPY(0, --, t175)----
	MOVE.L #-688, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e84 * ----GOTO:GOTO(--, --, e84)----

e83: *e83: SKIP
* ----COPY:COPY(-1, --, t175)----
	MOVE.L #-688, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e84: *e84: SKIP
* ----COPY:COPY(0, --, t176)----
	MOVE.L #-690, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t175, t176, e85)----
	MOVE.L #-688, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-690, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e85

* ----SET VALUE FROM INDIRECTION:IND_ASS(t169, t173, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-684, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-676, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----INCREMENT LOCAL VARIABLE:INC(--, --, t173)----
	MOVE.L #-684, A5
	ADD.L A6, A5
	ADD.W #1, (A5)

	JMP e82 * ----GOTO:GOTO(--, --, e82)----

e85: *e85: SKIP
* ----COPY:COPY(0, --, t178)----
	MOVE.L #-694, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(4, --, t179)----
	MOVE.L #-696, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----POS:POS(t178, t179, --)----
	MOVE.L #-694, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-696, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t180)----
	MOVE.L #-698, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----WRITE:WRITE(t180, t132, t91)----
	MOVE.L #-698, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-602, A5
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
