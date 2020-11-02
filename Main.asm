; do not delete this code; it is required to run the program.
; 10 SYS (2064)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $32, $30, $36, $34, $29, $00, $00, $00



; program entrance
*=$0810
PROGRAM_START
; start your code here        

; Copies sprite data
        LDX #64

loop_sprite_data
        LDA ANT_DATA,X
        STA $2E80,X
        DEX
        BNE loop_sprite_data


; Sets the sprite pointer for sprite 0
        LDA #$2E80/64
        STA $07F8


; Sets ants colors
        LDX #7

loop_set_ants_color
        LDA #$00
        STA $D027,X
        DEX
        BNE loop_set_ants_color


; Sets ants x locations
        LDX #15
        LDA #100
        
loop_set_ants_x_location
        STA $D000,X ; x coordinate
        DEX
        DEX
        BNE loop_set_ants_x_location


; Sets ants y locations
        
        

; Sets the first sprite's color
        ;LDA #$00 ; loads black
        ;STA $D027 ; sets the first sprite's color to the above color

; Sets the first sprite's location
        ;LDA #100
        ;STA $D000 ; x coord
        ;STA $D001 ; y coord


        LDA #1
        STA $D015


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

