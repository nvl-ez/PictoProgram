	ORG 	$0
STAR:
	MOVE.L A6, -8(A7)
	MOVE.L A7, A6
	JSR main * ----FUNCTION CALL----

main:
	SUB.L #538, SP

* ----READ----
	CLR.W D1
	MOVE.W #5, D0
	TRAP #15
	MOVE.L #-524, A5
	ADD.L A6, A5
	MOVE.W D1, (A5)

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
	MOVE.W #5, (A5)

* ----COPY----
	MOVE.L #-528, A5
	ADD.L A6, A5
	MOVE.L #-530, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-534, A5
	ADD.L A6, A5
	MOVE.W #2, (A5)

* ----COPY----
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.L #-534, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----POS----
	MOVE.L #-528, A4
	ADD.L A6, A4
	MOVE.L #-532, A5
	ADD.L A6, A5
	MOVE.B 1(A4), D5
	LSL.W #8, D5
	MOVE.B 1(A5), D5
	MOVE.W D5, D1
	MOVE.W #11, D0
	TRAP #15
* ----COPY----
	MOVE.L #-538, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-536, A5
	ADD.L A6, A5
	MOVE.L #-538, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----COPY----
	MOVE.L #-542, A5
	ADD.L A6, A5
	MOVE.W #0, (A5)

* ----COPY----
	MOVE.L #-540, A5
	ADD.L A6, A5
	MOVE.L #-542, A4
	ADD.L A6, A4
	MOVE.W (A4), (A5)

* ----WRITE----
	SIMHALT
	END STAR