
dl_game
:2	.by $70
	.by $70
	.by $44
	.word pantalla
:19	.by $04
	.by $10+$80
	.by $10
	.by $46
	.word score
	.by $10
	.by $44
	.word item
	.by $04
	.by $41
	.word dl_game

pantalla
	ins 'data/nivel0.map'

score
	dta d' ;:5   <:3   012345 '

item
	.by $61,$62,$69,$6a
:36 dta d' '
	.by $63,$64,$6b,$6c
:36 dta d' '

dli2
	phr
	ldx #$0
ndli2
	lda dlicolor2,x
	sta WSYNC
	sta $d01a
	inx
	cpx #13
	bne ndli2
	plr
	rti	

dlicolor2
	.by +$b0,9,2,2,2,2,2,2,2,2,2,9,0,0	