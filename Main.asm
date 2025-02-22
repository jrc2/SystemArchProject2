; do not delete this code; it is required to run the program.
; 10 SYS (2064)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $32, $30, $36, $34, $29, $00, $00, $00



; program entrance
*=$0810
PROGRAM_START
; start your code here        

; Copies sprite data
        LDX #63

loop_sprite_data
        LDA ANT_DATA,X
        STA $2E80,X
        DEX
        BPL loop_sprite_data


; Sets the sprite pointers
        LDA #$2E80/64
        LDX #7
loop_set_sprite_pointers
        STA $07F8,X
        DEX
        BPL loop_set_sprite_pointers
        

; Sets ants colors
        LDX #7
        LDY #$09
loop_set_sprite_colors
        TYA
        STA $D027,X
        DEX
        DEY
        BPL loop_set_sprite_colors


; Sets the sprites' x locations
        LDX #14
        LDA #100
        
loop_set_sprite_x_locations
        STA $D000,X
        DEX
        DEX
        BPL loop_set_sprite_x_locations



; Sets the sprites' y locations
        LDA #60
        STA $D001 ; y coord 1st sprite
        LDA #80
        STA $D003 ; y coord 2nd sprite
        LDA #100
        STA $D005 ; y coord 3rd sprite
        LDA #120
        STA $D007 ; y coord 4th sprite
        LDA #140
        STA $D009 ; y coord 5th sprite
        LDA #160
        STA $D00B ; y coord 6th sprite
        LDA #180
        STA $D00D ; y coord 7th sprite
        LDA #200
        STA $D00F ; y coord 8th sprite



; Makes all sprites visible
        LDA #255
        STA $D015


; Change background
        LDA #$00
        STA $D021


; do not write code past this line
; the following rts instruction is required to exit the program
        rts

; pixel data for the ant
ANT_DATA
 BYTE $00,$00,$00
 BYTE $00,$00,$00
 BYTE $00,$00,$00
 BYTE $00,$00,$01
 BYTE $00,$00,$61
 BYTE $00,$00,$11
 BYTE $00,$00,$0E
 BYTE $00,$00,$1F
 BYTE $00,$00,$1F
 BYTE $0F,$1F,$B5
 BYTE $10,$A0,$7F
 BYTE $2F,$CF,$DF
 BYTE $5F,$DF,$BF
 BYTE $5F,$DF,$BA
 BYTE $BF,$DF,$A9
 BYTE $BF,$BF,$C4
 BYTE $FA,$1F,$A0
 BYTE $92,$12,$90
 BYTE $21,$24,$88
 BYTE $21,$24,$48
 BYTE $21,$24,$44
 BYTE $00

