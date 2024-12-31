t0	DS.W 2
t1	DS.W 2
t2	DS.W 2
t3	DS.W 2
	ORG 	$8
START:
	MOVE.B #0, D1
	MOVE.W #12, D0
	TRAP #15
* ----COPY----
	LEA t1, A5
	MOVE.W #45, (A5)

* ----COPY----
	LEA t0, A5
	LEA t1, A4
	MOVE.W (A4), (A5)

* ----COPY----
	LEA t3, A5
	MOVE.W #45, (A5)

* ----COPY----
	LEA t2, A5
	LEA t3, A4
	MOVE.W (A4), (A5)

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL----

e1:
	SUB.L #130, SP

* ----COPY----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.L #-18, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO----

e2:
* ----COPY----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3:
* ----COPY----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e4

* ----COPY----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.L #-24, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-22, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e5 * ----GOTO----

e4:
* ----COPY----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.L #-30, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO----

e6:
* ----COPY----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7:
* ----COPY----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-34, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e9 * ----GOTO----

e8:
* ----COPY----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.L #-42, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO----

e10:
* ----COPY----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11:
* ----COPY----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.L #-48, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-46, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e13 * ----GOTO----

e12:
* ----COPY----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COPY----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.L #-54, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO----

e14:
* ----COPY----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15:
* ----COPY----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-58, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e17 * ----GOTO----

e16:
* ----COPY----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.L #-66, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO----

e18:
* ----COPY----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19:
* ----COPY----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.L #-72, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-70, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e21 * ----GOTO----

e20:
* ----COPY----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COPY----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.L #-78, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO----

e22:
* ----COPY----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23:
* ----COPY----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-82, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e25 * ----GOTO----

e24:
* ----COPY----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COPY----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.L #-90, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO----

e26:
* ----COPY----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27:
* ----COPY----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY----
	MOVE.L #-96, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.L #-96, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-94, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e29 * ----GOTO----

e28:
* ----COPY----
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COPY----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.L #-102, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO----

e30:
* ----COPY----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31:
* ----COPY----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY----
	MOVE.L #-108, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY----
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.L #-108, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-106, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e33 * ----GOTO----

e32:
* ----COPY----
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COPY----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.L #-114, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO----

e34:
* ----COPY----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35:
* ----COPY----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY----
	MOVE.L #-120, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY----
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.L #-120, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-118, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e37 * ----GOTO----

e36:
* ----COPY----
	MOVE.L #-126, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COPY----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.L #-126, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO----

e38:
* ----COPY----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39:
* ----COPY----
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY----
	MOVE.L #-132, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY----
	MOVE.L #-130, A5
	ADD.L A6, A5
	MOVE.L #-132, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-130, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e40:
e37:
e33:
e29:
e25:
e21:
e17:
e13:
e9:
e5:
* ----COPY----
	MOVE.L #-134, A5
	ADD.L A6, A5
	MOVE.L #-10, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----RETURN----
	MOVE.L #-134, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

e41:
	SUB.L #132, SP

* ----COPY----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.L #-14, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----NEGATE LOCAL VARIABLE----
	MOVE.L #-10, A5
	ADD.L A6, A5
	NEG.W (A5)

* ----COPY----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.L #-20, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO----

e42:
* ----COPY----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43:
* ----COPY----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.L #-26, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-24, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e45 * ----GOTO----

e44:
* ----COPY----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.L #-32, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO----

e46:
* ----COPY----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47:
* ----COPY----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e48

* ----COPY----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.L #-38, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e49 * ----GOTO----

e48:
* ----COPY----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.L #-44, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO----

e50:
* ----COPY----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51:
* ----COPY----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e52

* ----COPY----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.L #-50, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-48, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e53 * ----GOTO----

e52:
* ----COPY----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.L #-56, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO----

e54:
* ----COPY----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55:
* ----COPY----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e56

* ----COPY----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COPY----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.L #-62, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e57 * ----GOTO----

e56:
* ----COPY----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.L #-68, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO----

e58:
* ----COPY----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59:
* ----COPY----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e60

* ----COPY----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.L #-74, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-72, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e61 * ----GOTO----

e60:
* ----COPY----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.L #-80, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO----

e62:
* ----COPY----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63:
* ----COPY----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e64

* ----COPY----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COPY----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.L #-86, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e65 * ----GOTO----

e64:
* ----COPY----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.L #-92, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO----

e66:
* ----COPY----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67:
* ----COPY----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e68

* ----COPY----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COPY----
	MOVE.L #-96, A5
	ADD.L A6, A5
	MOVE.L #-98, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-96, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e69 * ----GOTO----

e68:
* ----COPY----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY----
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.L #-104, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO----

e70:
* ----COPY----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71:
* ----COPY----
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e72

* ----COPY----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COPY----
	MOVE.L #-108, A5
	ADD.L A6, A5
	MOVE.L #-110, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-108, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e73 * ----GOTO----

e72:
* ----COPY----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY----
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.L #-116, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO----

e74:
* ----COPY----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75:
* ----COPY----
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e76

* ----COPY----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COPY----
	MOVE.L #-120, A5
	ADD.L A6, A5
	MOVE.L #-122, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-120, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e77 * ----GOTO----

e76:
* ----COPY----
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY----
	MOVE.L #-126, A5
	ADD.L A6, A5
	MOVE.L #-128, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #0, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-126, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO----

e78:
* ----COPY----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79:
* ----COPY----
	MOVE.L #-130, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-130, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e80

* ----COPY----
	MOVE.L #-134, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COPY----
	MOVE.L #-132, A5
	ADD.L A6, A5
	MOVE.L #-134, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-132, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e80:
e77:
e73:
e69:
e65:
e61:
e57:
e53:
e49:
e45:
* ----COPY----
	MOVE.L #-136, A5
	ADD.L A6, A5
	MOVE.L #-10, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----RETURN----
	MOVE.L #-136, A5
	ADD.L A6, A5
	MOVE.W (A5), D4 * ----RETURN VALUE----
	MOVE.L A6, A7
	SUB.L #4, A7
	MOVE.L -8(A6), A6
	RTS

main:
	SUB.L #796, SP

* ----COPY----
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W #80, (A5)

* ----COPY----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.L #-524, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-526, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-522, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W #117, (A5)

* ----COPY----
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.L #-530, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-532, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-528, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.L #-536, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-534, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.L #-542, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-544, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-540, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-548, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.L #-548, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-550, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-546, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-554, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-552, A5
	ADD.L A6, A5
	MOVE.L #-554, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-556, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-556, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-552, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-560, A5
	ADD.L A6, A5
	MOVE.W #100, (A5)

* ----COPY----
	MOVE.L #-558, A5
	ADD.L A6, A5
	MOVE.L #-560, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-562, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-562, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-558, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-566, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY----
	MOVE.L #-564, A5
	ADD.L A6, A5
	MOVE.L #-566, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-568, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-568, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-564, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W #99, (A5)

* ----COPY----
	MOVE.L #-570, A5
	ADD.L A6, A5
	MOVE.L #-572, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-574, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-574, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-570, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-578, A5
	ADD.L A6, A5
	MOVE.W #105, (A5)

* ----COPY----
	MOVE.L #-576, A5
	ADD.L A6, A5
	MOVE.L #-578, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-580, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-580, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-576, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-584, A5
	ADD.L A6, A5
	MOVE.W #109, (A5)

* ----COPY----
	MOVE.L #-582, A5
	ADD.L A6, A5
	MOVE.L #-584, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-586, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-586, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-582, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-590, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY----
	MOVE.L #-588, A5
	ADD.L A6, A5
	MOVE.L #-590, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-592, A5
	ADD.L A6, A5
	MOVE.W #11, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-592, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-588, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-596, A5
	ADD.L A6, A5
	MOVE.W #108, (A5)

* ----COPY----
	MOVE.L #-594, A5
	ADD.L A6, A5
	MOVE.L #-596, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-598, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-598, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-594, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-602, A5
	ADD.L A6, A5
	MOVE.W #58, (A5)

* ----COPY----
	MOVE.L #-600, A5
	ADD.L A6, A5
	MOVE.L #-602, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-604, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-604, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-600, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-608, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-606, A5
	ADD.L A6, A5
	MOVE.L #-608, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-612, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-610, A5
	ADD.L A6, A5
	MOVE.L #-612, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS----
	MOVE.L #-606, A4
	ADD.L A6, A4
	MOVE.L #-610, A5
	ADD.L A6, A5
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY----
	MOVE.L #-616, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-614, A5
	ADD.L A6, A5
	MOVE.L #-616, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-620, A5
	ADD.L A6, A5
	MOVE.W #13, (A5)

* ----COPY----
	MOVE.L #-618, A5
	ADD.L A6, A5
	MOVE.L #-620, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----WRITE----
	MOVE.L #-614, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-618, A5
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

* ----READ----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-624, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY----
	MOVE.L #-622, A5
	ADD.L A6, A5
	MOVE.L #-624, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	LEA t0, A5
	MOVE.L #-622, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-626, A5
	ADD.L A6, A5
	LEA t0, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-628, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----SET VALUE FROM INDIRECTION----
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

* ----READ----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-632, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY----
	MOVE.L #-630, A5
	ADD.L A6, A5
	MOVE.L #-632, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	LEA t2, A5
	MOVE.L #-630, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-634, A5
	ADD.L A6, A5
	LEA t2, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-636, A5
	ADD.L A6, A5
	MOVE.W #15, (A5)

* ----SET VALUE FROM INDIRECTION----
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

* ----COPY----
	MOVE.L #-640, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----COPY----
	MOVE.L #-638, A5
	ADD.L A6, A5
	MOVE.L #-640, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-644, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-642, A5
	ADD.L A6, A5
	MOVE.L #-644, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS----
	MOVE.L #-638, A4
	ADD.L A6, A4
	MOVE.L #-642, A5
	ADD.L A6, A5
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY----
	MOVE.L #-648, A5
	ADD.L A6, A5
	MOVE.W #14, (A5)

* ----COPY----
	MOVE.L #-646, A5
	ADD.L A6, A5
	MOVE.L #-648, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-652, A5
	ADD.L A6, A5
	MOVE.W #15, (A5)

* ----COPY----
	MOVE.L #-650, A5
	ADD.L A6, A5
	MOVE.L #-652, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----WRITE----
	MOVE.L #-646, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-650, A5
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

* ----COPY----
	MOVE.L #-660, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-658, A5
	ADD.L A6, A5
	MOVE.L #-660, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-664, A5
	ADD.L A6, A5
	LEA t0, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK----
	MOVE.L #0, D6
	MOVE.L #-664, A5
	ADD.L A6, A5
MOVE_LOOP_t205_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t205_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL----

* ----POP----
	ADD.L #2, A7
	MOVE.L #-662, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----MUL----
	CLR.L D1
	CLR.L D2
	MOVE.L #-658, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-662, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-656, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY----
	MOVE.L #-668, A5
	ADD.L A6, A5
	LEA t2, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK----
	MOVE.L #0, D6
	MOVE.L #-668, A5
	ADD.L A6, A5
MOVE_LOOP_t207_1:
	MOVE.W (A5)+, -(A7)
	DBF D6, MOVE_LOOP_t207_1

	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR e41 * ----FUNCTION CALL----

* ----POP----
	ADD.L #2, A7
	MOVE.L #-666, A5
	ADD.L A6, A5
	MOVE.W D4, (A5)

* ----SUM----
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

* ----COPY----
	MOVE.L #-672, A5
	ADD.L A6, A5
	MOVE.W #80, (A5)

* ----COPY----
	MOVE.L #-670, A5
	ADD.L A6, A5
	MOVE.L #-672, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-674, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-674, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-670, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-678, A5
	ADD.L A6, A5
	MOVE.W #117, (A5)

* ----COPY----
	MOVE.L #-676, A5
	ADD.L A6, A5
	MOVE.L #-678, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-680, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-680, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-676, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-684, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY----
	MOVE.L #-682, A5
	ADD.L A6, A5
	MOVE.L #-684, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-686, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-686, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-682, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-690, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-688, A5
	ADD.L A6, A5
	MOVE.L #-690, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-692, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-692, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-688, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-696, A5
	ADD.L A6, A5
	MOVE.W #97, (A5)

* ----COPY----
	MOVE.L #-694, A5
	ADD.L A6, A5
	MOVE.L #-696, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-698, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-698, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-694, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-702, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-700, A5
	ADD.L A6, A5
	MOVE.L #-702, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-704, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-704, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-700, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-708, A5
	ADD.L A6, A5
	MOVE.W #108, (A5)

* ----COPY----
	MOVE.L #-706, A5
	ADD.L A6, A5
	MOVE.L #-708, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-710, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-710, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-706, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-714, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY----
	MOVE.L #-712, A5
	ADD.L A6, A5
	MOVE.L #-714, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-716, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-716, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-712, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-720, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY----
	MOVE.L #-718, A5
	ADD.L A6, A5
	MOVE.L #-720, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-722, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-722, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-718, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-726, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY----
	MOVE.L #-724, A5
	ADD.L A6, A5
	MOVE.L #-726, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-728, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-728, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-724, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-732, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY----
	MOVE.L #-730, A5
	ADD.L A6, A5
	MOVE.L #-732, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-734, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-734, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-730, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-738, A5
	ADD.L A6, A5
	MOVE.W #114, (A5)

* ----COPY----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.L #-738, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.W #11, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-740, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-736, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-744, A5
	ADD.L A6, A5
	MOVE.W #58, (A5)

* ----COPY----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.L #-744, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-746, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-742, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-750, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-748, A5
	ADD.L A6, A5
	MOVE.L #-750, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-754, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY----
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.L #-754, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS----
	MOVE.L #-748, A4
	ADD.L A6, A4
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY----
	MOVE.L #-758, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.L #-758, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-762, A5
	ADD.L A6, A5
	MOVE.W #12, (A5)

* ----COPY----
	MOVE.L #-760, A5
	ADD.L A6, A5
	MOVE.L #-762, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----WRITE----
	MOVE.L #-756, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-760, A5
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

* ----READ----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-766, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY----
	MOVE.L #-764, A5
	ADD.L A6, A5
	MOVE.L #-766, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-772, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.L #-772, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUB----
	CLR.L D1
	CLR.L D2
	MOVE.L #-770, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	SUB.W D1, D2
	MOVE.L #-768, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY----
	MOVE.L #-654, A5
	ADD.L A6, A5
	MOVE.L #-768, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-776, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-774, A5
	ADD.L A6, A5
	MOVE.L #-776, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e82:
* ----COPY----
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.L #-654, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LE----
	MOVE.L #-774, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-780, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D2, D1
	BLE.W e83

* ----COPY----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e84 * ----GOTO----

e83:
* ----COPY----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e84:
* ----COPY----
	MOVE.L #-782, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-778, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-782, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e85

* ----COPY----
	MOVE.L #-784, A5
	ADD.L A6, A5
	MOVE.L #-764, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-774, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-784, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----INCREMENT LOCAL VARIABLE----
	MOVE.L #-774, A5
	ADD.L A6, A5
	ADD.W #1, (A5)

	JMP e82 * ----GOTO----

e85:
* ----COPY----
	MOVE.L #-790, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-788, A5
	ADD.L A6, A5
	MOVE.L #-790, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-794, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY----
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.L #-794, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS----
	MOVE.L #-788, A4
	ADD.L A6, A4
	MOVE.L #-792, A5
	ADD.L A6, A5
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY----
	MOVE.L #-798, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.L #-798, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-800, A5
	ADD.L A6, A5
	MOVE.L #-654, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----WRITE----
	MOVE.L #-796, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MOVE.L #-800, A5
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

	SIMHALT
	END START
