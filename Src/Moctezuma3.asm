; Moctezuma 3
;-----------------------------------------
; Initial version by Abel Carrasco
;
;-----------------------------------------

	opt l-
	icl 'base/system.asm'
	icl 'base/game.asm'
	icl 'base/macros.asm'
	opt l+

	icl 'data/fonts.asm'
	icl 'data/scr_titles.asm'
	icl 'data/scr_game.asm'
	icl 'data/enemies.asm'
	icl 'data/explorer.asm'

	org START

begin 

; active vbi routine
	mva #1 VBI_FLAG
	lda #7
	ldx #>vbi
	ldy #<vbi
	jsr SETVBV

	icl "titles.asm"
	icl "type_joy.asm"
	icl "game.asm"

	jmp * 

	icl "vbi.asm"
	
	run begin