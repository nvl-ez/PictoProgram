t0	DS.W 2
t2	DS.W 2
	ORG 	$4
START:
	MOVE.B #0, D1
	MOVE.W #12, D0
	TRAP #15
* ----COPY:COPY(45, --, t0)----
	LEA t0, A5
	MOVE.W #45, (A5)
* ----COPY:COPY(45, --, t2)----
	LEA t2, A5
	MOVE.W #45, (A5)
	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL:CALL(--, --, main)----

	SIMHALT *HALT(--, --, --)
e1: *e1: SKIP
	SUB.L #26, SP *:PMB(--, --, f0)

* ----COPY:COPY(32, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)
* ----COMPARE EQ:IFEQ(t4, 0, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY:COPY(0, --, t7)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO:GOTO(--, --, e3)----

e2: *e2: SKIP
* ----COPY:COPY(-1, --, t7)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3: *e3: SKIP
* ----COMPARE EQ:IFEQ(t7, 0, e4)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)
	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COMPARE EQ:IFEQ(t4, 1, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #1, D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t11)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t11)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COMPARE EQ:IFEQ(t11, 0, e8)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)
	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COMPARE EQ:IFEQ(t4, 2, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #2, D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t15)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t15)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COMPARE EQ:IFEQ(t15, 0, e12)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)
	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COMPARE EQ:IFEQ(t4, 3, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #3, D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t19)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t19)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COMPARE EQ:IFEQ(t19, 0, e16)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)
	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COMPARE EQ:IFEQ(t4, 4, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #4, D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t23)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t23)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COMPARE EQ:IFEQ(t23, 0, e20)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)
	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COMPARE EQ:IFEQ(t4, 5, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #5, D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t27)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t27)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COMPARE EQ:IFEQ(t27, 0, e24)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)
	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COMPARE EQ:IFEQ(t4, 6, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #6, D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t31)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t31)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COMPARE EQ:IFEQ(t31, 0, e28)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)
	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COMPARE EQ:IFEQ(t4, 7, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #7, D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t35)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t35)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COMPARE EQ:IFEQ(t35, 0, e32)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)
	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COMPARE EQ:IFEQ(t4, 8, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #8, D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t39)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t39)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COMPARE EQ:IFEQ(t39, 0, e36)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)
	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COMPARE EQ:IFEQ(t4, 9, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #9, D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t43)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t43)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COMPARE EQ:IFEQ(t43, 0, e40)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t5)----
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
* ----RETURN:RTN(--, --, t5)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41: *e41: SKIP
	SUB.L #28, SP *:PMB(--, --, f1)

* ----COPY:COPY(1, --, t49)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)
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

* ----COMPARE EQ:IFEQ(t47, 48, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #48, D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY:COPY(0, --, t51)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO:GOTO(--, --, e43)----

e42: *e42: SKIP
* ----COPY:COPY(-1, --, t51)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43: *e43: SKIP
* ----COMPARE EQ:IFEQ(t51, 0, e44)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY:COPY(0, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)
	JMP e45 * ----GOTO:GOTO(--, --, e45)----

e44: *e44: SKIP
* ----COMPARE EQ:IFEQ(t47, 49, e46)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #49, D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY:COPY(0, --, t55)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO:GOTO(--, --, e47)----

e46: *e46: SKIP
* ----COPY:COPY(-1, --, t55)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47: *e47: SKIP
* ----COMPARE EQ:IFEQ(t55, 0, e48)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e48

* ----COPY:COPY(1, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)
	JMP e49 * ----GOTO:GOTO(--, --, e49)----

e48: *e48: SKIP
* ----COMPARE EQ:IFEQ(t47, 50, e50)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #50, D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY:COPY(0, --, t59)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO:GOTO(--, --, e51)----

e50: *e50: SKIP
* ----COPY:COPY(-1, --, t59)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51: *e51: SKIP
* ----COMPARE EQ:IFEQ(t59, 0, e52)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e52

* ----COPY:COPY(2, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)
	JMP e53 * ----GOTO:GOTO(--, --, e53)----

e52: *e52: SKIP
* ----COMPARE EQ:IFEQ(t47, 51, e54)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #51, D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY:COPY(0, --, t63)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO:GOTO(--, --, e55)----

e54: *e54: SKIP
* ----COPY:COPY(-1, --, t63)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55: *e55: SKIP
* ----COMPARE EQ:IFEQ(t63, 0, e56)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e56

* ----COPY:COPY(3, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)
	JMP e57 * ----GOTO:GOTO(--, --, e57)----

e56: *e56: SKIP
* ----COMPARE EQ:IFEQ(t47, 52, e58)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #52, D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY:COPY(0, --, t67)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO:GOTO(--, --, e59)----

e58: *e58: SKIP
* ----COPY:COPY(-1, --, t67)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59: *e59: SKIP
* ----COMPARE EQ:IFEQ(t67, 0, e60)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e60

* ----COPY:COPY(4, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)
	JMP e61 * ----GOTO:GOTO(--, --, e61)----

e60: *e60: SKIP
* ----COMPARE EQ:IFEQ(t47, 53, e62)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #53, D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY:COPY(0, --, t71)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO:GOTO(--, --, e63)----

e62: *e62: SKIP
* ----COPY:COPY(-1, --, t71)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63: *e63: SKIP
* ----COMPARE EQ:IFEQ(t71, 0, e64)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e64

* ----COPY:COPY(5, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)
	JMP e65 * ----GOTO:GOTO(--, --, e65)----

e64: *e64: SKIP
* ----COMPARE EQ:IFEQ(t47, 54, e66)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #54, D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY:COPY(0, --, t75)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO:GOTO(--, --, e67)----

e66: *e66: SKIP
* ----COPY:COPY(-1, --, t75)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67: *e67: SKIP
* ----COMPARE EQ:IFEQ(t75, 0, e68)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e68

* ----COPY:COPY(6, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)
	JMP e69 * ----GOTO:GOTO(--, --, e69)----

e68: *e68: SKIP
* ----COMPARE EQ:IFEQ(t47, 55, e70)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #55, D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY:COPY(0, --, t79)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO:GOTO(--, --, e71)----

e70: *e70: SKIP
* ----COPY:COPY(-1, --, t79)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71: *e71: SKIP
* ----COMPARE EQ:IFEQ(t79, 0, e72)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e72

* ----COPY:COPY(7, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)
	JMP e73 * ----GOTO:GOTO(--, --, e73)----

e72: *e72: SKIP
* ----COMPARE EQ:IFEQ(t47, 56, e74)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #56, D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY:COPY(0, --, t83)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO:GOTO(--, --, e75)----

e74: *e74: SKIP
* ----COPY:COPY(-1, --, t83)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75: *e75: SKIP
* ----COMPARE EQ:IFEQ(t83, 0, e76)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e76

* ----COPY:COPY(8, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)
	JMP e77 * ----GOTO:GOTO(--, --, e77)----

e76: *e76: SKIP
* ----COMPARE EQ:IFEQ(t47, 57, e78)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #57, D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY:COPY(0, --, t87)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO:GOTO(--, --, e79)----

e78: *e78: SKIP
* ----COPY:COPY(-1, --, t87)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79: *e79: SKIP
* ----COMPARE EQ:IFEQ(t87, 0, e80)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e80

* ----COPY:COPY(9, --, t48)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)
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
	SUB.L #544, SP *:PMB(--, --, f2)

* ----SET VALUE FROM INDIRECTION:IND_ASS(80, 0, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #0, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #80, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(117, 1, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #1, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #117, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(116, 2, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #2, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #116, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(32, 3, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #3, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #32, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(97, 4, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #4, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #97, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(32, 5, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #5, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #32, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(100, 6, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #6, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #100, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(101, 7, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #7, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #101, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(99, 8, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #8, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #99, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(105, 9, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #9, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #105, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(109, 10, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #10, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #109, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(97, 11, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #11, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #97, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(108, 12, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #12, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #108, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(58, 13, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #13, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #58, (A5)
* ----POS:POS(0, 0, --)----
	MOVE.B #0, D5
	LSL.W #8, D5
	MOVE.B #0, D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----WRITE:WRITE(0, 13, t91)----
	MOVE.W #0, D2
	MOVE.W #13, D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_4:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_4

* ----READ:READ(--, --, t124)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t124, --, t0)----
	LEA t0, A5
	MOVE.L #-522, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t0, 14, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #14, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	LEA t0, A4
	MOVE.W (A4), (A5)

* ----READ:READ(--, --, t126)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t126, --, t2)----
	LEA t2, A5
	MOVE.L #-524, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t2, 15, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #15, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	LEA t2, A4
	MOVE.W (A4), (A5)

* ----POS:POS(14, 0, --)----
	MOVE.B #14, D5
	LSL.W #8, D5
	MOVE.B #0, D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----WRITE:WRITE(14, 15, t91)----
	MOVE.W #14, D2
	MOVE.W #15, D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_5:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_5

* ----COPY GLOBAL VARIABLE ON THE STACK:PUT(--, --, t0)----
	MOVE.L #0, D6
	LEA t0, A5
MOVE_LOOP_t0_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t0_2

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t136)----
	ADD.L #2, A7
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----MUL:PROD(10, t136, t134)----
	CLR.L D1
	CLR.L D2
	MOVE.W #10, D1
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY GLOBAL VARIABLE ON THE STACK:PUT(--, --, t2)----
	MOVE.L #0, D6
	LEA t2, A5
MOVE_LOOP_t2_2:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t2_2

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL:CALL(--, --, f1)----

* ----POP:POP(f1, --, t137)----
	ADD.L #2, A7
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----SUM:SUM(t134, t137, t133)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t133, --, t132)----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.L #-528, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(80, 0, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #0, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #80, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(117, 1, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #1, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #117, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(116, 2, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #2, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #116, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(32, 3, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #3, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #32, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(97, 4, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #4, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #97, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(32, 5, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #5, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #32, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(108, 6, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #6, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #108, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(101, 7, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #7, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #101, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(116, 8, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #8, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #116, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(116, 9, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #9, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #116, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(101, 10, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #10, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #101, (A5)
* ----SET VALUE FROM INDIRECTION:IND_ASS(114, 11, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #11, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.W #114, (A5)
* ----OBTAIN VALUE FROM INDIRECTION:IND_VAL(t91, 13, t162)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	CLR.L D1
	MOVE.W #13, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-536, A4
	ADD.L A6, A4
	MOVE.W (A5), (A4)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t162, 12, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.W #12, D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-536, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS:POS(0, 2, --)----
	MOVE.B #0, D5
	LSL.W #8, D5
	MOVE.B #2, D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----WRITE:WRITE(0, 12, t91)----
	MOVE.W #0, D2
	MOVE.W #12, D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_6:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_6

* ----READ:READ(--, --, t170)----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY:COPY(t170, --, t169)----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.L #-540, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUB:SUB(1, t132, t171)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t171, --, t132)----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.L #-542, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(0, --, t173)----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)
e82: *e82: SKIP
* ----COMPARE LE:IFLE(t173, t132, e83)----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLE.W e83

* ----COPY:COPY(0, --, t175)----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e84 * ----GOTO:GOTO(--, --, e84)----

e83: *e83: SKIP
* ----COPY:COPY(-1, --, t175)----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e84: *e84: SKIP
* ----COMPARE EQ:IFEQ(t175, 0, e85)----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e85

* ----SET VALUE FROM INDIRECTION:IND_ASS(t169, t173, t91)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-544, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----INCREMENT LOCAL VARIABLE:INC(--, --, t173)----
	MOVE.L #-544, A5
	ADD.L A6, A5
	ADD.W #1, (A5)

	JMP e82 * ----GOTO:GOTO(--, --, e82)----

e85: *e85: SKIP
* ----POS:POS(0, 4, --)----
	MOVE.B #0, D5
	LSL.W #8, D5
	MOVE.B #4, D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----WRITE:WRITE(0, t132, t91)----
	MOVE.W #0, D2
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W (A5), D3
	MOVE.L #-520, A5
	ADD.L A6, A5
	SUB.W D2, D3
	LSL.W #1, D2
	ADD.W D2, A5
	MOVE.W #6, D0
WRITE_LOOP_7:
	MOVE.W (A5)+, D1
	TRAP #15
	DBF D3, WRITE_LOOP_7

	SIMHALT *HALT(--, --, --)
	END START
