; Memory addresses of the game
;----------------------------------

; Start of the game
START = $2000

; Graphics
GRAPH = $4000

; Player/Missile
PMDIR = $7800
PMG0 = PMDIR+1024 
PMG1 = PMDIR+1280
PMG2 = PMDIR+1536
PMG3 = PMDIR+1792

; Character set memory
FONT01 = $A000
FONT02 = $A400

; Game variables
    ORG $0
VBI_FLAG .ds 1
DLI_FLAG .ds 1
JB2_FLAG .ds 1
SNAKE_TYPE .ds 1
SCORPION_TYPE .ds 1

