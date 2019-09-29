; joystick type detection
;---------------------------

readjoy
    lda PADDL0
    and PADDL1
    cmp #1
    bne joynormal
    mva #175 HPOSP0
    mva #1 JB2_FLAG
    jmp readbutton
joynormal
	mva #140 HPOSP0
    mva #0 JB2_FLAG
readbutton
    lda STRIG0
    bne readjoy
end_readjoy


