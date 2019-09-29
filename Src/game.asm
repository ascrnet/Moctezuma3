screen_game
	mva #0 VBI_FLAG
    mwa #dl_game SDLSTL
	mwa #dli2 VDSLST
    mva #>font_game CHBAS

    mva #$0e COLOR0
	mva #$0a COLOR1
	mva #$06 COLOR2
	mva #$36 COLOR3

	clear_pm0