; joystick type detection
;---------------------------

readjoy
    lda PADDL0
    and PADDL1
    cmp #1
    bne joynormal
    mva #175 HPOSP0
    jmp readbutton
joynormal
	mva #140 HPOSP0
readbutton
    lda STRIG0
    bne readjoy
end_readjoy


