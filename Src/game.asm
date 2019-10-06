screen_game
;	mva #0 VBI_FLAG
	clear_pm0

    mwa #dl_game SDLSTL
	mwa #dli2 VDSLST
    mva #>font_game CHBAS

    mva #$0e COLOR0
	mva #$0a COLOR1
	mva #$06 COLOR2
	mva #$36 COLOR3

	lda #110
	sta HPOSP0
	
	mva #0 SNAKE_TYPE

	mva #$34 PCOLR2
	mva #$1c PCOLR3

	lda #120
	sta HPOSP2
	sta HPOSP3

	lda #2
	sta SIZEP2 
	sta SIZEP3

	ldx #$00
load_exp
	lda explorer11,x
	sta PMG2+155,x
	inx
	cpx #20
	bne load_exp
	ldx #$00
load_exp2
	lda explorer21,x
	sta PMG3+155,x
	inx
	cpx #20
	bne load_exp2