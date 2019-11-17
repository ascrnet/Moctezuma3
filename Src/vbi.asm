; vbi routine for character movements

vbi
	lda VBI_FLAG
	bne vbi_cont
	jmp end_vbi
vbi_cont
	lda RTCLOK
	and #$08
	bne vbi_time
	ldx #$00
load_scorpion1
	lda scorpion01,x
	sta PMG1+164,x
	inx
	cpx #12
	bne load_scorpion1
	ldx #$00
snake_p0
	lda SNAKE_TYPE
	bne load_snake1
	jmp load_snake3

load_snake1
	lda snake01,x
	sta PMG0+205,x
	inx
	cpx #14
	bne load_snake1
	jmp end_vbi
load_snake3
	lda snake03,x
	sta PMG0+106,x
	inx
	cpx #14
	bne load_snake3
	jmp end_vbi

vbi_time
	ldx #$00
load_scorpion2
	lda scorpion02,x
	sta PMG1+164,x
	inx
	cpx #12
	bne load_scorpion2
	ldx #$00
snake_p1
	lda SNAKE_TYPE
	bne load_snake2
	jmp load_snake4
load_snake2
	lda snake02,x
	sta PMG0+205,x
	inx
	cpx #14
	bne load_snake2
	jmp end_vbi
load_snake4
	lda snake04,x
	sta PMG0+106,x
	inx
	cpx #14
	bne load_snake4

end_vbi
	jmp XITVBV	