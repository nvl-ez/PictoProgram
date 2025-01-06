	ORG 	$0
START:
	MOVE.B #0, D1
	MOVE.W #12, D0
	TRAP #15
	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL:CALL(--, --, main)----

e1: *e1: SKIP
	SUB.L #88, SP *:PMB(--, --, f0)

* ----COPY:COPY(32, --, t2)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY:COPY(t2, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t4)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t0, t4, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY:COPY(0, --, t3)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO:GOTO(--, --, e3)----

e2: *e2: SKIP
* ----COPY:COPY(-1, --, t3)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3: *e3: SKIP
* ----COPY:COPY(0, --, t5)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t3, t5, e4)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t6)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY:COPY(t6, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-20, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COPY:COPY(1, --, t8)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COMPARE EQ:IFEQ(t0, t8, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t7)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t7)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COPY:COPY(0, --, t9)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t7, t9, e8)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t10)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY:COPY(t10, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-28, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COPY:COPY(2, --, t12)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COMPARE EQ:IFEQ(t0, t12, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t11)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t11)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COPY:COPY(0, --, t13)----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t11, t13, e12)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t14)----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY:COPY(t14, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COPY:COPY(3, --, t16)----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COMPARE EQ:IFEQ(t0, t16, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t15)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t15)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COPY:COPY(0, --, t17)----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t15, t17, e16)----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t18)----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY:COPY(t18, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-44, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COPY:COPY(4, --, t20)----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COMPARE EQ:IFEQ(t0, t20, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t19)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t19)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COPY:COPY(0, --, t21)----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t19, t21, e20)----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t22)----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY:COPY(t22, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-52, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COPY:COPY(5, --, t24)----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COMPARE EQ:IFEQ(t0, t24, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t23)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t23)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COPY:COPY(0, --, t25)----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t23, t25, e24)----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t26)----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY:COPY(t26, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COPY:COPY(6, --, t28)----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COMPARE EQ:IFEQ(t0, t28, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t27)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t27)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COPY:COPY(0, --, t29)----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t27, t29, e28)----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t30)----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY:COPY(t30, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-68, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COPY:COPY(7, --, t32)----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COMPARE EQ:IFEQ(t0, t32, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t31)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t31)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COPY:COPY(0, --, t33)----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t31, t33, e32)----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t34)----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY:COPY(t34, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-76, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COPY:COPY(8, --, t36)----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COMPARE EQ:IFEQ(t0, t36, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t35)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t35)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COPY:COPY(0, --, t37)----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t35, t37, e36)----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t38)----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY:COPY(t38, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COPY:COPY(9, --, t40)----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COMPARE EQ:IFEQ(t0, t40, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t39)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t39)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COPY:COPY(0, --, t41)----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t39, t41, e40)----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t42)----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY:COPY(t42, --, t1)----
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
* ----RETURN:RTN(--, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41: *e41: SKIP
	SUB.L #22, SP *:PMB(--, --, f1)

* ----COPY:COPY(1, --, t47)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COMPARE EQ:IFEQ(t43, t47, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY:COPY(0, --, t46)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO:GOTO(--, --, e43)----

e42: *e42: SKIP
* ----COPY:COPY(-1, --, t46)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43: *e43: SKIP
* ----COPY:COPY(0, --, t48)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t46, t48, e44)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e44

* ----SUM:SUM(t44, t45, t49)----
	CLR.L D1
	CLR.L D2
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----RETURN:RTN(--, --, t49)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e44: *e44: SKIP
* ----COPY:COPY(t45, --, t50)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.L #4, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(t44, --, t45)----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.L #2, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM:SUM(t44, t50, t51)----
	CLR.L D1
	CLR.L D2
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t51, --, t44)----
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.L #-20, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t45)----
	MOVE.L #0, D6
	MOVE.L #4, A5
	ADD.L A6, A5
MOVE_LOOP_t45_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t45_1

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t44)----
	MOVE.L #0, D6
	MOVE.L #2, A5
	ADD.L A6, A5
MOVE_LOOP_t44_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t44_1

* ----COPY:COPY(1, --, t54)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUB:SUB(t54, t43, t53)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t53)----
	MOVE.L #0, D6
	MOVE.L #-24, A5
	ADD.L A6, A5
MOVE_LOOP_t53_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t53_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t52)----
	ADD.L #6, A7
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----RETURN:RTN(--, --, t52)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main: *main: SKIP
	SUB.L #568, SP *:PMB(--, --, f2)

* ----COPY:COPY(0, --, t58)----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t58)----
	MOVE.L #0, D6
	MOVE.L #-526, A5
	ADD.L A6, A5
MOVE_LOOP_t58_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t58_1

* ----COPY:COPY(1, --, t59)----
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t59)----
	MOVE.L #0, D6
	MOVE.L #-528, A5
	ADD.L A6, A5
MOVE_LOOP_t59_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t59_1

* ----COPY:COPY(10, --, t60)----
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t60)----
	MOVE.L #0, D6
	MOVE.L #-530, A5
	ADD.L A6, A5
MOVE_LOOP_t60_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t60_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t57)----
	ADD.L #6, A7
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----COPY:COPY(t57, --, t56)----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.L #-524, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10000, --, t62)----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W #10000, (A5)

* ----COPY:COPY(t62, --, t61)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.L #-534, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t64)----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(t64, --, t63)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e46: *e46: SKIP
* ----COPY:COPY(0, --, t66)----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE GT:IFGT(t61, t66, e47)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BGT.W e47

* ----COPY:COPY(0, --, t65)----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e48 * ----GOTO:GOTO(--, --, e48)----

e47: *e47: SKIP
* ----COPY:COPY(-1, --, t65)----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e48: *e48: SKIP
* ----COPY:COPY(0, --, t67)----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ:IFEQ(t65, t67, e49)----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e49

* ----DIV:DIV(t61, t56, t69)----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	DIVS.W D1, D2
	MOVE.L #-548, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t69, --, t68)----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.L #-548, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----MUL:PROD(t61, t68, t71)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-552, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t71, --, t70)----
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.L #-552, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUB:SUB(t70, t56, t72)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-554, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t72, --, t56)----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.L #-554, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(10, --, t74)----
	MOVE.L #-558, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----DIV:DIV(t74, t61, t73)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-558, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	DIVS.W D1, D2
	MOVE.L #-556, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t73, --, t61)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.L #-556, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t68)----
	MOVE.L #0, D6
	MOVE.L #-546, A5
	ADD.L A6, A5
MOVE_LOOP_t68_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t68_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e1 * ----FUNCTION CALL:CALL(--, --, f0)----

* ----POP:POP(f0, --, t75)----
	ADD.L #2, A7
	MOVE.L #-560, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----COPY:COPY(0, --, t76)----
	MOVE.L #-562, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t75, t76, t55)----
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

* ----COPY:COPY(0, --, t77)----
	MOVE.L #-564, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----POS:POS(t63, t77, --)----
	MOVE.L #-536, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.L #-564, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY:COPY(0, --, t78)----
	MOVE.L #-566, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY:COPY(0, --, t79)----
	MOVE.L #-568, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----WRITE:WRITE(t78, t79, t55)----
	MOVE.L #-566, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-568, A5
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

* ----COPY:COPY(1, --, t81)----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SUM:SUM(t81, t63, t80)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-570, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t80, --, t63)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.L #-570, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e46 * ----GOTO:GOTO(--, --, e46)----

e49: *e49: SKIP
	SIMHALT *HALT(--, --, --)
	END START
