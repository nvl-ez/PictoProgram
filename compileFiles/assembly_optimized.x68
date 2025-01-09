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

* ----COPY:COPY(32, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)
* ----COMPARE EQ:IFEQ(t1, 0, e2)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY:COPY(0, --, t4)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO:GOTO(--, --, e3)----

e2: *e2: SKIP
* ----COPY:COPY(-1, --, t4)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3: *e3: SKIP
* ----COMPARE EQ:IFEQ(t4, 0, e4)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY:COPY(48, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)
	JMP e5 * ----GOTO:GOTO(--, --, e5)----

e4: *e4: SKIP
* ----COMPARE EQ:IFEQ(t1, 1, e6)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #1, D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY:COPY(0, --, t8)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO:GOTO(--, --, e7)----

e6: *e6: SKIP
* ----COPY:COPY(-1, --, t8)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7: *e7: SKIP
* ----COMPARE EQ:IFEQ(t8, 0, e8)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY:COPY(49, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)
	JMP e9 * ----GOTO:GOTO(--, --, e9)----

e8: *e8: SKIP
* ----COMPARE EQ:IFEQ(t1, 2, e10)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #2, D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY:COPY(0, --, t12)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO:GOTO(--, --, e11)----

e10: *e10: SKIP
* ----COPY:COPY(-1, --, t12)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11: *e11: SKIP
* ----COMPARE EQ:IFEQ(t12, 0, e12)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY:COPY(50, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)
	JMP e13 * ----GOTO:GOTO(--, --, e13)----

e12: *e12: SKIP
* ----COMPARE EQ:IFEQ(t1, 3, e14)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #3, D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY:COPY(0, --, t16)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO:GOTO(--, --, e15)----

e14: *e14: SKIP
* ----COPY:COPY(-1, --, t16)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15: *e15: SKIP
* ----COMPARE EQ:IFEQ(t16, 0, e16)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY:COPY(51, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)
	JMP e17 * ----GOTO:GOTO(--, --, e17)----

e16: *e16: SKIP
* ----COMPARE EQ:IFEQ(t1, 4, e18)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #4, D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY:COPY(0, --, t20)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO:GOTO(--, --, e19)----

e18: *e18: SKIP
* ----COPY:COPY(-1, --, t20)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19: *e19: SKIP
* ----COMPARE EQ:IFEQ(t20, 0, e20)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY:COPY(52, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)
	JMP e21 * ----GOTO:GOTO(--, --, e21)----

e20: *e20: SKIP
* ----COMPARE EQ:IFEQ(t1, 5, e22)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #5, D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY:COPY(0, --, t24)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO:GOTO(--, --, e23)----

e22: *e22: SKIP
* ----COPY:COPY(-1, --, t24)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23: *e23: SKIP
* ----COMPARE EQ:IFEQ(t24, 0, e24)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY:COPY(53, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)
	JMP e25 * ----GOTO:GOTO(--, --, e25)----

e24: *e24: SKIP
* ----COMPARE EQ:IFEQ(t1, 6, e26)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #6, D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY:COPY(0, --, t28)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO:GOTO(--, --, e27)----

e26: *e26: SKIP
* ----COPY:COPY(-1, --, t28)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27: *e27: SKIP
* ----COMPARE EQ:IFEQ(t28, 0, e28)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY:COPY(54, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)
	JMP e29 * ----GOTO:GOTO(--, --, e29)----

e28: *e28: SKIP
* ----COMPARE EQ:IFEQ(t1, 7, e30)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #7, D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY:COPY(0, --, t32)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO:GOTO(--, --, e31)----

e30: *e30: SKIP
* ----COPY:COPY(-1, --, t32)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31: *e31: SKIP
* ----COMPARE EQ:IFEQ(t32, 0, e32)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY:COPY(55, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)
	JMP e33 * ----GOTO:GOTO(--, --, e33)----

e32: *e32: SKIP
* ----COMPARE EQ:IFEQ(t1, 8, e34)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #8, D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY:COPY(0, --, t36)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO:GOTO(--, --, e35)----

e34: *e34: SKIP
* ----COPY:COPY(-1, --, t36)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35: *e35: SKIP
* ----COMPARE EQ:IFEQ(t36, 0, e36)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY:COPY(56, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)
	JMP e37 * ----GOTO:GOTO(--, --, e37)----

e36: *e36: SKIP
* ----COMPARE EQ:IFEQ(t1, 9, e38)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #9, D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY:COPY(0, --, t40)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO:GOTO(--, --, e39)----

e38: *e38: SKIP
* ----COPY:COPY(-1, --, t40)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39: *e39: SKIP
* ----COMPARE EQ:IFEQ(t40, 0, e40)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY:COPY(57, --, t2)----
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
* ----RETURN:RTN(--, --, t2)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41: *e41: SKIP
	SUB.L #28, SP *:PMB(--, --, f1)

* ----COPY:COPY(1, --, t46)----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)
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

* ----COMPARE EQ:IFEQ(t44, 48, e42)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #48, D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY:COPY(0, --, t48)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO:GOTO(--, --, e43)----

e42: *e42: SKIP
* ----COPY:COPY(-1, --, t48)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43: *e43: SKIP
* ----COMPARE EQ:IFEQ(t48, 0, e44)----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY:COPY(0, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)
	JMP e45 * ----GOTO:GOTO(--, --, e45)----

e44: *e44: SKIP
* ----COMPARE EQ:IFEQ(t44, 49, e46)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #49, D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY:COPY(0, --, t52)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO:GOTO(--, --, e47)----

e46: *e46: SKIP
* ----COPY:COPY(-1, --, t52)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47: *e47: SKIP
* ----COMPARE EQ:IFEQ(t52, 0, e48)----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e48

* ----COPY:COPY(1, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)
	JMP e49 * ----GOTO:GOTO(--, --, e49)----

e48: *e48: SKIP
* ----COMPARE EQ:IFEQ(t44, 50, e50)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #50, D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY:COPY(0, --, t56)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO:GOTO(--, --, e51)----

e50: *e50: SKIP
* ----COPY:COPY(-1, --, t56)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51: *e51: SKIP
* ----COMPARE EQ:IFEQ(t56, 0, e52)----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e52

* ----COPY:COPY(2, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)
	JMP e53 * ----GOTO:GOTO(--, --, e53)----

e52: *e52: SKIP
* ----COMPARE EQ:IFEQ(t44, 51, e54)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #51, D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY:COPY(0, --, t60)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO:GOTO(--, --, e55)----

e54: *e54: SKIP
* ----COPY:COPY(-1, --, t60)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55: *e55: SKIP
* ----COMPARE EQ:IFEQ(t60, 0, e56)----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e56

* ----COPY:COPY(3, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)
	JMP e57 * ----GOTO:GOTO(--, --, e57)----

e56: *e56: SKIP
* ----COMPARE EQ:IFEQ(t44, 52, e58)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #52, D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY:COPY(0, --, t64)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO:GOTO(--, --, e59)----

e58: *e58: SKIP
* ----COPY:COPY(-1, --, t64)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59: *e59: SKIP
* ----COMPARE EQ:IFEQ(t64, 0, e60)----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e60

* ----COPY:COPY(4, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)
	JMP e61 * ----GOTO:GOTO(--, --, e61)----

e60: *e60: SKIP
* ----COMPARE EQ:IFEQ(t44, 53, e62)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #53, D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY:COPY(0, --, t68)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO:GOTO(--, --, e63)----

e62: *e62: SKIP
* ----COPY:COPY(-1, --, t68)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63: *e63: SKIP
* ----COMPARE EQ:IFEQ(t68, 0, e64)----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e64

* ----COPY:COPY(5, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)
	JMP e65 * ----GOTO:GOTO(--, --, e65)----

e64: *e64: SKIP
* ----COMPARE EQ:IFEQ(t44, 54, e66)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #54, D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY:COPY(0, --, t72)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO:GOTO(--, --, e67)----

e66: *e66: SKIP
* ----COPY:COPY(-1, --, t72)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67: *e67: SKIP
* ----COMPARE EQ:IFEQ(t72, 0, e68)----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e68

* ----COPY:COPY(6, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)
	JMP e69 * ----GOTO:GOTO(--, --, e69)----

e68: *e68: SKIP
* ----COMPARE EQ:IFEQ(t44, 55, e70)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #55, D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY:COPY(0, --, t76)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO:GOTO(--, --, e71)----

e70: *e70: SKIP
* ----COPY:COPY(-1, --, t76)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71: *e71: SKIP
* ----COMPARE EQ:IFEQ(t76, 0, e72)----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e72

* ----COPY:COPY(7, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)
	JMP e73 * ----GOTO:GOTO(--, --, e73)----

e72: *e72: SKIP
* ----COMPARE EQ:IFEQ(t44, 56, e74)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #56, D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY:COPY(0, --, t80)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO:GOTO(--, --, e75)----

e74: *e74: SKIP
* ----COPY:COPY(-1, --, t80)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75: *e75: SKIP
* ----COMPARE EQ:IFEQ(t80, 0, e76)----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e76

* ----COPY:COPY(8, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)
	JMP e77 * ----GOTO:GOTO(--, --, e77)----

e76: *e76: SKIP
* ----COMPARE EQ:IFEQ(t44, 57, e78)----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #57, D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY:COPY(0, --, t84)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO:GOTO(--, --, e79)----

e78: *e78: SKIP
* ----COPY:COPY(-1, --, t84)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79: *e79: SKIP
* ----COMPARE EQ:IFEQ(t84, 0, e80)----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e80

* ----COPY:COPY(9, --, t45)----
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
* ----RETURN:RTN(--, --, t45)----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main: *main: SKIP
	SUB.L #838, SP *:PMB(--, --, f2)

* ----COPY:COPY(0, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)
* ----COMPARE LT:IFLT(t90, 10, e82)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e82

* ----COPY:COPY(0, --, t93)----
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e83 * ----GOTO:GOTO(--, --, e83)----

e82: *e82: SKIP
* ----COPY:COPY(-1, --, t93)----
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e83: *e83: SKIP
* ----COPY:COPY(t93, --, t92)----
	MOVE.L #-724, A5
	ADD.L A6, A5
	MOVE.L #-726, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t90, 10, e84)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e84

* ----COPY:COPY(0, --, t96)----
	MOVE.L #-730, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e85 * ----GOTO:GOTO(--, --, e85)----

e84: *e84: SKIP
* ----COPY:COPY(-1, --, t96)----
	MOVE.L #-730, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e85: *e85: SKIP
* ----COPY:COPY(t96, --, t95)----
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.L #-730, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e86: *e86: SKIP
* ----AND:AND(t95, t92, t98)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-724, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COMPARE EQ:IFEQ(t98, 0, e87)----
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e87

* ----COPY:COPY(t90, --, t100)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY:COPY(t90, --, t101)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t100, 10, e88)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e88

* ----COPY:COPY(0, --, t103)----
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e89 * ----GOTO:GOTO(--, --, e89)----

e88: *e88: SKIP
* ----COPY:COPY(-1, --, t103)----
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e89: *e89: SKIP
* ----COPY:COPY(t103, --, t102)----
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.L #-740, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t100, 10, e90)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e90

* ----COPY:COPY(0, --, t106)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e91 * ----GOTO:GOTO(--, --, e91)----

e90: *e90: SKIP
* ----COPY:COPY(-1, --, t106)----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e91: *e91: SKIP
* ----COPY:COPY(t106, --, t105)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.L #-744, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e92: *e92: SKIP
* ----AND:AND(t105, t102, t108)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COMPARE EQ:IFEQ(t108, 0, e93)----
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e93

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t90)----
	MOVE.L #0, D6
	MOVE.L #-722, A5
	ADD.L A6, A5
MOVE_LOOP_t90_3:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t90_3

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e1 * ----FUNCTION CALL:CALL(--, --, f0)----

* ----POP:POP(f0, --, t110)----
	ADD.L #2, A7
	MOVE.L #-748, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----MUL:PROD(t90, 10, t114)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	MULS.W D1, D2
	MOVE.L #-754, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM:SUM(t100, t114, t115)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-754, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t110, t115, t89)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	MOVE.L #-756, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-748, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM:SUM(1, t100, t116)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-758, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t116, --, t100)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.L #-758, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t100, 10, e94)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e94

* ----COPY:COPY(0, --, t118)----
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e95 * ----GOTO:GOTO(--, --, e95)----

e94: *e94: SKIP
* ----COPY:COPY(-1, --, t118)----
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e95: *e95: SKIP
* ----COPY:COPY(t118, --, t102)----
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.L #-760, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t100, 10, e96)----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e96

* ----COPY:COPY(0, --, t120)----
	MOVE.L #-762, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e97 * ----GOTO:GOTO(--, --, e97)----

e96: *e96: SKIP
* ----COPY:COPY(-1, --, t120)----
	MOVE.L #-762, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e97: *e97: SKIP
* ----COPY:COPY(t120, --, t105)----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.L #-762, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e92 * ----GOTO:GOTO(--, --, e92)----

e93: *e93: SKIP
* ----COMPARE LT:IFLT(t101, 10, e98)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e98

* ----COPY:COPY(0, --, t123)----
	MOVE.L #-766, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e99 * ----GOTO:GOTO(--, --, e99)----

e98: *e98: SKIP
* ----COPY:COPY(-1, --, t123)----
	MOVE.L #-766, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e99: *e99: SKIP
* ----COPY:COPY(t123, --, t122)----
	MOVE.L #-764, A5
	ADD.L A6, A5
	MOVE.L #-766, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t101, 10, e100)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e100

* ----COPY:COPY(0, --, t126)----
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e101 * ----GOTO:GOTO(--, --, e101)----

e100: *e100: SKIP
* ----COPY:COPY(-1, --, t126)----
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e101: *e101: SKIP
* ----COPY:COPY(t126, --, t125)----
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.L #-770, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e102: *e102: SKIP
* ----AND:AND(t125, t122, t128)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-764, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-772, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COMPARE EQ:IFEQ(t128, 0, e103)----
	MOVE.L #-772, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e103

* ----COPY LOCAL VARIABLE ON THE STACK:PUT(--, --, t90)----
	MOVE.L #0, D6
	MOVE.L #-722, A5
	ADD.L A6, A5
MOVE_LOOP_t90_4:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t90_4

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e1 * ----FUNCTION CALL:CALL(--, --, f0)----

* ----POP:POP(f0, --, t130)----
	ADD.L #2, A7
	MOVE.L #-774, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----MUL:PROD(t101, 10, t134)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	MULS.W D1, D2
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM:SUM(t90, t134, t135)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-782, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t130, t135, t89)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	MOVE.L #-782, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-774, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM:SUM(1, t101, t136)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-784, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t136, --, t101)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.L #-784, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t101, 10, e104)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e104

* ----COPY:COPY(0, --, t138)----
	MOVE.L #-786, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e105 * ----GOTO:GOTO(--, --, e105)----

e104: *e104: SKIP
* ----COPY:COPY(-1, --, t138)----
	MOVE.L #-786, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e105: *e105: SKIP
* ----COPY:COPY(t138, --, t122)----
	MOVE.L #-764, A5
	ADD.L A6, A5
	MOVE.L #-786, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t101, 10, e106)----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e106

* ----COPY:COPY(0, --, t140)----
	MOVE.L #-788, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e107 * ----GOTO:GOTO(--, --, e107)----

e106: *e106: SKIP
* ----COPY:COPY(-1, --, t140)----
	MOVE.L #-788, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e107: *e107: SKIP
* ----COPY:COPY(t140, --, t125)----
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.L #-788, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e102 * ----GOTO:GOTO(--, --, e102)----

e103: *e103: SKIP
* ----SUM:SUM(1, t90, t142)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-790, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t142, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.L #-790, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t90, 10, e108)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e108

* ----COPY:COPY(0, --, t144)----
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e109 * ----GOTO:GOTO(--, --, e109)----

e108: *e108: SKIP
* ----COPY:COPY(-1, --, t144)----
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e109: *e109: SKIP
* ----COPY:COPY(t144, --, t92)----
	MOVE.L #-724, A5
	ADD.L A6, A5
	MOVE.L #-792, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t90, 10, e110)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e110

* ----COPY:COPY(0, --, t146)----
	MOVE.L #-794, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e111 * ----GOTO:GOTO(--, --, e111)----

e110: *e110: SKIP
* ----COPY:COPY(-1, --, t146)----
	MOVE.L #-794, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e111: *e111: SKIP
* ----COPY:COPY(t146, --, t95)----
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.L #-794, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e86 * ----GOTO:GOTO(--, --, e86)----

e87: *e87: SKIP
* ----COPY:COPY(0, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)
* ----COMPARE LT:IFLT(t90, 10, e112)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e112

* ----COPY:COPY(0, --, t150)----
	MOVE.L #-798, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e113 * ----GOTO:GOTO(--, --, e113)----

e112: *e112: SKIP
* ----COPY:COPY(-1, --, t150)----
	MOVE.L #-798, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e113: *e113: SKIP
* ----COPY:COPY(t150, --, t149)----
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.L #-798, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t90, 10, e114)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e114

* ----COPY:COPY(0, --, t153)----
	MOVE.L #-802, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e115 * ----GOTO:GOTO(--, --, e115)----

e114: *e114: SKIP
* ----COPY:COPY(-1, --, t153)----
	MOVE.L #-802, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e115: *e115: SKIP
* ----COPY:COPY(t153, --, t152)----
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.L #-802, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e116: *e116: SKIP
* ----AND:AND(t152, t149, t155)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-804, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COMPARE EQ:IFEQ(t155, 0, e117)----
	MOVE.L #-804, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e117

* ----COPY:COPY(t90, --, t157)----
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t157, 10, e118)----
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e118

* ----COPY:COPY(0, --, t159)----
	MOVE.L #-810, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e119 * ----GOTO:GOTO(--, --, e119)----

e118: *e118: SKIP
* ----COPY:COPY(-1, --, t159)----
	MOVE.L #-810, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e119: *e119: SKIP
* ----COPY:COPY(t159, --, t158)----
	MOVE.L #-808, A5
	ADD.L A6, A5
	MOVE.L #-810, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t157, 10, e120)----
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e120

* ----COPY:COPY(0, --, t162)----
	MOVE.L #-814, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e121 * ----GOTO:GOTO(--, --, e121)----

e120: *e120: SKIP
* ----COPY:COPY(-1, --, t162)----
	MOVE.L #-814, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e121: *e121: SKIP
* ----COPY:COPY(t162, --, t161)----
	MOVE.L #-812, A5
	ADD.L A6, A5
	MOVE.L #-814, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e122: *e122: SKIP
* ----AND:AND(t161, t158, t164)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-812, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-808, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	AND.W D2, D1
	MOVE.L #-816, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COMPARE EQ:IFEQ(t164, 0, e123)----
	MOVE.L #-816, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #0, D2
	CMP.W D1, D2
	BEQ.W e123

* ----MUL:PROD(t157, 10, t170)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	MULS.W D1, D2
	MOVE.L #-824, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM:SUM(t90, t170, t171)----
	CLR.L D1
	CLR.L D2
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-824, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-826, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----OBTAIN VALUE FROM INDIRECTION:IND_VAL(t89, t171, t166)----
	MOVE.L #-720, A5
	ADD.L A6, A5
	CLR.L D1
	MOVE.L #-826, A4
	ADD.L A6, A4
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-818, A4
	ADD.L A6, A4
	MOVE.W (A5), (A4)

* ----SET VALUE FROM INDIRECTION:IND_ASS(t166, t157, t88)----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-806, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-818, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM:SUM(1, t157, t173)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-830, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t173, --, t157)----
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.L #-830, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t157, 10, e124)----
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e124

* ----COPY:COPY(0, --, t175)----
	MOVE.L #-832, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e125 * ----GOTO:GOTO(--, --, e125)----

e124: *e124: SKIP
* ----COPY:COPY(-1, --, t175)----
	MOVE.L #-832, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e125: *e125: SKIP
* ----COPY:COPY(t175, --, t158)----
	MOVE.L #-808, A5
	ADD.L A6, A5
	MOVE.L #-832, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t157, 10, e126)----
	MOVE.L #-806, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e126

* ----COPY:COPY(0, --, t177)----
	MOVE.L #-834, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e127 * ----GOTO:GOTO(--, --, e127)----

e126: *e126: SKIP
* ----COPY:COPY(-1, --, t177)----
	MOVE.L #-834, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e127: *e127: SKIP
* ----COPY:COPY(t177, --, t161)----
	MOVE.L #-812, A5
	ADD.L A6, A5
	MOVE.L #-834, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e122 * ----GOTO:GOTO(--, --, e122)----

e123: *e123: SKIP
* ----POS:POS(0, t90, --)----
	MOVE.B #0, D5
	LSL.W #8, D5
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----SUB:SUB(1, 10, t181)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.W #10, D2
	SUB.W D1, D2
	MOVE.L #-836, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----WRITE:WRITE(0, t181, t88)----
	MOVE.W #0, D2
	MOVE.L #-836, A5
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

* ----SUM:SUM(1, t90, t184)----
	CLR.L D1
	CLR.L D2
	MOVE.W #1, D1
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-838, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY:COPY(t184, --, t90)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.L #-838, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t90, 10, e128)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e128

* ----COPY:COPY(0, --, t186)----
	MOVE.L #-840, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e129 * ----GOTO:GOTO(--, --, e129)----

e128: *e128: SKIP
* ----COPY:COPY(-1, --, t186)----
	MOVE.L #-840, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e129: *e129: SKIP
* ----COPY:COPY(t186, --, t149)----
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.L #-840, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT:IFLT(t90, 10, e130)----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.W #10, D2
	CMP.W D2, D1
	BLT.W e130

* ----COPY:COPY(0, --, t188)----
	MOVE.L #-842, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e131 * ----GOTO:GOTO(--, --, e131)----

e130: *e130: SKIP
* ----COPY:COPY(-1, --, t188)----
	MOVE.L #-842, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e131: *e131: SKIP
* ----COPY:COPY(t188, --, t152)----
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.L #-842, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e116 * ----GOTO:GOTO(--, --, e116)----

e117: *e117: SKIP
	SIMHALT *HALT(--, --, --)
	END START
