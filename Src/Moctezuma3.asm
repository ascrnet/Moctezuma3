; Moctezuma 3
;-----------------------------------------
; Initial version by Abel Carrasco
;
;-----------------------------------------
	opt l-
	icl "base/system.asm"
	icl "base/game.asm"
	icl "base/macros.asm"
	opt l+

	icl "data/scr_titles.asm"
	icl "data/enemies.asm"

	org START 

begin 

; active vbi routine
	lda #7
	ldx #>vbi
	ldy #<vbi
	jsr SETVBV

	icl "titles.asm"

	icl "type_joy.asm"

	mva #$82 COLOR4

	

	jmp * 

	icl "vbi.asm"

	
	run begin
