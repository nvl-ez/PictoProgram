	ORG 	$0
START:
	MOVE.B #0, D1
	MOVE.W #12, D0
	TRAP #15
	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL:CALL(--, --, main)----

e1: *e1: SKIP
	SUB.L #26, SP *:PMB(--, --, f0)

* ----COPY:COPY(32, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)
* ----COMPARE EQ:IFEQ(t0, 0, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY:COPY(0, --, t3)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO:GOTO(--, --, e3)----

e2: *e2: SKIP
* ----COPY:COPY(-1, --, t3)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3: *e3: SKIP
* ----COMPARE EQ:IFEQ(t3, 0, e4)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)
	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COMPARE EQ:IFEQ(t0, 1, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #1, D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t7)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t7)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COMPARE EQ:IFEQ(t7, 0, e8)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)
	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COMPARE EQ:IFEQ(t0, 2, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #2, D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t11)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t11)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COMPARE EQ:IFEQ(t11, 0, e12)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)
	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COMPARE EQ:IFEQ(t0, 3, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #3, D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t15)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t15)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COMPARE EQ:IFEQ(t15, 0, e16)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)
	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COMPARE EQ:IFEQ(t0, 4, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #4, D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t19)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t19)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COMPARE EQ:IFEQ(t19, 0, e20)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)
	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COMPARE EQ:IFEQ(t0, 5, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #5, D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t23)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t23)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COMPARE EQ:IFEQ(t23, 0, e24)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)
	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COMPARE EQ:IFEQ(t0, 6, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #6, D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t27)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t27)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COMPARE EQ:IFEQ(t27, 0, e28)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)
	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COMPARE EQ:IFEQ(t0, 7, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #7, D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t31)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t31)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COMPARE EQ:IFEQ(t31, 0, e32)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)
	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COMPARE EQ:IFEQ(t0, 8, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #8, D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t35)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t35)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COMPARE EQ:IFEQ(t35, 0, e36)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)
	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COMPARE EQ:IFEQ(t0, 9, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #9, D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t39)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t39)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COMPARE EQ:IFEQ(t39, 0, e40)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t1)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)
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
	SUB.L #16, SP *:PMB(--, --, f1)

* ----COMPARE EQ:IFEQ(t43, 1, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #1, D2
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
* ----COMPARE EQ:IFEQ(t46, 0, e44)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
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
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----RETURN:RTN(--, --, t49)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e44: *e44: SKIP
* ----COPY:COPY(t45, --, t50)----
	MOVE.L #-14, A5
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
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t51, --, t44)----
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.L #-16, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t45)----
	MOVE.L #0, D6
	MOVE.L #4, A5
	ADD.L A6, A5
MOVE_LOOP_t45_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t45_2

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t44)----
	MOVE.L #0, D6
	MOVE.L #2, A5
	ADD.L A6, A5
MOVE_LOOP_t44_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t44_2

* ----SUB:SUB(1, t43, t53)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t53)----
	MOVE.L #0, D6
	MOVE.L #-20, A5
	ADD.L A6, A5
MOVE_LOOP_t53_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t53_2

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t52)----
	ADD.L #6, A7
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----RETURN:RTN(--, --, t52)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main: *main: SKIP
	SUB.L #548, SP *:PMB(--, --, f2)

* ----COPY:COPY(0, --, t58)----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t58)----
	MOVE.L #0, D6
	MOVE.L #-526, A5
	ADD.L A6, A5
MOVE_LOOP_t58_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t58_2

* ----COPY:COPY(1, --, t59)----
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t59)----
	MOVE.L #0, D6
	MOVE.L #-528, A5
	ADD.L A6, A5
MOVE_LOOP_t59_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t59_2

* ----COPY:COPY(10, --, t60)----
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t60)----
	MOVE.L #0, D6
	MOVE.L #-530, A5
	ADD.L A6, A5
MOVE_LOOP_t60_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t60_2

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

* ----COPY:COPY(10000, --, t61)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W #10000, (A5)
* ----COPY:COPY(0, --, t63)----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)
e46: *e46: SKIP
* ----COMPARE GT:IFGT(t61, 0, e47)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D2, D1
	BGT.W e47

* ----COPY:COPY(0, --, t65)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e48 * ----GOTO:GOTO(--, --, e48)----

e47: *e47: SKIP
* ----COPY:COPY(-1, --, t65)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e48: *e48: SKIP
* ----COMPARE EQ:IFEQ(t65, 0, e49)----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
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
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t69, --, t68)----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.L #-540, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----MUL:PROD(t61, t68, t71)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t71, --, t70)----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.L #-544, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUB:SUB(t70, t56, t72)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t72, --, t56)----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.L #-546, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----DIV:DIV(10, t61, t73)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.W #10, D1
	DIVS.W D1, D2
	MOVE.L #-548, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t73, --, t61)----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.L #-548, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t68)----
	MOVE.L #0, D6
	MOVE.L #-538, A5
	ADD.L A6, A5
MOVE_LOOP_t68_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t68_2

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e1 * ----FUNCTION CALL:CALL(--, --, f0)----

* ----POP:POP(f0, --, t75)----
	ADD.L #2, A7
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t75, 0, t55)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #0, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-550, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS:POS(t63, 0, --)----
	MOVE.L #-534, A4
	ADD.L A6, A4
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.B #0, D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----WRITE:WRITE(0, 0, t55)----
	MOVE.W #0, D2
	MOVE.W #0, D3
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

* ----SUM:SUM(1, t63, t80)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-552, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t80, --, t63)----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.L #-552, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e46 * ----GOTO:GOTO(--, --, e46)----

e49: *e49: SKIP
	SIMHALT *HALT(--, --, --)
	END START
