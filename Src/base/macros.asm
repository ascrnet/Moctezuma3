; Definition of general macros
;----------------------------------------

;pause routine
.macro pause ' '
	ift :1 == 0
	lda:cmp:req 20
	els
	lda 20
	add #:1
	cmp 20
	bne *-2
	eif
.endm

;4 player cleaning routine
.macro clear_pmg
	ldx #$00
	ldy #$04 
clearpmg
	lda #$00
clear
	sta PMDIR,x
	inx
	bne clearpmg
	inc clear+2
	dey
	bne clearpmg
.endm