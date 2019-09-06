
screen_title

	mwa #dl_title SDLSTL
	mwa #dli VDSLST
	mva #62 SDMCTL
	mva #$c0 NMIEN
	mva #$f COLOR1
	mva #$82 COLOR2
	mva #32 GPRIOR
	
	mva #>font_title CHBAS

	mva #$22 COLOR0
	mva #$b8 PCOLR0
	mva #2 SIZEP0
	mva #125 HPOSP0

	mva #0 DLILINE
	
	mva #>PMDIR PMBASE
	clear_pmg

	MVA #3 GRACTL


;snake motion test	
anima
	ldx #$00
lee_serpiente
	lda snake01,x
	sta PMG0+200,x
	inx
	cpx #14
	bne lee_serpiente
	ldx #$0
	pause 10

lee_serpiente2
	lda snake02,x
	sta PMG0+200,x
	inx
	cpx #14
	bne lee_serpiente2
	pause 10

	jmp anima
