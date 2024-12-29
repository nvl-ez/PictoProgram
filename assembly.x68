t0	DS.W 1
t1	DS.W 70
t2	DS.W 1
t3	DS.W 1
t4	DS.W 1
t5	DS.W 1
t6	DS.W 1
t7	DS.W 1
t8	DS.W 1
	ORG 	$156
STAR:
* ----COPY----
	LEA t0, A5
	MOVE.W #-2, (A5)

* ----COPY----
	LEA t2, A5
	MOVE.W #97, (A5)

* ----COPY----
	LEA t3, A5
	MOVE.W #3, (A5)

* ----COPY----
	LEA t4, A5
	MOVE.W #0, (A5)

* ----COPY----
	LEA t6, A5
	MOVE.W #5, (A5)

* ----COPY----
	LEA t5, A5
	LEA t6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	LEA t8, A5
	MOVE.W #98, (A5)

* ----COPY----
	LEA t7, A5
	LEA t8, A4
	MOVE.W (A4), (A5)

	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL----

e1:
	SUB.L #4, SP

* ----COPY----
	MOVE.L #-4, A5
	ADD.L A6, A5
	MOVE.L #4, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #6, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-4, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e2

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e3 * ----GOTO----

e2:
* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e3:
* ----COPY----
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.L #-2, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e4:
	SUB.L #0, SP

e5:
	SUB.L #126, SP

* ----COPY----
	MOVE.L #-4, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-4, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-8, A5
	ADD.L A6, A5
	MOVE.L #-10, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-8, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e6

* ----COPY----
	MOVE.L #-6, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e7 * ----GOTO----

e6:
* ----COPY----
	MOVE.L #-6, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e7:
* ----COPY----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-6, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e8

* ----COPY----
	MOVE.L #-16, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.L #-16, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-14, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e9 * ----GOTO----

e8:
* ----COPY----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.L #-22, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e10

* ----COPY----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e11 * ----GOTO----

e10:
* ----COPY----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e11:
* ----COPY----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-18, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e12

* ----COPY----
	MOVE.L #-28, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.L #-28, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-26, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e13 * ----GOTO----

e12:
* ----COPY----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.L #-34, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e14

* ----COPY----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e15 * ----GOTO----

e14:
* ----COPY----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e15:
* ----COPY----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-30, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e16

* ----COPY----
	MOVE.L #-40, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.L #-40, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-38, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e17 * ----GOTO----

e16:
* ----COPY----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----COPY----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.L #-46, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e18

* ----COPY----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e19 * ----GOTO----

e18:
* ----COPY----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e19:
* ----COPY----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-42, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e20

* ----COPY----
	MOVE.L #-52, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.L #-52, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-50, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e21 * ----GOTO----

e20:
* ----COPY----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----COPY----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.L #-58, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e22

* ----COPY----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e23 * ----GOTO----

e22:
* ----COPY----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e23:
* ----COPY----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-54, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e24

* ----COPY----
	MOVE.L #-64, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.L #-64, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-62, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e25 * ----GOTO----

e24:
* ----COPY----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----COPY----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.L #-70, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e26

* ----COPY----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e27 * ----GOTO----

e26:
* ----COPY----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e27:
* ----COPY----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-66, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e28

* ----COPY----
	MOVE.L #-76, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.L #-76, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-74, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e29 * ----GOTO----

e28:
* ----COPY----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----COPY----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.L #-82, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e30

* ----COPY----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e31 * ----GOTO----

e30:
* ----COPY----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e31:
* ----COPY----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-78, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e32

* ----COPY----
	MOVE.L #-88, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.L #-88, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-86, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e33 * ----GOTO----

e32:
* ----COPY----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----COPY----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.L #-94, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e34

* ----COPY----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e35 * ----GOTO----

e34:
* ----COPY----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e35:
* ----COPY----
	MOVE.L #-96, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-90, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-96, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e36

* ----COPY----
	MOVE.L #-100, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.L #-100, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-98, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e37 * ----GOTO----

e36:
* ----COPY----
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.W #8, (A5)

* ----COPY----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.L #-106, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e38

* ----COPY----
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e39 * ----GOTO----

e38:
* ----COPY----
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e39:
* ----COPY----
	MOVE.L #-108, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-102, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-108, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e40

* ----COPY----
	MOVE.L #-112, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.L #-112, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-110, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e41 * ----GOTO----

e40:
* ----COPY----
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.W #9, (A5)

* ----COPY----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.L #-118, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #144, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e42

* ----COPY----
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e43 * ----GOTO----

e42:
* ----COPY----
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e43:
* ----COPY----
	MOVE.L #-120, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-114, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-120, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e44

* ----COPY----
	MOVE.L #-124, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.L #-124, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-122, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e44:
e41:
e37:
e33:
e29:
e25:
e21:
e17:
e13:
e9:
* ----COPY----
	MOVE.L #-126, A5
	ADD.L A6, A5
	MOVE.L #-2, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.L #-126, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e45:
	SUB.L #128, SP

* ----COPY----
	MOVE.L #-6, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-4, A5
	ADD.L A6, A5
	MOVE.L #-6, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-4, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----NEGATE LOCAL VARIABLE----
	MOVE.L #-2, A5
	ADD.L A6, A5
	NEG.W (A5)

* ----COPY----
	MOVE.L #-12, A5
	ADD.L A6, A5
	MOVE.W #48, (A5)

* ----COPY----
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.L #-12, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-10, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e46

* ----COPY----
	MOVE.L #-8, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e47 * ----GOTO----

e46:
* ----COPY----
	MOVE.L #-8, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e47:
* ----COPY----
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-8, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-14, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e48

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-16, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e49 * ----GOTO----

e48:
* ----COPY----
	MOVE.L #-24, A5
	ADD.L A6, A5
	MOVE.W #49, (A5)

* ----COPY----
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.L #-24, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-22, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e50

* ----COPY----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e51 * ----GOTO----

e50:
* ----COPY----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e51:
* ----COPY----
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-20, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-26, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e52

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-28, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e53 * ----GOTO----

e52:
* ----COPY----
	MOVE.L #-36, A5
	ADD.L A6, A5
	MOVE.W #50, (A5)

* ----COPY----
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.L #-36, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-34, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e54

* ----COPY----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e55 * ----GOTO----

e54:
* ----COPY----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e55:
* ----COPY----
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-32, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-38, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e56

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-40, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e57 * ----GOTO----

e56:
* ----COPY----
	MOVE.L #-48, A5
	ADD.L A6, A5
	MOVE.W #51, (A5)

* ----COPY----
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.L #-48, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-46, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e58

* ----COPY----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e59 * ----GOTO----

e58:
* ----COPY----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e59:
* ----COPY----
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-44, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-50, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e60

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-52, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e61 * ----GOTO----

e60:
* ----COPY----
	MOVE.L #-60, A5
	ADD.L A6, A5
	MOVE.W #52, (A5)

* ----COPY----
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.L #-60, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-58, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e62

* ----COPY----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e63 * ----GOTO----

e62:
* ----COPY----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e63:
* ----COPY----
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-56, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-62, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e64

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-64, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e65 * ----GOTO----

e64:
* ----COPY----
	MOVE.L #-72, A5
	ADD.L A6, A5
	MOVE.W #53, (A5)

* ----COPY----
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.L #-72, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-70, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e66

* ----COPY----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e67 * ----GOTO----

e66:
* ----COPY----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e67:
* ----COPY----
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-68, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-74, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e68

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-76, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e69 * ----GOTO----

e68:
* ----COPY----
	MOVE.L #-84, A5
	ADD.L A6, A5
	MOVE.W #54, (A5)

* ----COPY----
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.L #-84, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-82, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e70

* ----COPY----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e71 * ----GOTO----

e70:
* ----COPY----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e71:
* ----COPY----
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-80, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-86, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e72

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-88, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e73 * ----GOTO----

e72:
* ----COPY----
	MOVE.L #-96, A5
	ADD.L A6, A5
	MOVE.W #55, (A5)

* ----COPY----
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.L #-96, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-94, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e74

* ----COPY----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e75 * ----GOTO----

e74:
* ----COPY----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e75:
* ----COPY----
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-92, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-98, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e76

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-100, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e77 * ----GOTO----

e76:
* ----COPY----
	MOVE.L #-108, A5
	ADD.L A6, A5
	MOVE.W #56, (A5)

* ----COPY----
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.L #-108, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-106, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e78

* ----COPY----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e79 * ----GOTO----

e78:
* ----COPY----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e79:
* ----COPY----
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-104, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-110, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e80

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-112, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e81 * ----GOTO----

e80:
* ----COPY----
	MOVE.L #-120, A5
	ADD.L A6, A5
	MOVE.W #57, (A5)

* ----COPY----
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.L #-120, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE EQ----
	MOVE.L #4, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-118, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e82

* ----COPY----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e83 * ----GOTO----

e82:
* ----COPY----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e83:
* ----COPY----
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-116, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-122, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e84

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

* ----COPY----
	MOVE.L #-2, A5
	ADD.L A6, A5
	MOVE.L #-124, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e84:
e81:
e77:
e73:
e69:
e65:
e61:
e57:
e53:
e49:
* ----COPY----
	MOVE.L #-128, A5
	ADD.L A6, A5
	MOVE.L #-2, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #2, A5
	ADD.L A6, A5
	MOVE.L #-128, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

main:
	SUB.L #1560, SP

* ----COPY----
	MOVE.L #-516, A5
	ADD.L A6, A5
	MOVE.W #76, (A5)

* ----COPY----
	MOVE.L #-514, A5
	ADD.L A6, A5
	MOVE.L #-516, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-518, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-518, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-514, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-522, A5
	ADD.L A6, A5
	MOVE.W #101, (A5)

* ----COPY----
	MOVE.L #-520, A5
	ADD.L A6, A5
	MOVE.L #-522, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-524, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-520, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.W #110, (A5)

* ----COPY----
	MOVE.L #-526, A5
	ADD.L A6, A5
	MOVE.L #-528, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-530, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-530, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-526, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W #103, (A5)

* ----COPY----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.L #-534, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.W #3, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-536, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-532, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.W #116, (A5)

* ----COPY----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.L #-540, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W #4, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-542, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-546, A5
	ADD.L A6, A5
	MOVE.W #104, (A5)

* ----COPY----
	MOVE.L #-544, A5
	ADD.L A6, A5
	MOVE.L #-546, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-548, A5
	ADD.L A6, A5
	MOVE.W #5, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-548, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-544, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-552, A5
	ADD.L A6, A5
	MOVE.W #58, (A5)

* ----COPY----
	MOVE.L #-550, A5
	ADD.L A6, A5
	MOVE.L #-552, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-554, A5
	ADD.L A6, A5
	MOVE.W #6, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-554, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-550, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-558, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-556, A5
	ADD.L A6, A5
	MOVE.L #-558, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-560, A5
	ADD.L A6, A5
	MOVE.W #7, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-560, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-556, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-564, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-562, A5
	ADD.L A6, A5
	MOVE.L #-564, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-570, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-568, A5
	ADD.L A6, A5
	MOVE.L #-570, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e86:
* ----COPY----
	MOVE.L #-574, A5
	ADD.L A6, A5
	MOVE.L #-566, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT----
	MOVE.L #-568, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-574, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BPL.W e87

* ----COPY----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e88 * ----GOTO----

e87:
* ----COPY----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e88:
* ----COPY----
	MOVE.L #-576, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-572, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-576, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e89

* ----COPY----
	MOVE.L #-582, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY----
	MOVE.L #-580, A5
	ADD.L A6, A5
	MOVE.L #-582, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM----
	CLR.L D1
	CLR.L D2
	MOVE.L #-580, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	LEA t5, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-578, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY----
	LEA t5, A5
	MOVE.L #-578, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----INCREMENT LOCAL VARIABLE----
	MOVE.L #-568, A5
	ADD.L A6, A5
	ADD.W #1, (A5)

	JMP e86 * ----GOTO----

e89:
* ----COPY----
	MOVE.L #-588, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-586, A5
	ADD.L A6, A5
	MOVE.L #-588, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----DIV----
	LEA t5, A5
	MOVE.W (A5), D1
	MOVE.L #-586, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	DIVS.W D2, D1
	MOVE.L #-584, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

* ----COPY----
	MOVE.L #-594, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-592, A5
	ADD.L A6, A5
	MOVE.L #-594, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----MOD----
	CLR.L D1
	CLR.L D2
	LEA t5, A5
	MOVE.W (A5), D1
	MOVE.L #-592, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	DIVS.W D2, D1
	MOVE.L #-590, A5
	ADD.L A6, A5
	SWAP D1
	MOVE.W D1, (A5)

* ----COPY----
	MOVE.L #-740, A5
	ADD.L A6, A5
	MOVE.L #-584, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK----
	MOVE.L #0, D6
	MOVE.L #-740, A5
	ADD.L A6, A5
MOVE_LOOP_t193_1:
	MOVE.W (A5), -(A7)
	SUB.L #2, A5
	DBF D6, MOVE_LOOP_t193_1

* ----COPY LOCAL VARIABLE ON THE STACK----
	MOVE.L #69, D6
	MOVE.L #-734, A5
	ADD.L A6, A5
MOVE_LOOP_t190_1:
	MOVE.W (A5), -(A7)
	SUB.L #2, A5
	DBF D6, MOVE_LOOP_t190_1

	MOVE.L A7, A6
	JSR e5 * ----FUNCTION CALL----

* ----COPY----
	MOVE.L #-736, A5
	ADD.L A6, A5
	MOVE.L #-738, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-746, A5
	ADD.L A6, A5
	MOVE.L #-590, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY LOCAL VARIABLE ON THE STACK----
	MOVE.L #0, D6
	MOVE.L #-746, A5
	ADD.L A6, A5
MOVE_LOOP_t196_1:
	MOVE.W (A5), -(A7)
	SUB.L #2, A5
	DBF D6, MOVE_LOOP_t196_1

* ----COPY LOCAL VARIABLE ON THE STACK----
	MOVE.L #69, D6
	MOVE.L #-734, A5
	ADD.L A6, A5
MOVE_LOOP_t190_2:
	MOVE.W (A5), -(A7)
	SUB.L #2, A5
	DBF D6, MOVE_LOOP_t190_2

	MOVE.L A7, A6
	JSR e5 * ----FUNCTION CALL----

* ----COPY----
	MOVE.L #-742, A5
	ADD.L A6, A5
	MOVE.L #-744, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-748, A5
	ADD.L A6, A5
	MOVE.L #-736, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-750, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-750, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-748, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-752, A5
	ADD.L A6, A5
	MOVE.L #-742, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-754, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-512, A5
	ADD.L A6, A5
	MOVE.L #-754, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-752, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

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
	MOVE.L #-562, A5
	ADD.L A6, A5
	MOVE.L #-756, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-1274, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-1272, A5
	ADD.L A6, A5
	MOVE.L #-1274, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e90:
* ----COPY----
	MOVE.L #-1280, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-1278, A5
	ADD.L A6, A5
	MOVE.L #-1280, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT----
	MOVE.L #-1272, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1278, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BPL.W e91

* ----COPY----
	MOVE.L #-1276, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e92 * ----GOTO----

e91:
* ----COPY----
	MOVE.L #-1276, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e92:
* ----COPY----
	MOVE.L #-1282, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-1276, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1282, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e93

* ----COPY----
	MOVE.L #-1286, A5
	ADD.L A6, A5
	MOVE.W #32, (A5)

* ----COPY----
	MOVE.L #-1284, A5
	ADD.L A6, A5
	MOVE.L #-1286, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-1270, A5
	ADD.L A6, A5
	MOVE.L #-1272, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-1284, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----INCREMENT LOCAL VARIABLE----
	MOVE.L #-1272, A5
	ADD.L A6, A5
	ADD.W #1, (A5)

	JMP e90 * ----GOTO----

e93:
e94:
* ----COPY----
	MOVE.L #-1496, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-1494, A5
	ADD.L A6, A5
	MOVE.L #-1496, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT----
	MOVE.L #-1490, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1494, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BPL.W e95

* ----COPY----
	MOVE.L #-1492, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e96 * ----GOTO----

e95:
* ----COPY----
	MOVE.L #-1492, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e96:
* ----COPY----
	MOVE.L #-1498, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-1492, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1498, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e97

* ----COPY----
	MOVE.L #-1500, A5
	ADD.L A6, A5
	MOVE.L #-1490, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-1502, A5
	ADD.L A6, A5
	MOVE.L #-1490, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

e98:
* ----COPY----
	MOVE.L #-1508, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-1506, A5
	ADD.L A6, A5
	MOVE.L #-1508, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT----
	MOVE.L #-1500, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1506, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BPL.W e99

* ----COPY----
	MOVE.L #-1504, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e100 * ----GOTO----

e99:
* ----COPY----
	MOVE.L #-1504, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e100:
* ----COPY----
	MOVE.L #-1510, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-1504, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1510, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e101

* ----COPY----
	MOVE.L #-1512, A5
	ADD.L A6, A5
	MOVE.L #-1490, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-1518, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----MUL----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1490, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1518, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-1520, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1500, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1520, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-1522, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-1488, A5
	ADD.L A6, A5
	MOVE.L #-1522, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-1512, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-1528, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-1526, A5
	ADD.L A6, A5
	MOVE.L #-1528, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1526, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1500, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-1524, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY----
	MOVE.L #-1500, A5
	ADD.L A6, A5
	MOVE.L #-1524, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e98 * ----GOTO----

e101:
e102:
* ----COPY----
	MOVE.L #-1534, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----COPY----
	MOVE.L #-1532, A5
	ADD.L A6, A5
	MOVE.L #-1534, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COMPARE LT----
	MOVE.L #-1502, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1532, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BPL.W e103

* ----COPY----
	MOVE.L #-1530, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

	JMP e104 * ----GOTO----

e103:
* ----COPY----
	MOVE.L #-1530, A5
	ADD.L A6, A5
	MOVE.W #-1, (A5)

e104:
* ----COPY----
	MOVE.L #-1536, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COMPARE EQ----
	MOVE.L #-1530, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1536, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	CMP.W D1, D2
	BEQ.W e105

* ----COPY----
	MOVE.L #-1538, A5
	ADD.L A6, A5
	MOVE.L #-1490, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-1544, A5
	ADD.L A6, A5
	MOVE.W #10, (A5)

* ----MUL----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1502, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1544, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	MULS.W D1, D2
	MOVE.L #-1546, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SUM----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1490, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1546, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-1548, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----SET VALUE FROM INDIRECTION----
	MOVE.L #-1488, A5
	ADD.L A6, A5
	MOVE.L #-1548, A4
	ADD.L A6, A4
	CLR.L D1
	MOVE.W (A4), D1
	MULU.W #2, D1
	EXT.L D1
	ADD.L D1, A5
	MOVE.L #-1538, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-1554, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-1552, A5
	ADD.L A6, A5
	MOVE.L #-1554, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1552, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1502, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-1550, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY----
	MOVE.L #-1502, A5
	ADD.L A6, A5
	MOVE.L #-1550, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e102 * ----GOTO----

e105:
* ----COPY----
	MOVE.L #-1560, A5
	ADD.L A6, A5
	MOVE.W #1, (A5)

* ----COPY----
	MOVE.L #-1558, A5
	ADD.L A6, A5
	MOVE.L #-1560, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----SUM----
	CLR.L D1
	CLR.L D2
	MOVE.L #-1558, A5
	ADD.L A6, A5
	MOVE.W (A5), D1
	MOVE.L #-1490, A5
	ADD.L A6, A5
	MOVE.W (A5), D2
	ADD.W D1, D2
	MOVE.L #-1556, A5
	ADD.L A6, A5
	MOVE.W D2, (A5)

* ----COPY----
	MOVE.L #-1490, A5
	ADD.L A6, A5
	MOVE.L #-1556, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

	JMP e94 * ----GOTO----

e97:
	END STAR
