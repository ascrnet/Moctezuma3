
dl_game
:2	.by $70
	.by $70
	.by $44
	.word pantalla
:19	.by $04
	.by $10+$80
	.by $10
	.by $47
	.word score
	.by $44
	.word item
	.by $04
	.by $41
	.word dl_game

pantalla
:20	.by 64,65
:20	.by 66,67
:11 dta d' '
	.by 68,69
:21	dta d' '
:3	.by 91,92
:11 dta d' '
	.by 68,69
:21	dta d' '
:3	.by 93,94
:11 dta d' '
	.by 109,110
:27	dta d' '
:11 dta d' '
	.by 68,69
:27	dta d' '
:11 dta d' '
	.by 68,69
:27	dta d' '

:10	.by 103,104
:20 dta d' '
:10	.by 105,106
	.by 70
:19 dta d' '
:4 dta d' '
	.by 86
:35	dta d' '
:4 dta d' '
	.by 86
:35	dta d' '
:4 dta d' '
	.by 86
:35	dta d' '
:4 dta d' '
	.by 86
	dta d' '
	.by 103
:6	.by 107
	.by 104
:30 dta d' '
	.by 86
	dta d' '
	.by 105
:6	.by 108
	.by 106
:30 dta d' '
	.by 86
:3  dta d' '
	.by 68,69
:30	dta d' '
:4 dta d' '
	.by 86
:3  dta d' '
	.by 73,74
:30	dta d' '
:4 dta d' '
	.by 86
:3  dta d' '
	.by 68,69
:30	dta d' '
:4 dta d' '
	.by 86
:3  dta d' '
	.by 68,69
:30	dta d' '
:10	.by 64,65
:4  dta d' '
:8	.by 64,65
:10	.by 66,67
:4  dta d' '
:8	.by 66,67

score
	dta d'3      000000       '

item
	.by 83,84,87,88
:36 dta d' '
	.by 81,82,89,90
:36 dta d' '

dli2
	phr
	ldx #$0
ndli2
	lda dlicolor2,x
	sta WSYNC
	sta $d01a
	inx
	cpx #20
	bne ndli2
	plr
	rti	

dlicolor2
	.by +$20 7 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 7 0 0	