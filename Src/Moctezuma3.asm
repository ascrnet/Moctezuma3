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

	//title test screen ;)
	icl "titles.asm"
	jmp * 

	
	run begin
