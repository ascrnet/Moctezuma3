; vbi routine for character movements

vbi
	lda RTCLOK
	and #$08
	bne vbi_time
	ldx #$00
load_snake1
	lda snake01,x
	sta PMG0+205,x
	inx
	cpx #14
	bne load_snake1
	jmp end_vbi
vbi_time
	ldx #$00
load_snake2
	lda snake02,x
	sta PMG0+205,x
	inx
	cpx #14
	bne load_snake2
end_vbi
	jmp XITVBV	