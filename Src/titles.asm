; presentation screen activation

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
	mva #140 HPOSP0

	mva #0 DLILINE
	
	mva #>PMDIR PMBASE
	clear_pmg

	mva #3 GRACTL

