org $808000

;===================================================================================================

ROUTINE_808000:
#_808000: LDA.b #$01
#_808002: STA.w NMITIMEN
#_808005: STA.b $97

#_808007: STZ.w WRIO

#_80800A: STZ.w WRMPYA
#_80800D: STZ.w WRMPYB

#_808010: STZ.w WRDIVL
#_808013: STZ.w WRDIVH
#_808016: STZ.w WRDIVB

#_808019: STZ.w HTIME

#_80801C: STZ.b $9A

#_80801E: STZ.w HTIMEH
#_808021: STZ.b $9B

#_808023: STZ.w VTIME
#_808026: STZ.b $98

#_808028: STZ.w VTIMEH
#_80802B: STZ.b $99

#_80802D: STZ.w MDMAEN
#_808030: STZ.w HDMAEN
#_808033: STZ.b $9C
#_808035: RTS

;===================================================================================================

ROUTINE_808036:
#_808036: SEP #$30
#_808038: LDA.b #$80
#_80803A: STA.w INIDISP
#_80803D: STA.b $6A
#_80803F: LDA.b #$02
#_808041: STA.w OBSEL
#_808044: STA.b $6B
#_808046: STZ.w OAMADDR
#_808049: STZ.b $6C
#_80804B: LDA.b #$80
#_80804D: STA.w OAMADDRH
#_808050: STA.b $6D
#_808052: STZ.w OAMDATA
#_808055: STZ.w OAMDATA
#_808058: LDA.b #$09
#_80805A: STA.w BGMODE
#_80805D: STA.b $6E
#_80805F: LDA.b #$07
#_808061: STA.w MOSAIC
#_808064: STA.b $6F
#_808066: LDA.b #$01
#_808068: STA.w BG1SC
#_80806B: STA.b $70
#_80806D: LDA.b #$09
#_80806F: STA.w BG2SC
#_808072: STA.b $71
#_808074: LDA.b #$79
#_808076: STA.w BG3SC
#_808079: STA.b $72
#_80807B: LDA.b #$01
#_80807D: STZ.w BG4SC
#_808080: STZ.b $73
#_808082: LDA.b #$13
#_808084: STA.w BG12NBA
#_808087: STA.b $74
#_808089: LDA.b #$07
#_80808B: STA.w BG34NBA
#_80808E: STA.b $75
#_808090: STZ.w BG1HOFS
#_808093: STZ.w BG1HOFS
#_808096: STZ.w BG1VOFS
#_808099: STZ.w BG1VOFS
#_80809C: STZ.w BG2HOFS
#_80809F: STZ.w BG2HOFS
#_8080A2: STZ.w BG2VOFS
#_8080A5: STZ.w BG2VOFS
#_8080A8: STZ.w BG3HOFS
#_8080AB: STZ.w BG3HOFS
#_8080AE: STZ.w BG3VOFS
#_8080B1: STZ.w BG3VOFS
#_8080B4: STZ.w BG4HOFS
#_8080B7: STZ.w BG4HOFS
#_8080BA: STZ.w BG4VOFS
#_8080BD: STZ.w BG4VOFS
#_8080C0: STZ.w VMAIN
#_8080C3: STZ.w M7SEL
#_8080C6: STZ.b $76
#_8080C8: STZ.w M7A
#_8080CB: STZ.w M7B
#_8080CE: STZ.w M7C
#_8080D1: STZ.w M7D
#_8080D4: STZ.w M7X
#_8080D7: STZ.w M7Y
#_8080DA: LDA.b #$00
#_8080DC: STA.w W12SEL
#_8080DF: STA.b $77
#_8080E1: LDA.b #$00
#_8080E3: STA.w W34SEL
#_8080E6: STA.b $78
#_8080E8: STZ.w WOBJSEL
#_8080EB: STZ.b $79
#_8080ED: LDA.b #$00
#_8080EF: STA.w WINDOW1L
#_8080F2: STA.b $7A
#_8080F4: LDA.b #$F8
#_8080F6: STA.w WINDOW1R
#_8080F9: STA.b $7B
#_8080FB: STZ.w WINDOW2L
#_8080FE: STZ.b $7C
#_808100: STZ.w WINDOW2R
#_808103: STZ.b $7D
#_808105: STZ.w WBGLOG
#_808108: STZ.b $7E
#_80810A: STZ.w WOBJLOG
#_80810D: STZ.b $7F
#_80810F: LDA.b #$11
#_808111: STA.w TM
#_808114: STA.b $80
#_808116: STA.w TMW
#_808119: STA.b $82
#_80811B: LDA.b #$02
#_80811D: STA.w TS
#_808120: STA.b $81
#_808122: STA.w TSW
#_808125: STA.b $83
#_808127: LDA.b #$02
#_808129: STA.w CGWSEL
#_80812C: STA.b $84
#_80812E: LDA.b #$00
#_808130: STA.w CGADSUB
#_808133: STA.b $85
#_808135: LDA.b #$E0
#_808137: STA.w COLDATA
#_80813A: LDA.b #$E0
#_80813C: STA.w COLDATA
#_80813F: STZ.b $86
#_808141: LDA.b #$80
#_808143: STA.w COLDATA
#_808146: STA.b $87
#_808148: LDA.b #$42
#_80814A: STA.w COLDATA
#_80814D: STA.b $88
#_80814F: LDA.b #$43
#_808151: STA.w COLDATA
#_808154: STA.b $89
#_808156: LDA.b #$00
#_808158: STA.w SETINI
#_80815B: STA.b $8A
#_80815D: RTS

;===================================================================================================

NMI_UpdateRegisters:
#_80815E: PHP
#_80815F: PHB
#_808160: PHK
#_808161: PLB
#_808162: SEP #$20
#_808164: LDA.b $6A
#_808166: STA.w INIDISP
#_808169: LDA.b $6B
#_80816B: STA.w OBSEL
#_80816E: LDA.b $6E
#_808170: STA.w BGMODE
#_808173: AND.b #$07
#_808175: CMP.b #$07
#_808177: BNE .not_mode_7

#_808179: LDA.b $8F
#_80817B: STA.w M7A
#_80817E: LDA.b $90
#_808180: STA.w M7A
#_808183: LDA.b $91
#_808185: STA.w M7B
#_808188: LDA.b $92
#_80818A: STA.w M7B
#_80818D: LDA.b $93
#_80818F: STA.w M7C
#_808192: LDA.b $94
#_808194: STA.w M7C
#_808197: LDA.b $95
#_808199: STA.w M7D
#_80819C: LDA.b $96
#_80819E: STA.w M7D
#_8081A1: LDA.b $8B
#_8081A3: STA.w M7X
#_8081A6: LDA.b $8C
#_8081A8: STA.w M7X
#_8081AB: LDA.b $8D
#_8081AD: STA.w M7Y
#_8081B0: LDA.b $8E
#_8081B2: STA.w M7Y

.not_mode_7
#_8081B5: LDA.b $6F
#_8081B7: STA.w MOSAIC
#_8081BA: LDA.b $70
#_8081BC: STA.w BG1SC
#_8081BF: LDA.b $71
#_8081C1: STA.w BG2SC
#_8081C4: LDA.b $72
#_8081C6: STA.w BG3SC
#_8081C9: LDA.b $73
#_8081CB: STA.w BG4SC
#_8081CE: LDA.b $74
#_8081D0: STA.w BG12NBA
#_8081D3: LDA.b $75
#_8081D5: STA.w BG34NBA
#_8081D8: LDA.b $76
#_8081DA: STA.w M7SEL
#_8081DD: LDA.b $77
#_8081DF: STA.w W12SEL
#_8081E2: LDA.b $78
#_8081E4: STA.w W34SEL
#_8081E7: LDA.b $79
#_8081E9: STA.w WOBJSEL
#_8081EC: LDA.b $7A
#_8081EE: STA.w WINDOW1L
#_8081F1: LDA.b $7B
#_8081F3: STA.w WINDOW1R
#_8081F6: LDA.b $7C
#_8081F8: STA.w WINDOW2L
#_8081FB: LDA.b $7D
#_8081FD: STA.w WINDOW2R
#_808200: LDA.b $7E
#_808202: STA.w WBGLOG
#_808205: LDA.b $7F
#_808207: STA.w WOBJLOG
#_80820A: LDA.b $80
#_80820C: STA.w TM
#_80820F: LDA.b $82
#_808211: STA.w TMW
#_808214: LDA.b $81
#_808216: STA.w TS
#_808219: LDA.b $83
#_80821B: STA.w TSW
#_80821E: LDA.b $84
#_808220: STA.w CGWSEL
#_808223: LDA.b $85
#_808225: STA.w CGADSUB
#_808228: LDA.b $86
#_80822A: STA.w COLDATA
#_80822D: LDA.b $8A
#_80822F: STA.w SETINI
#_808232: LDA.b $E3
#_808234: STA.w BG1HOFS
#_808237: LDA.b $E4
#_808239: STA.w BG1HOFS
#_80823C: LDA.b $E5
#_80823E: STA.w BG1VOFS
#_808241: LDA.b $E6
#_808243: STA.w BG1VOFS
#_808246: LDA.b $E7
#_808248: STA.w BG2HOFS
#_80824B: LDA.b $E8
#_80824D: STA.w BG2HOFS
#_808250: LDA.b $E9
#_808252: STA.w BG2VOFS
#_808255: LDA.b $EA
#_808257: STA.w BG2VOFS
#_80825A: LDA.b $EB
#_80825C: STA.w BG3HOFS
#_80825F: LDA.b $EC
#_808261: STA.w BG3HOFS
#_808264: LDA.b $ED
#_808266: STA.w BG3VOFS
#_808269: LDA.b $EE
#_80826B: STA.w BG3VOFS
#_80826E: LDA.b $EF
#_808270: STA.w BG4HOFS
#_808273: LDA.b $F0
#_808275: STA.w BG4HOFS
#_808278: LDA.b $F1
#_80827A: STA.w BG4VOFS
#_80827D: LDA.b $F2
#_80827F: STA.w BG4VOFS
#_808282: PLB
#_808283: PLP
#_808284: RTL

;===================================================================================================

AdvanceFraming:
#_808285: INC.w $0630

#_808288: LDA.w $0631
#_80828B: CLC
#_80828C: ADC.b #$03
#_80828E: STA.w $0631

#_808291: RTL

;===================================================================================================

CODE_808292:
#_808292: PHP
#_808293: PHB
#_808294: PHK
#_808295: PLB
#_808296: SEP #$30
#_808298: INC.w $0632
#_80829B: LDA.w $0632
#_80829E: CMP.b #$37
#_8082A0: BCC CODE_8082AA
#_8082A2: JSR ROUTINE_8082F9
#_8082A5: LDA.b #$00
#_8082A7: STA.w $0632

CODE_8082AA:
#_8082AA: TAY
#_8082AB: LDA.w $0633,Y
#_8082AE: PLB
#_8082AF: PLP
#_8082B0: RTL

;===================================================================================================

ROUTINE_8082B1:
#_8082B1: PHP
#_8082B2: PHB
#_8082B3: PHK
#_8082B4: PLB
#_8082B5: SEP #$30
#_8082B7: LDA.w $0630
#_8082BA: AND.b #$1F
#_8082BC: STA.b $12
#_8082BE: STA.w $0669
#_8082C1: LDA.b #$01
#_8082C3: STA.b $14
#_8082C5: LDY.b #$14
#_8082C7: LDX.b #$36

CODE_8082C9:
#_8082C9: LDA.b $14
#_8082CB: STA.w $0633,Y
#_8082CE: LDA.b $12
#_8082D0: SEC
#_8082D1: SBC.b $14
#_8082D3: BPL CODE_8082D8
#_8082D5: CLC
#_8082D6: ADC.b #$B4

CODE_8082D8:
#_8082D8: STA.b $14
#_8082DA: LDA.w $0633,Y
#_8082DD: STA.b $12
#_8082DF: TYA
#_8082E0: CLC
#_8082E1: ADC.b #$15
#_8082E3: CMP.b #$37
#_8082E5: BCC CODE_8082E9
#_8082E7: SBC.b #$37

CODE_8082E9:
#_8082E9: TAY
#_8082EA: DEX
#_8082EB: BNE CODE_8082C9
#_8082ED: JSR ROUTINE_8082F9
#_8082F0: JSR ROUTINE_8082F9
#_8082F3: JSR ROUTINE_8082F9
#_8082F6: PLB
#_8082F7: PLP
#_8082F8: RTL

;===================================================================================================

ROUTINE_8082F9:
#_8082F9: LDY.b #$00

CODE_8082FB:
#_8082FB: TYA
#_8082FC: STA.b $12
#_8082FE: CMP.b #$18
#_808300: BCS CODE_808306
#_808302: ADC.b #$1F
#_808304: BCC CODE_808308

CODE_808306:
#_808306: SBC.b #$18

CODE_808308:
#_808308: TAY
#_808309: LDA.w $0633,Y
#_80830C: STA.b $14
#_80830E: LDY.b $12
#_808310: LDA.w $0633,Y
#_808313: SEC
#_808314: SBC.b $14
#_808316: BCS CODE_80831A
#_808318: ADC.b #$B4

CODE_80831A:
#_80831A: STA.w $0633,Y
#_80831D: INY
#_80831E: CPY.b #$37
#_808320: BNE CODE_8082FB
#_808322: RTS

;===================================================================================================

WaitForNMI:
#_808323: PHP

#_808324: PHB
#_808325: PHK
#_808326: PLB

#_808327: SEP #$30

#_808329: LDA.b #$01
#_80832B: STA.b $DD

.wait
#_80832D: LDA.b $DD
#_80832F: BNE .wait

#_808331: PLB
#_808332: PLP

#_808333: RTL

;===================================================================================================

EnableNMI_808334:
#_808334: PHP
#_808335: PHB
#_808336: PHK
#_808337: PLB
#_808338: SEP #$20
#_80833A: LDA.b $97
#_80833C: ORA.b #$80
#_80833E: STA.w NMITIMEN
#_808341: STA.b $97
#_808343: PLB
#_808344: PLP
#_808345: RTL

;===================================================================================================

ROUTINE_808346:
#_808346: PHP
#_808347: PHB
#_808348: PHK
#_808349: PLB
#_80834A: SEP #$20
#_80834C: LDA.b $97
#_80834E: AND.b #$7F
#_808350: STA.w NMITIMEN
#_808353: STA.b $97
#_808355: PLB
#_808356: PLP
#_808357: RTL

;===================================================================================================

WaitForNMIWithFBlank:
#_808358: PHP
#_808359: PHB
#_80835A: PHK
#_80835B: PLB
#_80835C: SEP #$20
#_80835E: LDA.b $6A
#_808360: ORA.b #$80
#_808362: STA.b $6A
#_808364: JSL WaitForNMI
#_808368: PLB
#_808369: PLP
#_80836A: RTL

;===================================================================================================

WaitForNMIWithoutFBlank:
#_80836B: PHP
#_80836C: PHB
#_80836D: PHK
#_80836E: PLB
#_80836F: SEP #$20
#_808371: LDA.b $6A
#_808373: AND.b #$7F
#_808375: STA.b $6A
#_808377: JSL WaitForNMI
#_80837B: PLB
#_80837C: PLP
#_80837D: RTL

;===================================================================================================

EnableHIRQ:
#_80837E: PHP
#_80837F: PHB
#_808380: PHK
#_808381: PLB
#_808382: SEP #$20
#_808384: LDA.b $97
#_808386: ORA.b #$10
#_808388: STA.b $97
#_80838A: STA.w NMITIMEN
#_80838D: PLB
#_80838E: PLP
#_80838F: RTL

;===================================================================================================

DisableHIRQ:
#_808390: PHP
#_808391: PHB
#_808392: PHK
#_808393: PLB
#_808394: SEP #$20
#_808396: LDA.b $97
#_808398: AND.b #$EF
#_80839A: STA.w NMITIMEN
#_80839D: STA.b $97
#_80839F: PLB
#_8083A0: PLP
#_8083A1: RTL

;===================================================================================================

EnableVIRQ:
#_8083A2: PHP
#_8083A3: PHB
#_8083A4: PHK
#_8083A5: PLB
#_8083A6: SEP #$20
#_8083A8: LDA.b $97
#_8083AA: ORA.b #$20
#_8083AC: STA.w NMITIMEN
#_8083AF: STA.b $97
#_8083B1: PLB
#_8083B2: PLP
#_8083B3: RTL

;===================================================================================================

DisableVIRQ:
#_8083B4: PHP
#_8083B5: PHB
#_8083B6: PHK
#_8083B7: PLB
#_8083B8: SEP #$20
#_8083BA: LDA.b $97
#_8083BC: AND.b #$DF
#_8083BE: STA.w NMITIMEN
#_8083C1: STA.b $97
#_8083C3: PLB
#_8083C4: PLP
#_8083C5: RTL

;===================================================================================================

NMI_TransferOAM:
#_8083C6: LDA.b #$00
#_8083C8: STA.w DMA0MODE
#_8083CB: LDA.b #OAMDATA
#_8083CD: STA.w DMA0PORT
#_8083D0: LDA.b #$10
#_8083D2: STA.w DMA0ADDR
#_8083D5: LDA.b #$02
#_8083D7: STA.w DMA0ADDRH
#_8083DA: LDA.b #$00
#_8083DC: STA.w DMA0ADDRB
#_8083DF: LDA.b #$20
#_8083E1: STA.w DMA0SIZE
#_8083E4: LDA.b #$02
#_8083E6: STA.w DMA0SIZEH
#_8083E9: LDA.b #$01
#_8083EB: STA.w MDMAEN
#_8083EE: LDA.b $6D
#_8083F0: STA.w OAMADDRH
#_8083F3: LDA.b $6C
#_8083F5: STA.w OAMADDR

;---------------------------------------------------------------------------------------------------

#EXIT_8083F8:
#_8083F8: RTL

;===================================================================================================

ROUTINE_8083F9:
#_8083F9: SEP #$30
#_8083FB: LDA.w $0200
#_8083FE: BEQ EXIT_8083F8
#_808400: LDX.b #$01
#_808402: LDY.b #$40
#_808404: STZ.w $0200
#_808407: STX.b $01
#_808409: STY.b $00
#_80840B: REP #$10
#_80840D: LDY.w #$0000

CODE_808410:
#_808410: LDA.b ($00),Y
#_808412: BEQ CODE_80846E
#_808414: STA.b $03
#_808416: INY
#_808417: LDA.b ($00),Y
#_808419: STA.w DMA1ADDR
#_80841C: INY
#_80841D: LDA.b ($00),Y
#_80841F: STA.w DMA1ADDRH
#_808422: INY
#_808423: LDA.b ($00),Y
#_808425: STA.w DMA1ADDRB
#_808428: INY
#_808429: LDA.b ($00),Y
#_80842B: STA.w DMA1SIZE
#_80842E: INY
#_80842F: LDA.b ($00),Y
#_808431: STA.w DMA1SIZEH
#_808434: INY
#_808435: LDA.b $03
#_808437: AND.b #$01
#_808439: BEQ CODE_80844B
#_80843B: STZ.w DMA1MODE
#_80843E: LDA.b #CGDATA
#_808440: STA.w DMA1PORT
#_808443: LDA.b ($00),Y
#_808445: INY
#_808446: STA.w CGADD
#_808449: BRA CODE_808467

CODE_80844B:
#_80844B: LDA.b #$01
#_80844D: STA.w DMA1MODE
#_808450: LDA.b #VMDATA
#_808452: STA.w DMA1PORT
#_808455: LDA.b ($00),Y
#_808457: INY
#_808458: STA.w VMAIN
#_80845B: LDA.b ($00),Y
#_80845D: INY
#_80845E: STA.w VMADDR
#_808461: LDA.b ($00),Y
#_808463: INY
#_808464: STA.w VMADDRH

CODE_808467:
#_808467: LDA.b #$02
#_808469: STA.w MDMAEN
#_80846C: BRA CODE_808410

CODE_80846E:
#_80846E: SEP #$10
#_808470: RTL

;===================================================================================================

ROUTINE_808471:
#_808471: SEP #$30
#_808473: LDA.w $0202
#_808476: BEQ CODE_8084BF
#_808478: LDX.b #$01
#_80847A: LDY.b #$C0
#_80847C: STZ.w $0202
#_80847F: STX.b $01
#_808481: STY.b $00
#_808483: REP #$10
#_808485: LDY.w #$0000

CODE_808488:
#_808488: LDA.b ($00),Y
#_80848A: BEQ CODE_8084BF
#_80848C: INY
#_80848D: LDA.b ($00),Y
#_80848F: STA.w DMA7ADDR
#_808492: STA.w DMA7SIZE
#_808495: INY
#_808496: LDA.b ($00),Y
#_808498: STA.w DMA7ADDRH
#_80849B: STA.w DMA7SIZEH
#_80849E: INY
#_80849F: LDA.b ($00),Y
#_8084A1: STA.w DMA7ADDRB
#_8084A4: STA.w DASB7
#_8084A7: INY
#_8084A8: LDA.b ($00),Y
#_8084AA: STA.w DMA7MODE
#_8084AD: INY
#_8084AE: LDA.b ($00),Y
#_8084B0: STA.w DMA7PORT
#_8084B3: INY
#_8084B4: LDA.b $9C
#_8084B6: ORA.b #$80
#_8084B8: STA.b $9C
#_8084BA: STA.w HDMAEN
#_8084BD: BRA CODE_808488

CODE_8084BF:
#_8084BF: SEP #$10
#_8084C1: RTL

;===================================================================================================

ROUTINE_8084C2:
#_8084C2: LDA.w HVBJOY
#_8084C5: AND.b #$01
#_8084C7: BNE ROUTINE_8084C2

#_8084C9: REP #$20
#_8084CB: LDX.b #$06

CODE_8084CD:
#_8084CD: LDA.b $A0
#_8084CF: AND.w #$00FF
#_8084D2: BEQ CODE_8084D7
#_8084D4: LDA.w JOY1L,X

CODE_8084D7:
#_8084D7: STA.b $A5,X
#_8084D9: EOR.b $BD,X
#_8084DB: AND.b $A5,X
#_8084DD: STA.b $AD,X
#_8084DF: STA.b $B5,X
#_8084E1: LDA.b $A5,X
#_8084E3: BEQ CODE_8084F7
#_8084E5: CMP.b $BD,X
#_8084E7: BNE CODE_8084F7
#_8084E9: DEC.b $D5,X
#_8084EB: BNE CODE_8084FB
#_8084ED: LDA.b $A5,X
#_8084EF: STA.b $B5,X
#_8084F1: LDA.b $A3
#_8084F3: STA.b $D5,X
#_8084F5: BRA CODE_8084FB

CODE_8084F7:
#_8084F7: LDA.b $A1
#_8084F9: STA.b $D5,X

CODE_8084FB:
#_8084FB: LDA.b $A5,X
#_8084FD: STA.b $BD,X
#_8084FF: DEX
#_808500: DEX
#_808501: BPL CODE_8084CD
#_808503: SEP #$20
#_808505: RTL

;===================================================================================================

ClearOAMProbably_808506:
#_808506: PHP

#_808507: PHB
#_808508: PHK
#_808509: PLB

#_80850A: REP #$30

#_80850C: LDY.w #$01FE
#_80850F: LDA.w #$F400

.next
#_808512: STA.w $0210,Y

#_808515: DEY
#_808516: DEY
#_808517: BPL .next

#_808519: SEP #$10
#_80851B: REP #$20

#_80851D: LDX.b #$1E

.next_sx
#_80851F: STZ.w $0410,X

#_808522: DEX
#_808523: DEX
#_808524: BPL .next_sx

#_808526: STZ.b $46

#_808528: PLB
#_808529: PLP

#_80852A: RTL

;===================================================================================================

ROUTINE_80852B:
#_80852B: PHP
#_80852C: PHB
#_80852D: PHK
#_80852E: PLB
#_80852F: SEP #$20
#_808531: REP #$10

CODE_808533:
#_808533: STA.l $000000,X
#_808537: INX
#_808538: DEY
#_808539: BNE CODE_808533
#_80853B: PLB
#_80853C: PLP
#_80853D: RTL

;===================================================================================================

ROUTINE_80853E:
#_80853E: PHP
#_80853F: PHB
#_808540: PHK
#_808541: PLB
#_808542: REP #$30

CODE_808544:
#_808544: STA.l $000000,X
#_808548: INX
#_808549: INX
#_80854A: DEY
#_80854B: DEY
#_80854C: BNE CODE_808544
#_80854E: PLB
#_80854F: PLP
#_808550: RTL

;===================================================================================================

ROUTINE_808551:
#_808551: PHP
#_808552: PHB
#_808553: PHK
#_808554: PLB
#_808555: SEP #$30
#_808557: LDA.b #$0F
#_808559: STA.w $0673

CODE_80855C:
#_80855C: LDA.b #$01
#_80855E: STA.w $0672
#_808561: LDA.b $6A
#_808563: CLC
#_808564: ADC.b #$01
#_808566: BIT.b #$0F
#_808568: BEQ CODE_80856C
#_80856A: STA.b $6A

CODE_80856C:
#_80856C: JSL WaitForNMI
#_808570: DEC.w $0672
#_808573: BNE CODE_80856C
#_808575: DEC.w $0673
#_808578: BNE CODE_80855C
#_80857A: PLB
#_80857B: PLP
#_80857C: RTL

;===================================================================================================

ROUTINE_80857D:
#_80857D: PHP
#_80857E: PHB
#_80857F: PHK
#_808580: PLB
#_808581: SEP #$30
#_808583: LDA.b $6A
#_808585: AND.b #$0F
#_808587: BEQ CODE_8085A7
#_808589: STA.w $0673

CODE_80858C:
#_80858C: LDA.b #$01
#_80858E: STA.w $0672
#_808591: LDA.b $6A
#_808593: BIT.b #$0F
#_808595: BEQ CODE_808599
#_808597: DEC.b $6A

CODE_808599:
#_808599: JSL WaitForNMI
#_80859D: DEC.w $0672
#_8085A0: BNE CODE_808599
#_8085A2: DEC.w $0673
#_8085A5: BNE CODE_80858C

CODE_8085A7:
#_8085A7: PLB
#_8085A8: PLP
#_8085A9: RTL

;===================================================================================================

ROUTINE_8085AA:
#_8085AA: PHP
#_8085AB: PHB
#_8085AC: PHK
#_8085AD: PLB
#_8085AE: SEP #$30
#_8085B0: LDA.b #$0F
#_8085B2: STA.w $0673
#_8085B5: LDA.b $6F
#_8085B7: AND.b #$F0
#_8085B9: ORA.b #$07
#_8085BB: STA.b $6F

CODE_8085BD:
#_8085BD: LDA.b #$01
#_8085BF: STA.w $0672
#_8085C2: LDA.b $6F
#_8085C4: BIT.b #$F0
#_8085C6: BEQ CODE_8085CD
#_8085C8: SEC
#_8085C9: SBC.b #$10
#_8085CB: STA.b $6F

CODE_8085CD:
#_8085CD: LDA.b $6A
#_8085CF: CLC
#_8085D0: ADC.b #$01
#_8085D2: BIT.b #$0F
#_8085D4: BEQ CODE_8085D8
#_8085D6: STA.b $6A

CODE_8085D8:
#_8085D8: JSL WaitForNMI
#_8085DC: DEC.w $0672
#_8085DF: BNE CODE_8085D8
#_8085E1: DEC.w $0673
#_8085E4: BNE CODE_8085BD
#_8085E6: PLB
#_8085E7: PLP
#_8085E8: RTL

;===================================================================================================

ROUTINE_8085E9:
#_8085E9: PHP
#_8085EA: PHB
#_8085EB: PHK
#_8085EC: PLB
#_8085ED: SEP #$30
#_8085EF: LDA.b #$0F
#_8085F1: STA.w $0673
#_8085F4: LDA.b $6F
#_8085F6: AND.b #$F0
#_8085F8: ORA.b #$02
#_8085FA: STA.b $6F

CODE_8085FC:
#_8085FC: LDA.b #$02
#_8085FE: STA.w $0672
#_808601: LDA.b $6F
#_808603: BIT.b #$F0
#_808605: BEQ CODE_80860C
#_808607: SEC
#_808608: SBC.b #$10
#_80860A: STA.b $6F

CODE_80860C:
#_80860C: LDA.b $6A
#_80860E: CLC
#_80860F: ADC.b #$01
#_808611: BIT.b #$0F
#_808613: BEQ CODE_808617
#_808615: STA.b $6A

CODE_808617:
#_808617: JSL WaitForNMI
#_80861B: DEC.w $0672
#_80861E: BNE CODE_808617
#_808620: DEC.w $0673
#_808623: BNE CODE_8085FC
#_808625: PLB
#_808626: PLP
#_808627: RTL

;===================================================================================================

ROUTINE_808628:
#_808628: PHP
#_808629: PHB
#_80862A: PHK
#_80862B: PLB
#_80862C: SEP #$30
#_80862E: LDA.b $6A
#_808630: AND.b #$0F
#_808632: BEQ CODE_808665
#_808634: STA.w $0673
#_808637: LDA.b $6F
#_808639: AND.b #$F0
#_80863B: ORA.b #$07
#_80863D: STA.b $6F

CODE_80863F:
#_80863F: LDA.b #$01
#_808641: STA.w $0672
#_808644: LDA.b $6F
#_808646: CLC
#_808647: ADC.b #$10
#_808649: BIT.b #$F0
#_80864B: BEQ CODE_80864F
#_80864D: STA.b $6F

CODE_80864F:
#_80864F: LDA.b $6A
#_808651: BIT.b #$0F
#_808653: BEQ CODE_808657
#_808655: DEC.b $6A

CODE_808657:
#_808657: JSL WaitForNMI
#_80865B: DEC.w $0672
#_80865E: BNE CODE_808657
#_808660: DEC.w $0673
#_808663: BNE CODE_80863F

CODE_808665:
#_808665: PLB
#_808666: PLP
#_808667: RTL

;===================================================================================================

SomeInterruptThingMaybe_808668:
#_808668: PHP
#_808669: PHB
#_80866A: PHK
#_80866B: PLB
#_80866C: SEP #$30
#_80866E: LDA.b $6A
#_808670: AND.b #$0F
#_808672: BEQ CODE_8086A5
#_808674: STA.w $0673
#_808677: LDA.b $6F
#_808679: AND.b #$F0
#_80867B: ORA.b #$02
#_80867D: STA.b $6F

CODE_80867F:
#_80867F: LDA.b #$02
#_808681: STA.w $0672
#_808684: LDA.b $6F
#_808686: CLC
#_808687: ADC.b #$10
#_808689: BIT.b #$F0
#_80868B: BEQ CODE_80868F
#_80868D: STA.b $6F

CODE_80868F:
#_80868F: LDA.b $6A
#_808691: BIT.b #$0F
#_808693: BEQ CODE_808697
#_808695: DEC.b $6A

CODE_808697:
#_808697: JSL WaitForNMI
#_80869B: DEC.w $0672
#_80869E: BNE CODE_808697
#_8086A0: DEC.w $0673
#_8086A3: BNE CODE_80867F

CODE_8086A5:
#_8086A5: PLB
#_8086A6: PLP
#_8086A7: RTL

;===================================================================================================

ROUTINE_8086A8:
#_8086A8: PHP
#_8086A9: PHB
#_8086AA: PHK
#_8086AB: PLB
#_8086AC: PHX
#_8086AD: PHY
#_8086AE: PHA
#_8086AF: REP #$20
#_8086B1: SEP #$10
#_8086B3: LDX.b $36
#_8086B5: STX.w WRMPYA
#_8086B8: LDX.b $38
#_8086BA: STX.w WRMPYB
#_8086BD: NOP
#_8086BE: NOP
#_8086BF: NOP
#_8086C0: LDA.w RDMPY
#_8086C3: STA.b $3A
#_8086C5: LDX.b $37
#_8086C7: STX.w WRMPYA
#_8086CA: LDX.b $39
#_8086CC: STX.w WRMPYB
#_8086CF: NOP
#_8086D0: NOP
#_8086D1: NOP
#_8086D2: LDX.w RDMPY
#_8086D5: STX.b $3C
#_8086D7: LDY.w RDMPYH
#_8086DA: LDX.b $37
#_8086DC: STX.w WRMPYA
#_8086DF: LDX.b $38
#_8086E1: STX.w WRMPYB
#_8086E4: NOP
#_8086E5: NOP
#_8086E6: LDA.b $3B
#_8086E8: CLC
#_8086E9: ADC.w RDMPY
#_8086EC: STA.b $3B
#_8086EE: BCC CODE_8086F1
#_8086F0: INY

CODE_8086F1:
#_8086F1: LDX.b $36
#_8086F3: STX.w WRMPYA
#_8086F6: LDX.b $39
#_8086F8: STX.w WRMPYB
#_8086FB: NOP
#_8086FC: NOP
#_8086FD: LDA.b $3B
#_8086FF: CLC
#_808700: ADC.w RDMPY
#_808703: STA.b $3B
#_808705: BCC CODE_808708
#_808707: INY

CODE_808708:
#_808708: STY.b $3D
#_80870A: PLA
#_80870B: PLY
#_80870C: PLX
#_80870D: PLB
#_80870E: PLP
#_80870F: RTL

;===================================================================================================

ROUTINE_808710:
#_808710: PHP
#_808711: PHB
#_808712: PHK
#_808713: PLB
#_808714: REP #$30
#_808716: STZ.b $3E
#_808718: STZ.b $40
#_80871A: STZ.b $42
#_80871C: STZ.b $44
#_80871E: LDX.w #$0020

CODE_808721:
#_808721: LSR.b $38
#_808723: ROR.b $36
#_808725: BCC CODE_808734
#_808727: LDA.b $3A
#_808729: CLC
#_80872A: ADC.b $42
#_80872C: STA.b $42
#_80872E: LDA.b $3C
#_808730: ADC.b $44
#_808732: STA.b $44

CODE_808734:
#_808734: ROR.b $44
#_808736: ROR.b $42
#_808738: ROR.b $40
#_80873A: ROR.b $3E
#_80873C: DEX
#_80873D: BNE CODE_808721
#_80873F: PLB
#_808740: PLP
#_808741: RTL

;===================================================================================================

ROUTINE_808742:
#_808742: PHP
#_808743: PHB
#_808744: PHK
#_808745: PLB
#_808746: REP #$30
#_808748: STZ.b $36
#_80874A: LDA.b $3E
#_80874C: BNE CODE_808752
#_80874E: STZ.b $3C
#_808750: BRA CODE_80876A

CODE_808752:
#_808752: LDX.w #$0011
#_808755: CLC

CODE_808756:
#_808756: ROL.b $3C
#_808758: DEX
#_808759: BEQ CODE_80876A
#_80875B: ROL.b $36
#_80875D: LDA.b $36
#_80875F: BEQ CODE_808756
#_808761: SEC
#_808762: SBC.b $3E
#_808764: BCC CODE_808756
#_808766: STA.b $36
#_808768: BRA CODE_808756

CODE_80876A:
#_80876A: PLB
#_80876B: PLP
#_80876C: RTL

;===================================================================================================

ROUTINE_80876D:
#_80876D: PHP
#_80876E: PHB
#_80876F: PHK
#_808770: PLB
#_808771: REP #$30
#_808773: STZ.b $38
#_808775: STZ.b $36
#_808777: LDA.b $40
#_808779: ORA.b $3E
#_80877B: BNE CODE_808783
#_80877D: STZ.b $3C
#_80877F: STZ.b $3A
#_808781: BRA CODE_8087AA

CODE_808783:
#_808783: LDX.w #$0021
#_808786: CLC

CODE_808787:
#_808787: ROL.b $3A
#_808789: ROL.b $3C
#_80878B: DEX
#_80878C: BEQ CODE_8087AA
#_80878E: ROL.b $36
#_808790: ROL.b $38
#_808792: LDA.b $38
#_808794: ORA.b $36
#_808796: BEQ CODE_808787
#_808798: LDA.b $36
#_80879A: SEC
#_80879B: SBC.b $3E
#_80879D: TAY
#_80879E: LDA.b $38
#_8087A0: SBC.b $40
#_8087A2: BCC CODE_808787
#_8087A4: STA.b $38
#_8087A6: STY.b $36
#_8087A8: BRA CODE_808787

CODE_8087AA:
#_8087AA: PLB
#_8087AB: PLP
#_8087AC: RTL

;===================================================================================================

ROUTINE_8087AD:
#_8087AD: PHP
#_8087AE: PHB
#_8087AF: PHK
#_8087B0: PLB
#_8087B1: SEP #$30
#_8087B3: LDA.w $066F
#_8087B6: BEQ CODE_8087BE
#_8087B8: JSL ROUTINE_8087D5
#_8087BC: BRA CODE_8087D2

CODE_8087BE:
#_8087BE: LDA.w $0670
#_8087C1: BEQ CODE_8087C9
#_8087C3: JSL ROUTINE_808855
#_8087C7: BRA CODE_8087D2

CODE_8087C9:
#_8087C9: LDA.w $0671
#_8087CC: BEQ CODE_8087D2
#_8087CE: JSL ROUTINE_8088D5

CODE_8087D2:
#_8087D2: PLB
#_8087D3: PLP
#_8087D4: RTL

;===================================================================================================

ROUTINE_8087D5:
#_8087D5: PHP
#_8087D6: PHB
#_8087D7: PHK
#_8087D8: PLB
#_8087D9: REP #$30
#_8087DB: LDA.w #UNREACH_808831>>16
#_8087DE: STA.b $01
#_8087E0: LDA.w #UNREACH_808831
#_8087E3: STA.b $00
#_8087E5: JSL SomeDMAThing_808915
#_8087E9: PLB
#_8087EA: PLP
#_8087EB: RTL

;===================================================================================================

ROUTINE_8087EC:
#_8087EC: PHP
#_8087ED: PHB
#_8087EE: PHK
#_8087EF: PLB
#_8087F0: REP #$30
#_8087F2: LDA.w #UNREACH_80883A>>16
#_8087F5: STA.b $01
#_8087F7: LDA.w #UNREACH_80883A
#_8087FA: STA.b $00
#_8087FC: JSL SomeDMAThing_808915
#_808800: PLB
#_808801: PLP
#_808802: RTL

;===================================================================================================

ROUTINE_808803:
#_808803: PHP
#_808804: PHB
#_808805: PHK
#_808806: PLB
#_808807: REP #$30
#_808809: LDA.w #UNREACH_808843>>16
#_80880C: STA.b $01
#_80880E: LDA.w #UNREACH_808843
#_808811: STA.b $00
#_808813: JSL SomeDMAThing_808915
#_808817: PLB
#_808818: PLP
#_808819: RTL

;===================================================================================================

ROUTINE_80881A:
#_80881A: PHP
#_80881B: PHB
#_80881C: PHK
#_80881D: PLB
#_80881E: REP #$30
#_808820: LDA.w #UNREACH_80884C>>16
#_808823: STA.b $01
#_808825: LDA.w #UNREACH_80884C
#_808828: STA.b $00
#_80882A: JSL SomeDMAThing_808915
#_80882E: PLB
#_80882F: PLP
#_808830: RTL

;===================================================================================================

UNREACH_808831:
#_808831: db $02,$00,$20,$7F,$00,$08,$80,$00
#_808839: db $00

UNREACH_80883A:
#_80883A: db $02,$00,$20,$7F,$00,$08,$80
#_808841: db $00,$18

UNREACH_808843:
#_808843: db $02,$00,$20,$7F,$00,$10
#_808849: db $80,$00,$00

UNREACH_80884C:
#_80884C: db $02,$00,$20,$7F,$00
#_808851: db $10,$80,$00,$18

;===================================================================================================

ROUTINE_808855:
#_808855: PHP
#_808856: PHB
#_808857: PHK
#_808858: PLB
#_808859: REP #$30
#_80885B: LDA.w #$8000
#_80885E: STA.b $01
#_808860: LDA.w #UNREACH_8088B1
#_808863: STA.b $00
#_808865: JSL SomeDMAThing_808915
#_808869: PLB
#_80886A: PLP
#_80886B: RTL

;===================================================================================================

ROUTINE_80886C:
#_80886C: PHP
#_80886D: PHB
#_80886E: PHK
#_80886F: PLB
#_808870: REP #$30
#_808872: LDA.w #$8000
#_808875: STA.b $01
#_808877: LDA.w #UNREACH_8088BA
#_80887A: STA.b $00
#_80887C: JSL SomeDMAThing_808915
#_808880: PLB
#_808881: PLP
#_808882: RTL

;===================================================================================================

ROUTINE_808883:
#_808883: PHP
#_808884: PHB
#_808885: PHK
#_808886: PLB
#_808887: REP #$30
#_808889: LDA.w #$8000
#_80888C: STA.b $01
#_80888E: LDA.w #UNREACH_8088C3
#_808891: STA.b $00
#_808893: JSL SomeDMAThing_808915
#_808897: PLB
#_808898: PLP
#_808899: RTL

;===================================================================================================

ROUTINE_80889A:
#_80889A: PHP
#_80889B: PHB
#_80889C: PHK
#_80889D: PLB
#_80889E: REP #$30
#_8088A0: LDA.w #$8000
#_8088A3: STA.b $01
#_8088A5: LDA.w #UNREACH_8088CC
#_8088A8: STA.b $00
#_8088AA: JSL SomeDMAThing_808915
#_8088AE: PLB
#_8088AF: PLP
#_8088B0: RTL

;---------------------------------------------------------------------------------------------------

UNREACH_8088B1:
#_8088B1: db $02,$00,$30,$7F,$00,$08,$80,$00
#_8088B9: db $08

UNREACH_8088BA:
#_8088BA: db $02,$00,$30,$7F,$00,$08,$80
#_8088C1: db $00,$68

UNREACH_8088C3:
#_8088C3: db $02,$00,$30,$7F,$00,$10
#_8088C9: db $80,$00,$08

UNREACH_8088CC:
#_8088CC: db $02,$00,$30,$7F,$00
#_8088D1: db $10,$80,$00,$68

;===================================================================================================

ROUTINE_8088D5:
#_8088D5: PHP
#_8088D6: PHB
#_8088D7: PHK
#_8088D8: PLB
#_8088D9: REP #$30
#_8088DB: LDA.w #$8000
#_8088DE: STA.b $01
#_8088E0: LDA.w #UNREACH_808903
#_8088E3: STA.b $00
#_8088E5: JSL SomeDMAThing_808915
#_8088E9: PLB
#_8088EA: PLP
#_8088EB: RTL

;===================================================================================================

ROUTINE_8088EC:
#_8088EC: PHP
#_8088ED: PHB
#_8088EE: PHK
#_8088EF: PLB
#_8088F0: REP #$30
#_8088F2: LDA.w #$8000
#_8088F5: STA.b $01
#_8088F7: LDA.w #UNREACH_80890C
#_8088FA: STA.b $00
#_8088FC: JSL SomeDMAThing_808915
#_808900: PLB
#_808901: PLP
#_808902: RTL

UNREACH_808903:
#_808903: db $02,$00,$40,$7F,$00,$08,$80,$00
#_80890B: db $78

UNREACH_80890C:
#_80890C: db $02,$00,$40,$7F,$00,$10,$80
#_808913: db $00,$78

;===================================================================================================
; TODO seems DMA related?
SomeDMAThing_808915:
#_808915: PHP

#_808916: PHB
#_808917: PHK
#_808918: PLB

#_808919: REP #$30

#_80891B: LDX.w $0200

#_80891E: LDY.w #$0000

; number of bytes to copy
#_808921: LDA.w #$0009
#_808924: STA.b $12

#_808926: LDA.b [$00],Y
#_808928: AND.w #$0002
#_80892B: BNE .use_nine

#_80892D: LDA.w #$0007
#_808930: STA.b $12

.use_nine
#_808932: SEP #$20

.copy_next
#_808934: LDA.b [$00],Y
#_808936: STA.w $0140,X

#_808939: INY
#_80893A: INX

#_80893B: CPY.b $12
#_80893D: BCC .copy_next

#_80893F: LDA.b #$00
#_808941: STA.w $0140,X

#_808944: LDA.w $0200
#_808947: CLC
#_808948: ADC.b $12
#_80894A: STA.w $0200

#_80894D: LDA.b $6A
#_80894F: AND.b #$80
#_808951: BEQ .exit

#_808953: JSL ROUTINE_8083F9

.exit
#_808957: PLB
#_808958: PLP

#_808959: RTL

;===================================================================================================

ROUTINE_80895A:
#_80895A: PHP
#_80895B: REP #$30
#_80895D: STZ.b $38
#_80895F: STZ.b $3A
#_808961: STZ.b $3C
#_808963: STZ.b $3E
#_808965: LDX.w #$FFFF

CODE_808968:
#_808968: INX
#_808969: LDA.b $36
#_80896B: STA.b $38
#_80896D: LDA.b $36
#_80896F: SEC
#_808970: SBC.w #$2710
#_808973: STA.b $36
#_808975: BCS CODE_808968
#_808977: STX.b $3E
#_808979: LDA.b $38
#_80897B: STA.b $36
#_80897D: LDX.w #$FFFF

CODE_808980:
#_808980: INX
#_808981: LDA.b $36
#_808983: STA.b $38
#_808985: LDA.b $36
#_808987: SEC
#_808988: SBC.w #$03E8
#_80898B: STA.b $36
#_80898D: BCS CODE_808980
#_80898F: STX.b $3C
#_808991: LDA.b $38
#_808993: STA.b $36
#_808995: LDX.w #$FFFF

CODE_808998:
#_808998: INX
#_808999: LDA.b $36
#_80899B: STA.b $38
#_80899D: LDA.b $36
#_80899F: SEC
#_8089A0: SBC.w #$0064
#_8089A3: STA.b $36
#_8089A5: BCS CODE_808998
#_8089A7: STX.b $3A
#_8089A9: LDX.w #$FFFF

CODE_8089AC:
#_8089AC: INX
#_8089AD: LDA.b $38
#_8089AF: STA.b $36
#_8089B1: LDA.b $38
#_8089B3: SEC
#_8089B4: SBC.w #$000A
#_8089B7: STA.b $38
#_8089B9: BCS CODE_8089AC
#_8089BB: STX.b $38
#_8089BD: PLP
#_8089BE: RTL

;===================================================================================================

ROUTINE_8089BF:
#_8089BF: PHP
#_8089C0: SEP #$30
#_8089C2: STZ.b $37
#_8089C4: STZ.b $39
#_8089C6: STZ.b $3B
#_8089C8: LDX.b #$FF

CODE_8089CA:
#_8089CA: INX
#_8089CB: LDA.b $36
#_8089CD: STA.b $38
#_8089CF: LDA.b $36
#_8089D1: SEC
#_8089D2: SBC.b #$64
#_8089D4: STA.b $36
#_8089D6: BCS CODE_8089CA
#_8089D8: STX.b $3A
#_8089DA: LDX.b #$FF

CODE_8089DC:
#_8089DC: INX
#_8089DD: LDA.b $38
#_8089DF: STA.b $36
#_8089E1: LDA.b $38
#_8089E3: SEC
#_8089E4: SBC.b #$0A
#_8089E6: STA.b $38
#_8089E8: BCS CODE_8089DC
#_8089EA: STX.b $38
#_8089EC: PLP
#_8089ED: RTL

;===================================================================================================

ROUTINE_8089EE:
#_8089EE: PHP
#_8089EF: REP #$30
#_8089F1: LDX.w #$FFFF

CODE_8089F4:
#_8089F4: INX
#_8089F5: LDA.b $36
#_8089F7: STA.b $38
#_8089F9: SEC
#_8089FA: SBC.w #$8CA0
#_8089FD: STA.b $36
#_8089FF: BCS CODE_8089F4
#_808A01: STX.b $40
#_808A03: LDX.w #$FFFF

CODE_808A06:
#_808A06: INX
#_808A07: LDA.b $38
#_808A09: STA.b $36
#_808A0B: SEC
#_808A0C: SBC.w #$0E10
#_808A0F: STA.b $38
#_808A11: BCS CODE_808A06
#_808A13: STX.b $3E
#_808A15: LDX.w #$FFFF

CODE_808A18:
#_808A18: INX
#_808A19: LDA.b $36
#_808A1B: STA.b $38
#_808A1D: SEC
#_808A1E: SBC.w #$0258
#_808A21: STA.b $36
#_808A23: BCS CODE_808A18
#_808A25: STX.b $3C
#_808A27: LDX.w #$FFFF

CODE_808A2A:
#_808A2A: INX
#_808A2B: LDA.b $38
#_808A2D: STA.b $36
#_808A2F: SEC
#_808A30: SBC.w #$003C
#_808A33: STA.b $38
#_808A35: BCS CODE_808A2A
#_808A37: STX.b $3A
#_808A39: LDX.w #$FFFF

CODE_808A3C:
#_808A3C: INX
#_808A3D: LDA.b $36
#_808A3F: TAY
#_808A40: SEC
#_808A41: SBC.w #$000A
#_808A44: STA.b $36
#_808A46: BCS CODE_808A3C
#_808A48: STX.b $38
#_808A4A: STY.b $36
#_808A4C: PLP
#_808A4D: RTL

;===================================================================================================

ROUTINE_808A4E:
#_808A4E: PHP
#_808A4F: REP #$20
#_808A51: LDA.b $12
#_808A53: STA.b $3C
#_808A55: LDA.w #$0064
#_808A58: STA.b $3E
#_808A5A: JSL ROUTINE_808742
#_808A5E: SEP #$20
#_808A60: LDA.b $3C
#_808A62: STA.w $06A0
#_808A65: REP #$20
#_808A67: LDA.b $36
#_808A69: STA.b $3C
#_808A6B: LDA.w #$000A
#_808A6E: STA.b $3E
#_808A70: JSL ROUTINE_808742
#_808A74: SEP #$20
#_808A76: LDA.b $3C
#_808A78: STA.w $06A1
#_808A7B: LDA.b $36
#_808A7D: STA.w $06A2
#_808A80: SEP #$30
#_808A82: LDX.b #$00

CODE_808A84:
#_808A84: LDA.w $06A0,X
#_808A87: BNE CODE_808A93
#_808A89: LDA.b #$0A
#_808A8B: STA.w $06A0,X
#_808A8E: INX
#_808A8F: CPX.b #$02
#_808A91: BNE CODE_808A84

CODE_808A93:
#_808A93: PLP
#_808A94: RTL

;===================================================================================================

ROUTINE_808A95:
#_808A95: LDA $02,S
#_808A98: STA.b $5D

#_808A99: LDA $01,S
#_808A9B: STA.b $5C

#_808A9D: CLC
#_808A9E: ADC.w #$0003
#_808AA1: STA.b $01,S

#_808AA3: LDY.w #$0001

#_808AA6: LDA.b [$5C],Y
#_808AA8: STA.b $64

#_808AAA: INY
#_808AAB: LDA.b [$5C],Y
#_808AAD: STA.b $65

;---------------------------------------------------------------------------------------------------

DecompressToWRAM:
#_808AAF: PHP
#_808AB0: PHB

#_808AB1: SEP #$20
#_808AB3: REP #$10

#_808AB5: LDA.b $61
#_808AB7: PHA
#_808AB8: PLB

#_808AB9: STZ.b $69

#_808ABB: LDY.w #$0000

;---------------------------------------------------------------------------------------------------

.next_command
#_808ABE: PHX

#_808ABF: LDX.b $5F

#_808AC1: LDA.w $0000,X

#_808AC4: INX
#_808AC5: BNE .no_wrap

#_808AC7: JSR WrapToNextBank

.no_wrap
#_808ACA: STX.b $5F

#_808ACC: PLX

#_808ACD: STA.b $62
#_808ACF: CMP.b #$FF
#_808AD1: BNE .not_end

#_808AD3: PLB
#_808AD4: PLP
#_808AD5: RTL

;---------------------------------------------------------------------------------------------------

.not_end
#_808AD6: AND.b #$E0
#_808AD8: CMP.b #$E0
#_808ADA: BNE .not_expanded

#_808ADC: LDA.b $62
#_808ADE: ASL A
#_808ADF: ASL A
#_808AE0: ASL A
#_808AE1: AND.b #$E0
#_808AE3: PHA

#_808AE4: LDA.b $62
#_808AE6: AND.b #$03
#_808AE8: XBA

#_808AE9: PHX

#_808AEA: LDX.b $5F
#_808AEC: LDA.w $0000,X

#_808AEF: INX
#_808AF0: BNE .in_same_bank

#_808AF2: JSR WrapToNextBank

.in_same_bank
#_808AF5: STX.b $5F

#_808AF7: PLX
#_808AF8: BRA .block_size_set

;---------------------------------------------------------------------------------------------------

.not_expanded
#_808AFA: PHA

#_808AFB: LDA.b #$00
#_808AFD: XBA

#_808AFE: LDA.b $62
#_808B00: AND.b #$1F

;---------------------------------------------------------------------------------------------------

.block_size_set
#_808B02: TAX
#_808B03: INX

#_808B04: PLA
#_808B05: CMP.b #$00
#_808B07: BPL .set_a_commands

#_808B09: JMP.w .set_b_commands

.set_a_commands
#_808B0C: CMP.b #$20
#_808B0E: BEQ .repeating_byte

#_808B10: CMP.b #$40
#_808B12: BEQ .repeating_word

#_808B14: CMP.b #$60
#_808B16: BEQ .arithmetic_sequence

;---------------------------------------------------------------------------------------------------

.next_raw
#_808B18: PHX
#_808B19: LDX.b $5F
#_808B1B: LDA.w $0000,X
#_808B1E: INX
#_808B1F: BNE .no_wrap_raw

#_808B21: JSR WrapToNextBank

.no_wrap_raw
#_808B24: STX.b $5F

#_808B26: PLX

#_808B27: STA.b [$64],Y

#_808B29: INY

#_808B2A: DEX
#_808B2B: BNE .next_raw

#_808B2D: BEQ .next_command

;---------------------------------------------------------------------------------------------------

.repeating_byte
#_808B2F: PHX

#_808B30: LDX.b $5F

#_808B32: LDA.w $0000,X

#_808B35: INX
#_808B36: BNE .no_wrap_repeating

#_808B38: JSR WrapToNextBank

.no_wrap_repeating
#_808B3B: STX.b $5F
#_808B3D: PLX

.next_repeating
#_808B3E: STA.b [$64],Y

#_808B40: INY

#_808B41: DEX
#_808B42: BNE .next_repeating

#_808B44: JMP.w .next_command

;---------------------------------------------------------------------------------------------------

.repeating_word
#_808B47: PHX

#_808B48: LDX.b $5F
#_808B4A: LDA.w $0000,X
#_808B4D: INX
#_808B4E: BNE .no_wrap_word_low

#_808B50: JSR WrapToNextBank

.no_wrap_word_low
#_808B53: STX.b $5F

#_808B55: PLX

#_808B56: STA.b $62

#_808B58: PHX

#_808B59: LDX.b $5F

#_808B5B: LDA.w $0000,X
#_808B5E: INX
#_808B5F: BNE .no_wrap_word_high

#_808B61: JSR WrapToNextBank

.no_wrap_word_high
#_808B64: STX.b $5F

#_808B66: PLX

#_808B67: STA.b $63

.next_repeating_word
#_808B69: LDA.b $62
#_808B6B: STA.b [$64],Y

#_808B6D: INY
#_808B6E: DEX
#_808B6F: BEQ .done_repeating_word

#_808B71: LDA.b $63
#_808B73: STA.b [$64],Y

#_808B75: INY
#_808B76: DEX
#_808B77: BNE .next_repeating_word

.done_repeating_word
#_808B79: JMP.w .next_command

;---------------------------------------------------------------------------------------------------

.arithmetic_sequence
#_808B7C: PHX

#_808B7D: LDX.b $5F
#_808B7F: LDA.w $0000,X

#_808B82: INX
#_808B83: BNE .no_wrap_arithmetic

#_808B85: JSR WrapToNextBank

.no_wrap_arithmetic
#_808B88: STX.b $5F

#_808B8A: PLX

.next_arithmetic
#_808B8B: STA.b [$64],Y

#_808B8D: INC A

#_808B8E: INY

#_808B8F: DEX
#_808B90: BNE .next_arithmetic

#_808B92: JMP.w .next_command

;---------------------------------------------------------------------------------------------------

.set_b_commands
#_808B95: CMP.b #$C0
#_808B97: BCS CODE_808BDB

#_808B99: AND.b #$20
#_808B9B: STA.b $68

#_808B9D: PHX
#_808B9E: LDX.b $5F
#_808BA0: LDA.w $0000,X
#_808BA3: INX
#_808BA4: BNE CODE_808BA9
#_808BA6: JSR WrapToNextBank

CODE_808BA9:
#_808BA9: STX.b $5F
#_808BAB: PLX
#_808BAC: STA.b $62
#_808BAE: PHX
#_808BAF: LDX.b $5F
#_808BB1: LDA.w $0000,X
#_808BB4: INX
#_808BB5: BNE CODE_808BBA
#_808BB7: JSR WrapToNextBank

CODE_808BBA:
#_808BBA: STX.b $5F
#_808BBC: PLX
#_808BBD: STA.b $63

;---------------------------------------------------------------------------------------------------

CODE_808BBF:
#_808BBF: SEP #$20

CODE_808BC1:
#_808BC1: PHX
#_808BC2: PHY
#_808BC3: LDY.b $62
#_808BC5: LDA.b [$64],Y
#_808BC7: INY
#_808BC8: STY.b $62
#_808BCA: PLY
#_808BCB: LDX.b $68
#_808BCD: BEQ CODE_808BD1
#_808BCF: EOR.b #$FF

CODE_808BD1:
#_808BD1: STA.b [$64],Y
#_808BD3: INY
#_808BD4: PLX
#_808BD5: DEX
#_808BD6: BNE CODE_808BC1
#_808BD8: JMP.w .next_command

;---------------------------------------------------------------------------------------------------

CODE_808BDB:
#_808BDB: AND.b #$20
#_808BDD: STA.b $68

#_808BDF: PHX
#_808BE0: LDX.b $5F
#_808BE2: LDA.w $0000,X
#_808BE5: INX
#_808BE6: BNE CODE_808BEB
#_808BE8: JSR WrapToNextBank

CODE_808BEB:
#_808BEB: STX.b $5F
#_808BED: PLX
#_808BEE: STA.b $62
#_808BF0: STZ.b $63
#_808BF2: REP #$20
#_808BF4: TYA
#_808BF5: SEC
#_808BF6: SBC.b $62
#_808BF8: STA.b $62
#_808BFA: BRA CODE_808BBF

;===================================================================================================

WrapToNextBank:
#_808BFC: LDX.w #$8000

#_808BFF: PHA
#_808C00: PHB

#_808C01: PLA
#_808C02: INC A
#_808C03: PHA
#_808C04: PLB

#_808C05: PLA
#_808C06: RTS

;===================================================================================================

DecompressToVRAM:
#_808C07: PHP
#_808C08: PHB
#_808C09: SEP #$20
#_808C0B: REP #$10
#_808C0D: LDA.b $61
#_808C0F: PHA
#_808C10: PLB
#_808C11: STZ.b $69
#_808C13: LDY.b $64

CODE_808C15:
#_808C15: PHX
#_808C16: LDX.b $5F
#_808C18: LDA.w $0000,X
#_808C1B: INX
#_808C1C: BNE CODE_808C21
#_808C1E: JSR WrapToNextBank

CODE_808C21:
#_808C21: STX.b $5F
#_808C23: PLX
#_808C24: STA.b $62
#_808C26: CMP.b #$FF
#_808C28: BNE CODE_808C2D
#_808C2A: PLB
#_808C2B: PLP
#_808C2C: RTL

CODE_808C2D:
#_808C2D: AND.b #$E0
#_808C2F: CMP.b #$E0
#_808C31: BNE CODE_808C51
#_808C33: LDA.b $62
#_808C35: ASL A
#_808C36: ASL A
#_808C37: ASL A
#_808C38: AND.b #$E0
#_808C3A: PHA
#_808C3B: LDA.b $62
#_808C3D: AND.b #$03
#_808C3F: XBA
#_808C40: PHX
#_808C41: LDX.b $5F
#_808C43: LDA.w $0000,X
#_808C46: INX
#_808C47: BNE CODE_808C4C
#_808C49: JSR WrapToNextBank

CODE_808C4C:
#_808C4C: STX.b $5F
#_808C4E: PLX
#_808C4F: BRA CODE_808C59

CODE_808C51:
#_808C51: PHA
#_808C52: LDA.b #$00
#_808C54: XBA
#_808C55: LDA.b $62
#_808C57: AND.b #$1F

CODE_808C59:
#_808C59: TAX
#_808C5A: INX
#_808C5B: PLA
#_808C5C: CMP.b #$00
#_808C5E: BPL CODE_808C63
#_808C60: JMP.w CODE_808D36

CODE_808C63:
#_808C63: CMP.b #$20
#_808C65: BEQ CODE_808C98
#_808C67: CMP.b #$40
#_808C69: BEQ CODE_808CBE
#_808C6B: CMP.b #$60
#_808C6D: BNE CODE_808C72
#_808C6F: JMP.w CODE_808D0F

CODE_808C72:
#_808C72: PHX
#_808C73: LDX.b $5F
#_808C75: LDA.w $0000,X
#_808C78: INX
#_808C79: BNE CODE_808C7E
#_808C7B: JSR WrapToNextBank

CODE_808C7E:
#_808C7E: STX.b $5F
#_808C80: PLX
#_808C81: PHA
#_808C82: TYA
#_808C83: LSR A
#_808C84: PLA
#_808C85: BCS CODE_808C8D
#_808C87: STA.l VMDATA
#_808C8B: BRA CODE_808C91

CODE_808C8D:
#_808C8D: STA.l VMDATAH

CODE_808C91:
#_808C91: INY
#_808C92: DEX
#_808C93: BNE CODE_808C72
#_808C95: JMP.w CODE_808C15

CODE_808C98:
#_808C98: PHX
#_808C99: LDX.b $5F
#_808C9B: LDA.w $0000,X
#_808C9E: INX
#_808C9F: BNE CODE_808CA4
#_808CA1: JSR WrapToNextBank

CODE_808CA4:
#_808CA4: STX.b $5F
#_808CA6: PLX

CODE_808CA7:
#_808CA7: PHA
#_808CA8: TYA
#_808CA9: LSR A
#_808CAA: PLA
#_808CAB: BCS CODE_808CB3
#_808CAD: STA.l VMDATA
#_808CB1: BRA CODE_808CB7

CODE_808CB3:
#_808CB3: STA.l VMDATAH

CODE_808CB7:
#_808CB7: INY
#_808CB8: DEX
#_808CB9: BNE CODE_808CA7
#_808CBB: JMP.w CODE_808C15

CODE_808CBE:
#_808CBE: PHX
#_808CBF: LDX.b $5F
#_808CC1: LDA.w $0000,X
#_808CC4: INX
#_808CC5: BNE CODE_808CCA
#_808CC7: JSR WrapToNextBank

CODE_808CCA:
#_808CCA: STX.b $5F
#_808CCC: PLX
#_808CCD: STA.b $62
#_808CCF: PHX
#_808CD0: LDX.b $5F
#_808CD2: LDA.w $0000,X
#_808CD5: INX
#_808CD6: BNE CODE_808CDB
#_808CD8: JSR WrapToNextBank

CODE_808CDB:
#_808CDB: STX.b $5F
#_808CDD: PLX
#_808CDE: STA.b $63

CODE_808CE0:
#_808CE0: LDA.b $62
#_808CE2: PHA
#_808CE3: TYA
#_808CE4: LSR A
#_808CE5: PLA
#_808CE6: BCS CODE_808CEE
#_808CE8: STA.l VMDATA
#_808CEC: BRA CODE_808CF2

CODE_808CEE:
#_808CEE: STA.l VMDATAH

CODE_808CF2:
#_808CF2: INY
#_808CF3: DEX
#_808CF4: BEQ CODE_808D0C
#_808CF6: LDA.b $63
#_808CF8: PHA
#_808CF9: TYA
#_808CFA: LSR A
#_808CFB: PLA
#_808CFC: BCS CODE_808D04
#_808CFE: STA.l VMDATA
#_808D02: BRA CODE_808D08

CODE_808D04:
#_808D04: STA.l VMDATAH

CODE_808D08:
#_808D08: INY
#_808D09: DEX
#_808D0A: BNE CODE_808CE0

CODE_808D0C:
#_808D0C: JMP.w CODE_808C15

CODE_808D0F:
#_808D0F: PHX
#_808D10: LDX.b $5F
#_808D12: LDA.w $0000,X
#_808D15: INX
#_808D16: BNE CODE_808D1B
#_808D18: JSR WrapToNextBank

CODE_808D1B:
#_808D1B: STX.b $5F
#_808D1D: PLX

CODE_808D1E:
#_808D1E: PHA
#_808D1F: TYA
#_808D20: LSR A
#_808D21: PLA
#_808D22: BCS CODE_808D2A
#_808D24: STA.l VMDATA
#_808D28: BRA CODE_808D2E

CODE_808D2A:
#_808D2A: STA.l VMDATAH

CODE_808D2E:
#_808D2E: INY
#_808D2F: INC A
#_808D30: DEX
#_808D31: BNE CODE_808D1E
#_808D33: JMP.w CODE_808C15

CODE_808D36:
#_808D36: CMP.b #$C0
#_808D38: BCS CODE_808DAC
#_808D3A: AND.b #$20
#_808D3C: STA.b $68
#_808D3E: PHX
#_808D3F: LDX.b $5F
#_808D41: LDA.w $0000,X
#_808D44: INX
#_808D45: BNE CODE_808D4A
#_808D47: JSR WrapToNextBank

CODE_808D4A:
#_808D4A: STX.b $5F
#_808D4C: PLX
#_808D4D: STA.b $62
#_808D4F: PHX
#_808D50: LDX.b $5F
#_808D52: LDA.w $0000,X
#_808D55: INX
#_808D56: BNE CODE_808D5B
#_808D58: JSR WrapToNextBank

CODE_808D5B:
#_808D5B: STX.b $5F
#_808D5D: PLX
#_808D5E: STA.b $63
#_808D60: REP #$20
#_808D62: LDA.b $64
#_808D64: CLC
#_808D65: ADC.b $62
#_808D67: STA.b $62

CODE_808D69:
#_808D69: PHX
#_808D6A: REP #$20
#_808D6C: LDA.b $62
#_808D6E: LSR A
#_808D6F: STA.l VMADDR
#_808D73: LDA.l VMDATALREAD
#_808D77: LDA.l VMDATALREAD
#_808D7B: BCC CODE_808D7E
#_808D7D: XBA

CODE_808D7E:
#_808D7E: INC.b $62
#_808D80: SEP #$20
#_808D82: LDX.b $68
#_808D84: BEQ CODE_808D88
#_808D86: EOR.b #$FF

CODE_808D88:
#_808D88: PHA
#_808D89: REP #$20
#_808D8B: TYA
#_808D8C: LSR A
#_808D8D: STA.l VMADDR
#_808D91: SEP #$20
#_808D93: PLA
#_808D94: PHA
#_808D95: TYA
#_808D96: LSR A
#_808D97: PLA
#_808D98: BCS CODE_808DA0
#_808D9A: STA.l VMDATA
#_808D9E: BRA CODE_808DA4

CODE_808DA0:
#_808DA0: STA.l VMDATAH

CODE_808DA4:
#_808DA4: INY
#_808DA5: PLX
#_808DA6: DEX
#_808DA7: BNE CODE_808D69
#_808DA9: JMP.w CODE_808C15

CODE_808DAC:
#_808DAC: AND.b #$20
#_808DAE: STA.b $68
#_808DB0: PHX
#_808DB1: LDX.b $5F
#_808DB3: LDA.w $0000,X
#_808DB6: INX
#_808DB7: BNE CODE_808DBC
#_808DB9: JSR WrapToNextBank

CODE_808DBC:
#_808DBC: STX.b $5F
#_808DBE: PLX
#_808DBF: STA.b $62
#_808DC1: STZ.b $63
#_808DC3: REP #$20
#_808DC5: TYA
#_808DC6: SEC
#_808DC7: SBC.b $62
#_808DC9: STA.b $62
#_808DCB: BRA CODE_808D69

;===================================================================================================

ROUTINE_808DCD:
#_808DCD: JSL Clear0800at7F2000
#_808DD1: JSL Clear0800at7F3000
#_808DD5: JSL Clear0800at7F4000

#_808DD9: SEP #$30

#_808DDB: JSL ROUTINE_8087D5
#_808DDF: JSL ROUTINE_808855
#_808DE3: JSL ROUTINE_8088D5

#_808DE7: RTS

;===================================================================================================

Clear0800at7F2000:
#_808DE8: REP #$30

#_808DEA: PHB

#_808DEB: LDA.w #$0000
#_808DEE: STA.l $7F2000

#_808DF2: LDX.w #$2000
#_808DF5: LDY.w #$2001
#_808DF8: LDA.w #$07FE

#_808DFB: MVN $7F,$7F

#_808DFE: PLB
#_808DFF: RTL

;===================================================================================================

Clear0800at7F3000:
#_808E00: REP #$30

#_808E02: PHB

#_808E03: LDA.w #$0000
#_808E06: STA.l $7F3000

#_808E0A: LDX.w #$3000
#_808E0D: LDY.w #$3001
#_808E10: LDA.w #$07FE
#_808E13: MVN $7F,$7F

#_808E16: PLB
#_808E17: RTL

;===================================================================================================

Clear0800at7F4000:
#_808E18: REP #$30

#_808E1A: PHB

#_808E1B: LDA.w #$0000
#_808E1E: STA.l $7F4000

#_808E22: LDX.w #$4000
#_808E25: LDY.w #$4001
#_808E28: LDA.w #$07FE
#_808E2B: MVN $7F,$7F

#_808E2E: PLB
#_808E2F: RTL

;===================================================================================================

Reset:
#_808E30: SEI

#_808E31: CLC
#_808E32: XCE

#_808E33: SEP #$20

#_808E35: LDA.b #$00
#_808E37: STA.l $007FF7

#_808E3B: REP #$30

#_808E3D: LDX.w #$1FFF
#_808E40: TXS

#_808E41: LDY.w #$0000
#_808E44: PHY
#_808E45: PLD

#_808E46: PHK
#_808E47: PLB

#_808E48: BRA .skip_literally_the_same_code

#_808E4A: SEI

#_808E4B: CLC
#_808E4C: XCE

#_808E4D: SEP #$20

#_808E4F: LDA.b #$00
#_808E51: STA.l $007FF7

#_808E55: REP #$30

#_808E57: LDX.w #$1FFF
#_808E5A: TXS

#_808E5B: LDY.w #$0000
#_808E5E: PHY
#_808E5F: PLD

#_808E60: PHK
#_808E61: PLB

.skip_literally_the_same_code
#_808E62: JML .fast

;---------------------------------------------------------------------------------------------------

.fast
#_808E66: PHB

#_808E67: SEP #$20

; check for programmer initials
#_808E69: LDA.l $700000
#_808E6D: CMP.b #$79 ; 'y' for Yukami
#_808E6F: BNE .bad_sram

#_808E71: LDA.l $700001
#_808E75: CMP.b #$73 ; 's' for Suzuki
#_808E77: BNE .bad_sram

#_808E79: LDA.l $700002
#_808E7D: CMP.b #$6B ; 'k' for Katayama
#_808E7F: BEQ .sram_is_fine

.bad_sram
#_808E81: LDA.b #$79
#_808E83: STA.l $700000

#_808E87: LDA.b #$73
#_808E89: STA.l $700001

#_808E8D: LDA.b #$6B
#_808E8F: STA.l $700002

#_808E93: REP #$30

#_808E95: LDA.w #$0000
#_808E98: STA.l $700003

#_808E9C: LDX.w #$0003
#_808E9F: LDY.w #$0004
#_808EA2: LDA.w #$07FB
#_808EA5: MVN $70, $70

#_808EA8: JSL ROUTINE_81BF06
#_808EAC: JSL ROUTINE_81AC7E

;---------------------------------------------------------------------------------------------------

.sram_is_fine
#_808EB0: REP #$30

; clear WRAM
#_808EB2: LDA.w #$0000
#_808EB5: STA.b $00

#_808EB7: LDX.w #$0000
#_808EBA: LDY.w #$0001
#_808EBD: LDA.w #$1FFE

#_808EC0: MVN $00, $00

#_808EC3: LDA.w #$0000
#_808EC6: STA.l $7E2000

#_808ECA: LDX.w #$0000
#_808ECD: LDY.w #$0001
#_808ED0: LDA.w #$DFFE

#_808ED3: MVN $7E,$7E

#_808ED6: LDA.w #$0000
#_808ED9: STA.l $7F0000

#_808EDD: LDX.w #$0000
#_808EE0: LDY.w #$0001
#_808EE3: LDA.w #$FFFE
#_808EE6: MVN $7F, $7F

#_808EE9: PLB

;---------------------------------------------------------------------------------------------------

#_808EEA: SEP #$20

#_808EEC: LDA.b #$01
#_808EEE: STA.b $9D
#_808EF0: STA.w MEMSEL
#_808EF3: JSL ROUTINE_8B8003

#_808EF7: REP #$20
#_808EF9: LDA.l $7000B6
#_808EFD: BNE CODE_808F05
#_808EFF: JSL ROUTINE_8B8009
#_808F03: BRA CODE_808F09

CODE_808F05:
#_808F05: JSL ROUTINE_8B8006

CODE_808F09:
#_808F09: SEP #$30

#_808F0B: STZ.w NMITIMEN
#_808F0E: STZ.b $97

#_808F10: LDA.b #$80
#_808F12: STA.w INIDISP
#_808F15: STA.b $6A

#_808F17: JSR ROUTINE_808000
#_808F1A: JSR ROUTINE_808036
#_808F1D: JSR ROUTINE_808DCD
#_808F20: JSL ClearOAMProbably_808506
#_808F24: JSL EnableNMI_808334
#_808F28: SEP #$20
#_808F2A: LDA.b #$54
#_808F2C: STA.b $54
#_808F2E: STZ.b $55
#_808F30: STZ.b $56
#_808F32: LDA.b #$6B
#_808F34: STA.b $57
#_808F36: LDA.b #$44
#_808F38: STA.b $58
#_808F3A: STZ.b $59
#_808F3C: STZ.b $5A
#_808F3E: LDA.b #$6B
#_808F40: STA.b $5B
#_808F42: LDA.b #$01
#_808F44: STA.b $A0
#_808F46: REP #$30
#_808F48: JML ROUTINE_80CCE7

;===================================================================================================

Interrupt_COP:
#_808F4C: RTI

;===================================================================================================

Interrupt_BRK:
#_808F4D: RTI

;===================================================================================================

UNREACH_808F4E:
#_808F5E: db $23,$83

;---------------------------------------------------------------------------------------------------

Interrupt_IRQ:
#_808F50: PHP
#_808F51: PHB
#_808F52: PHK
#_808F53: PLB
#_808F54: REP #$30
#_808F56: SEI
#_808F57: PHD
#_808F58: PHA
#_808F59: PHX
#_808F5A: PHY
#_808F5B: JML .fast

;---------------------------------------------------------------------------------------------------

.fast
#_808F5F: SEP #$30
#_808F61: LDA.w TIMEUP
#_808F64: AND.b #$80
#_808F66: BEQ .exit
#_808F68: LDA.b $97
#_808F6A: AND.b #$CF
#_808F6C: STA.w NMITIMEN
#_808F6F: STA.b $97
#_808F71: LDA.b $E3
#_808F73: CLC
#_808F74: ADC.b #$88
#_808F76: STA.w BG1HOFS
#_808F79: LDA.b $E4
#_808F7B: STA.w BG1HOFS

.exit
#_808F7E: REP #$30
#_808F80: PLY
#_808F81: PLX
#_808F82: PLA
#_808F83: PLD
#_808F84: CLI
#_808F85: PLB
#_808F86: PLP
#_808F87: RTI

;===================================================================================================

Interrupt_NMI:
#_808F88: PHP
#_808F89: PHB
#_808F8A: PHK
#_808F8B: PLB
#_808F8C: REP #$30
#_808F8E: PHD
#_808F8F: PHA
#_808F90: PHX
#_808F91: PHY
#_808F92: JML .fast

;---------------------------------------------------------------------------------------------------

.fast
#_808F96: LDA.w #$0000
#_808F99: PHA
#_808F9A: PLD
#_808F9B: SEP #$30
#_808F9D: LDA.w RDNMI
#_808FA0: LDA.b $DD
#_808FA2: BEQ CODE_808FCA
#_808FA4: JSL NMI_TransferOAM
#_808FA8: JSL ROUTINE_8083F9
#_808FAC: JSL ROUTINE_808471
#_808FB0: JSL NMI_UpdateRegisters
#_808FB4: JSR NMI_SomeDMA_80900D
#_808FB7: JSR ROUTINE_808FE7
#_808FBA: JSL ROUTINE_8B8000
#_808FBE: JSL ROUTINE_8084C2
#_808FC2: STZ.b $DD
#_808FC4: INC.b $DE
#_808FC6: STZ.b $E1
#_808FC8: BRA CODE_808FD8

CODE_808FCA:
#_808FCA: JSL ROUTINE_8B8000
#_808FCE: INC.b $E1
#_808FD0: LDA.b $E1
#_808FD2: CMP.b $E2
#_808FD4: BCC CODE_808FD8
#_808FD6: STA.b $E2

CODE_808FD8:
#_808FD8: JSL AdvanceFraming
#_808FDC: REP #$30
#_808FDE: INC.b $DF
#_808FE0: PLY
#_808FE1: PLX
#_808FE2: PLA
#_808FE3: PLD
#_808FE4: PLB
#_808FE5: PLP
#_808FE6: RTI

;===================================================================================================

ROUTINE_808FE7:
#_808FE7: LDA.b $9E
#_808FE9: STA.w MDMAEN

#_808FEC: STZ.b $9E

#_808FEE: LDA.b $9C
#_808FF0: ORA.b $9F
#_808FF2: STA.b $9C
#_808FF4: STA.w HDMAEN

#_808FF7: RTS

;===================================================================================================

WaitForNMI_n_Times:
#_808FF8: PHP

#_808FF9: PHB
#_808FFA: PHK
#_808FFB: PLB

#_808FFC: SEP #$20

#_808FFE: STA.w $066E

.next
#_809001: JSL WaitForNMI

#_809005: DEC.w $066E
#_809008: BNE .next

#_80900A: PLB
#_80900B: PLP

#_80900C: RTL

;===================================================================================================
; TODO
;===================================================================================================
NMI_SomeDMA_80900D:
#_80900D: SEP #$30

#_80900F: LDA.w $12E6
#_809012: BEQ .exit

#_809014: STZ.w $12E6

#_809017: LDA.b #$00
#_809019: STA.w DMA3ADDR
#_80901C: LDA.b #$20
#_80901E: STA.w DMA3ADDRH
#_809021: LDA.b #$7F
#_809023: STA.w DMA3ADDRB

#_809026: LDA.b #$00
#_809028: STA.w DMA3SIZE
#_80902B: LDA.b #$07
#_80902D: STA.w DMA3SIZEH
#_809030: LDA.b #$01
#_809032: STA.w DMA3MODE

#_809035: LDA.b #VMDATA
#_809037: STA.w DMA3PORT

#_80903A: LDA.b #$80
#_80903C: STA.w VMAIN

#_80903F: LDA.b #$00
#_809041: STA.w VMADDR

#_809044: LDA.b #$18
#_809046: STA.w VMADDRH

#_809049: LDA.b #$08
#_80904B: STA.w MDMAEN

.exit
#_80904E: RTS

;===================================================================================================

ROUTINE_80904F:
#_80904F: PHP

#_809050: PHB
#_809051: PHK
#_809052: PLB

#_809053: SEP #$30

#_809055: JSR ROUTINE_80906F
#_809058: BCC .exit

#_80905A: LDA.b #$00
#_80905C: STA.l $7E27EE
#_809060: STA.l $7E27F3
#_809064: STA.l $7E27ED
#_809068: STA.l $7E27DB

.exit
#_80906C: PLB
#_80906D: PLP

#_80906E: RTL

;===================================================================================================

ROUTINE_80906F:
#_80906F: LDA.b #$FF
#_809071: STA.w $1BB3
#_809074: JSR ROUTINE_80976F
#_809077: BCC CODE_80907C
#_809079: JMP.w CODE_8090DE

CODE_80907C:
#_80907C: LDA.w $1471
#_80907F: STA.w $1411
#_809082: LDA.w $1475
#_809085: STA.w $1415
#_809088: JSR ROUTINE_80CCBD
#_80908B: JSR ROUTINE_80A352
#_80908E: JSR ROUTINE_809B64
#_809091: BCC CODE_809095
#_809093: BRA CODE_8090DE

CODE_809095:
#_809095: LDA.w $1B92
#_809098: BEQ CODE_8090A4

CODE_80909A:
#_80909A: LDA.w $146D
#_80909D: BNE CODE_8090DC
#_80909F: JSR ROUTINE_80A2ED
#_8090A2: BRA CODE_8090DE

CODE_8090A4:
#_8090A4: LDA.w $146D
#_8090A7: BNE CODE_8090BB
#_8090A9: JSR ROUTINE_809114
#_8090AC: BCS CODE_80909A
#_8090AE: JSR ROUTINE_809833
#_8090B1: BCS CODE_8090DE
#_8090B3: JSR ROUTINE_809BE7
#_8090B6: LDA.w $1B92
#_8090B9: BNE CODE_8090DE

CODE_8090BB:
#_8090BB: JSR ROUTINE_809561
#_8090BE: BCS CODE_8090DE
#_8090C0: JSR ROUTINE_80A37C
#_8090C3: LDA.l $7E27DB
#_8090C7: CMP.b #$0B
#_8090C9: BEQ CODE_8090CF
#_8090CB: CMP.b #$0C
#_8090CD: BNE CODE_8090D5

CODE_8090CF:
#_8090CF: LDA.b #$00
#_8090D1: STA.l $7E27DB

CODE_8090D5:
#_8090D5: LDA.b #$7E
#_8090D7: PHA
#_8090D8: PLB
#_8090D9: JSR ROUTINE_80A48B

CODE_8090DC:
#_8090DC: CLC
#_8090DD: RTS

CODE_8090DE:
#_8090DE: SEC
#_8090DF: RTS

;===================================================================================================

ROUTINE_8090E0:
#_8090E0: PHP
#_8090E1: PHB
#_8090E2: PHK
#_8090E3: PLB
#_8090E4: LDA.b #$0B
#_8090E6: STA.l $7E27DB
#_8090EA: LDA.b #$C0
#_8090EC: STA.w $1BAB
#_8090EF: LDA.b #$00
#_8090F1: STA.w $1BB1
#_8090F4: JSR ROUTINE_80C9A6
#_8090F7: LDA.b #$00
#_8090F9: STA.b $E2
#_8090FB: STA.l $7E27EE
#_8090FF: STA.l $7E27F3
#_809103: STA.l $7E27ED
#_809107: LDA.b #$7E
#_809109: PHA
#_80910A: PLB
#_80910B: JSR ROUTINE_80BD5D
#_80910E: JSR ROUTINE_80C3BF
#_809111: PLB
#_809112: PLP
#_809113: RTL

;===================================================================================================

ROUTINE_809114:
#_809114: LDX.b #$01
#_809116: LDA.w $147D
#_809119: BEQ CODE_80911C
#_80911B: INX

CODE_80911C:
#_80911C: STX.w $1BAF
#_80911F: LDY.w $1416
#_809122: STY.w $1BAE
#_809125: LDA.w $0830,Y
#_809128: BNE CODE_80912D
#_80912A: JMP.w CODE_8091FB

CODE_80912D:
#_80912D: LDA.w $081F,Y
#_809130: BEQ CODE_809192
#_809132: CMP.b #$FF
#_809134: BEQ CODE_809192
#_809136: LDA.w $090F,Y
#_809139: BNE CODE_809192
#_80913B: LDA.w $081E,Y
#_80913E: BNE CODE_809192
#_809140: DEC.w $1BAE
#_809143: LDY.w $1BAE
#_809146: LDA.b #$00
#_809148: STA.w $1B90
#_80914B: LDA.w $0820,Y
#_80914E: JSR SomeParamCheck_809742
#_809151: AND.b #$07
#_809153: STA.w $1B8F
#_809156: LDA.w $1B90
#_809159: STA.w $1BA5

CODE_80915C:
#_80915C: DEC.w $1BAE
#_80915F: LDY.w $1BAE
#_809162: LDA.w $0830,Y
#_809165: BNE CODE_80917F

CODE_809167:
#_809167: LDA.w $1BAE
#_80916A: CLC
#_80916B: ADC.b #$10
#_80916D: STA.w $1BAE
#_809170: LDY.w $1BAE
#_809173: LDA.w $0830,Y
#_809176: BEQ CODE_809167
#_809178: JSR ROUTINE_809242
#_80917B: BCC CODE_809192
#_80917D: BRA CODE_8091FD

CODE_80917F:
#_80917F: LDA.w $0820,Y
#_809182: CMP.b #$FF
#_809184: BEQ CODE_809192
#_809186: JSR ROUTINE_8093DF
#_809189: BCS CODE_8091FD
#_80918B: LDA.w $081F,Y
#_80918E: BEQ CODE_80915C
#_809190: BNE CODE_809192

CODE_809192:
#_809192: LDY.w $1416
#_809195: STY.w $1BAE
#_809198: LDA.w $0821,Y
#_80919B: BEQ CODE_8091FB
#_80919D: CMP.b #$FF
#_80919F: BEQ CODE_8091FB
#_8091A1: LDA.w $0911,Y
#_8091A4: BNE CODE_8091FB
#_8091A6: LDA.w $0822,Y
#_8091A9: BNE CODE_8091FB
#_8091AB: INC.w $1BAE
#_8091AE: LDY.w $1BAE
#_8091B1: LDA.b #$00
#_8091B3: STA.w $1B90
#_8091B6: LDA.w $0820,Y
#_8091B9: JSR SomeParamCheck_809742
#_8091BC: AND.b #$07
#_8091BE: STA.w $1B8F
#_8091C1: LDA.w $1B90
#_8091C4: STA.w $1BA5

CODE_8091C7:
#_8091C7: INC.w $1BAE
#_8091CA: LDY.w $1BAE
#_8091CD: LDA.w $0830,Y
#_8091D0: BNE CODE_8091EA

CODE_8091D2:
#_8091D2: LDA.w $1BAE
#_8091D5: CLC
#_8091D6: ADC.b #$10
#_8091D8: STA.w $1BAE
#_8091DB: LDY.w $1BAE
#_8091DE: LDA.w $0830,Y
#_8091E1: BEQ CODE_8091D2
#_8091E3: JSR ROUTINE_809310
#_8091E6: BCS CODE_80922E
#_8091E8: BCC CODE_8091FB

CODE_8091EA:
#_8091EA: LDA.w $0820,Y
#_8091ED: CMP.b #$FF
#_8091EF: BEQ CODE_8091FB
#_8091F1: JSR ROUTINE_80948F
#_8091F4: BCS CODE_80922E
#_8091F6: LDA.w $0821,Y
#_8091F9: BEQ CODE_8091C7

CODE_8091FB:
#_8091FB: CLC
#_8091FC: RTS

CODE_8091FD:
#_8091FD: LDA.w $1BAF
#_809200: CMP.b #$01
#_809202: BNE CODE_809222
#_809204: LDA.b #$02

CODE_809206:
#_809206: STA.w $1B94
#_809209: LDA.b #$20
#_80920B: STA.w $1B95
#_80920E: LDA.b #$FF
#_809210: STA.w $1B96

CODE_809213:
#_809213: LDA.b #$01
#_809215: STA.w $1B92
#_809218: LDA.b #$00
#_80921A: STA.w $1B93
#_80921D: STA.w $1BAB
#_809220: SEC
#_809221: RTS

CODE_809222:
#_809222: LDA.b #$20
#_809224: STA.w $1B94
#_809227: LDA.b #$FF
#_809229: STA.w $1B95
#_80922C: BRA CODE_809213

CODE_80922E:
#_80922E: LDA.w $1BAF
#_809231: CMP.b #$02
#_809233: BNE CODE_809222
#_809235: LDA.b #$01
#_809237: BNE CODE_809206

CODE_809239:
#_809239: LDA.w $1B90
#_80923C: BNE CODE_809240
#_80923E: CLC
#_80923F: RTS

CODE_809240:
#_809240: SEC
#_809241: RTS

;===================================================================================================

ROUTINE_809242:
#_809242: LDA.w $1BA5
#_809245: STA.w $1B90
#_809248: LDX.w $090F,Y
#_80924B: LDA.w $081F,Y
#_80924E: JSR SomeParamCheck_809541
#_809251: BCC CODE_809260
#_809253: LDX.w $0911,Y
#_809256: LDA.w $0821,Y
#_809259: JSR SomeParamCheck_809541
#_80925C: BCC CODE_809260

CODE_80925E:
#_80925E: BRA CODE_809239

CODE_809260:
#_809260: LDA.w $1BA5
#_809263: STA.w $1B90
#_809266: LDX.w $08EE,Y
#_809269: LDA.w $07FE,Y
#_80926C: JSR SomeParamCheck_809541
#_80926F: BCC CODE_80927C
#_809271: LDX.w $08FF,Y
#_809274: LDA.w $080F,Y
#_809277: JSR SomeParamCheck_809541
#_80927A: BCS CODE_80925E

CODE_80927C:
#_80927C: LDA.w $1BA5
#_80927F: STA.w $1B90
#_809282: LDX.w $0921,Y
#_809285: LDA.w $0831,Y
#_809288: JSR SomeParamCheck_809541
#_80928B: BCC CODE_809298
#_80928D: LDX.w $0932,Y
#_809290: LDA.w $0842,Y
#_809293: JSR SomeParamCheck_809541
#_809296: BCS CODE_80925E

CODE_809298:
#_809298: LDA.w $1BA5
#_80929B: STA.w $1B90
#_80929E: LDX.w $091F,Y
#_8092A1: LDA.w $082F,Y
#_8092A4: JSR SomeParamCheck_809541
#_8092A7: BCC CODE_8092B4
#_8092A9: LDX.w $092E,Y
#_8092AC: LDA.w $083E,Y
#_8092AF: JSR SomeParamCheck_809541
#_8092B2: BCS CODE_80925E

CODE_8092B4:
#_8092B4: LDA.w $1BA5
#_8092B7: STA.w $1B90
#_8092BA: LDX.w $090F,Y
#_8092BD: LDA.w $081F,Y
#_8092C0: JSR SomeParamCheck_809541
#_8092C3: BCC CODE_8092D0
#_8092C5: LDX.w $090E,Y
#_8092C8: LDA.w $081E,Y
#_8092CB: JSR SomeParamCheck_809541
#_8092CE: BCS CODE_80925E

CODE_8092D0:
#_8092D0: LDA.w $1BA5
#_8092D3: STA.w $1B90
#_8092D6: LDX.w $0911,Y
#_8092D9: LDA.w $0821,Y
#_8092DC: JSR SomeParamCheck_809541
#_8092DF: BCC CODE_8092EF
#_8092E1: LDX.w $0912,Y
#_8092E4: LDA.w $0822,Y
#_8092E7: JSR SomeParamCheck_809541
#_8092EA: BCC CODE_8092EF
#_8092EC: JMP.w CODE_80925E

CODE_8092EF:
#_8092EF: LDA.w $1BA5
#_8092F2: STA.w $1B90
#_8092F5: LDX.w $0920,Y
#_8092F8: LDA.w $0830,Y
#_8092FB: JSR SomeParamCheck_809541
#_8092FE: BCC CODE_80930E
#_809300: LDX.w $0930,Y
#_809303: LDA.w $0840,Y
#_809306: JSR SomeParamCheck_809541
#_809309: BCC CODE_80930E
#_80930B: JMP.w CODE_80925E

CODE_80930E:
#_80930E: CLC
#_80930F: RTS

;===================================================================================================

ROUTINE_809310:
#_809310: LDA.w $1BA5
#_809313: STA.w $1B90
#_809316: LDX.w $090F,Y
#_809319: LDA.w $081F,Y
#_80931C: JSR SomeParamCheck_809541
#_80931F: BCC CODE_80932F
#_809321: LDX.w $0911,Y
#_809324: LDA.w $0821,Y
#_809327: JSR SomeParamCheck_809541
#_80932A: BCC CODE_80932F

CODE_80932C:
#_80932C: JMP.w CODE_809239

CODE_80932F:
#_80932F: LDA.w $1BA5
#_809332: STA.w $1B90
#_809335: LDX.w $08F2,Y
#_809338: LDA.w $0802,Y
#_80933B: JSR SomeParamCheck_809541
#_80933E: BCC CODE_80934B
#_809340: LDX.w $0901,Y
#_809343: LDA.w $0811,Y
#_809346: JSR SomeParamCheck_809541
#_809349: BCS CODE_80932C

CODE_80934B:
#_80934B: LDA.w $1BA5
#_80934E: STA.w $1B90
#_809351: LDX.w $0921,Y
#_809354: LDA.w $0831,Y
#_809357: JSR SomeParamCheck_809541
#_80935A: BCC CODE_809367
#_80935C: LDX.w $0932,Y
#_80935F: LDA.w $0842,Y
#_809362: JSR SomeParamCheck_809541
#_809365: BCS CODE_80932C

CODE_809367:
#_809367: LDA.w $1BA5
#_80936A: STA.w $1B90
#_80936D: LDX.w $091F,Y
#_809370: LDA.w $082F,Y
#_809373: JSR SomeParamCheck_809541
#_809376: BCC CODE_809383
#_809378: LDX.w $092E,Y
#_80937B: LDA.w $083E,Y
#_80937E: JSR SomeParamCheck_809541
#_809381: BCS CODE_80932C

CODE_809383:
#_809383: LDA.w $1BA5
#_809386: STA.w $1B90
#_809389: LDX.w $090F,Y
#_80938C: LDA.w $081F,Y
#_80938F: JSR SomeParamCheck_809541
#_809392: BCC CODE_80939F
#_809394: LDX.w $090E,Y
#_809397: LDA.w $081E,Y
#_80939A: JSR SomeParamCheck_809541
#_80939D: BCS CODE_80932C

CODE_80939F:
#_80939F: LDA.w $1BA5
#_8093A2: STA.w $1B90
#_8093A5: LDX.w $0911,Y
#_8093A8: LDA.w $0821,Y
#_8093AB: JSR SomeParamCheck_809541
#_8093AE: BCC CODE_8093BE
#_8093B0: LDX.w $0912,Y
#_8093B3: LDA.w $0822,Y
#_8093B6: JSR SomeParamCheck_809541
#_8093B9: BCC CODE_8093BE
#_8093BB: JMP.w CODE_80932C

CODE_8093BE:
#_8093BE: LDA.w $1BA5
#_8093C1: STA.w $1B90
#_8093C4: LDX.w $0920,Y
#_8093C7: LDA.w $0830,Y
#_8093CA: JSR SomeParamCheck_809541
#_8093CD: BCC CODE_8093DD
#_8093CF: LDX.w $0930,Y
#_8093D2: LDA.w $0840,Y
#_8093D5: JSR SomeParamCheck_809541
#_8093D8: BCC CODE_8093DD
#_8093DA: JMP.w CODE_80932C

CODE_8093DD:
#_8093DD: CLC
#_8093DE: RTS

;===================================================================================================

ROUTINE_8093DF:
#_8093DF: LDA.w $1BA5
#_8093E2: STA.w $1B90
#_8093E5: LDX.w $08EE,Y
#_8093E8: LDA.w $07FE,Y
#_8093EB: JSR SomeParamCheck_809541
#_8093EE: BCC CODE_8093FE
#_8093F0: LDX.w $08FF,Y
#_8093F3: LDA.w $080F,Y
#_8093F6: JSR SomeParamCheck_809541
#_8093F9: BCC CODE_8093FE

CODE_8093FB:
#_8093FB: JMP.w CODE_809239

CODE_8093FE:
#_8093FE: LDA.w $1BA5
#_809401: STA.w $1B90
#_809404: LDX.w $08F2,Y
#_809407: LDA.w $0802,Y
#_80940A: JSR SomeParamCheck_809541
#_80940D: BCC CODE_80941A
#_80940F: LDX.w $0901,Y
#_809412: LDA.w $0811,Y
#_809415: JSR SomeParamCheck_809541
#_809418: BCS CODE_8093FB

CODE_80941A:
#_80941A: LDA.w $1BA5
#_80941D: STA.w $1B90
#_809420: LDX.w $0921,Y
#_809423: LDA.w $0831,Y
#_809426: JSR SomeParamCheck_809541
#_809429: BCC CODE_809436
#_80942B: LDX.w $0932,Y
#_80942E: LDA.w $0842,Y
#_809431: JSR SomeParamCheck_809541
#_809434: BCS CODE_8093FB

CODE_809436:
#_809436: LDA.w $1BA5
#_809439: STA.w $1B90
#_80943C: LDX.w $091F,Y
#_80943F: LDA.w $082F,Y
#_809442: JSR SomeParamCheck_809541
#_809445: BCC CODE_809452
#_809447: LDX.w $092E,Y
#_80944A: LDA.w $083E,Y
#_80944D: JSR SomeParamCheck_809541
#_809450: BCS CODE_8093FB

CODE_809452:
#_809452: LDA.w $1BA5
#_809455: STA.w $1B90
#_809458: LDX.w $090F,Y
#_80945B: LDA.w $081F,Y
#_80945E: JSR SomeParamCheck_809541
#_809461: BCC CODE_80946E
#_809463: LDX.w $090E,Y
#_809466: LDA.w $081E,Y
#_809469: JSR SomeParamCheck_809541
#_80946C: BCS CODE_8093FB

CODE_80946E:
#_80946E: LDA.w $1BA5
#_809471: STA.w $1B90
#_809474: LDX.w $0920,Y
#_809477: LDA.w $0830,Y
#_80947A: JSR SomeParamCheck_809541
#_80947D: BCC CODE_80948D
#_80947F: LDX.w $0930,Y
#_809482: LDA.w $0840,Y
#_809485: JSR SomeParamCheck_809541
#_809488: BCC CODE_80948D
#_80948A: JMP.w CODE_8093FB

CODE_80948D:
#_80948D: CLC
#_80948E: RTS

;===================================================================================================

ROUTINE_80948F:
#_80948F: LDA.w $1BA5
#_809492: STA.w $1B90
#_809495: LDX.w $08EE,Y
#_809498: LDA.w $07FE,Y
#_80949B: JSR SomeParamCheck_809541
#_80949E: BCC CODE_8094AE
#_8094A0: LDX.w $08FF,Y
#_8094A3: LDA.w $080F,Y
#_8094A6: JSR SomeParamCheck_809541
#_8094A9: BCC CODE_8094AE

CODE_8094AB:
#_8094AB: JMP.w CODE_809239

CODE_8094AE:
#_8094AE: LDA.w $1BA5
#_8094B1: STA.w $1B90
#_8094B4: LDX.w $08F2,Y
#_8094B7: LDA.w $0802,Y
#_8094BA: JSR SomeParamCheck_809541
#_8094BD: BCC CODE_8094CA
#_8094BF: LDX.w $0901,Y
#_8094C2: LDA.w $0811,Y
#_8094C5: JSR SomeParamCheck_809541
#_8094C8: BCS CODE_8094AB

CODE_8094CA:
#_8094CA: LDA.w $1BA5
#_8094CD: STA.w $1B90
#_8094D0: LDX.w $0921,Y
#_8094D3: LDA.w $0831,Y
#_8094D6: JSR SomeParamCheck_809541
#_8094D9: BCC CODE_8094E6
#_8094DB: LDX.w $0932,Y
#_8094DE: LDA.w $0842,Y
#_8094E1: JSR SomeParamCheck_809541
#_8094E4: BCS CODE_8094AB

CODE_8094E6:
#_8094E6: LDA.w $1BA5
#_8094E9: STA.w $1B90
#_8094EC: LDX.w $091F,Y
#_8094EF: LDA.w $082F,Y
#_8094F2: JSR SomeParamCheck_809541
#_8094F5: BCC CODE_809502
#_8094F7: LDX.w $092E,Y
#_8094FA: LDA.w $083E,Y
#_8094FD: JSR SomeParamCheck_809541
#_809500: BCS CODE_8094AB

CODE_809502:
#_809502: LDA.w $1BA5
#_809505: STA.w $1B90
#_809508: LDX.w $0911,Y
#_80950B: LDA.w $0821,Y
#_80950E: JSR SomeParamCheck_809541
#_809511: BCC CODE_809520
#_809513: LDX.w $0912,Y
#_809516: LDA.w $0822,Y
#_809519: JSR SomeParamCheck_809541
#_80951C: BCC CODE_809520
#_80951E: BRA CODE_8094AB

CODE_809520:
#_809520: LDA.w $1BA5
#_809523: STA.w $1B90
#_809526: LDX.w $0920,Y
#_809529: LDA.w $0830,Y
#_80952C: JSR SomeParamCheck_809541
#_80952F: BCC CODE_80953F
#_809531: LDX.w $0930,Y
#_809534: LDA.w $0840,Y
#_809537: JSR SomeParamCheck_809541
#_80953A: BCC CODE_80953F
#_80953C: JMP.w CODE_8094AB

CODE_80953F:
#_80953F: CLC
#_809540: RTS

;===================================================================================================

SomeParamCheck_809541:
#_809541: PHA
#_809542: CMP.b #$00
#_809544: BEQ .fail
#_809546: CMP.b #$FF
#_809548: BEQ .fail
#_80954A: CMP.b #$07
#_80954C: BEQ .fail
#_80954E: AND.b #$07
#_809550: CMP.w $1B8F
#_809553: BNE .fail
#_809555: TXA
#_809556: BNE .fail
#_809558: PLA
#_809559: JSR SomeParamCheck_809742
#_80955C: SEC
#_80955D: RTS

.fail
#_80955E: PLA
#_80955F: CLC
#_809560: RTS

;===================================================================================================

ROUTINE_809561:
#_809561: LDA.l $7E27E9
#_809565: CMP.b #$01
#_809567: BNE CODE_80956B
#_809569: CLC
#_80956A: RTS

CODE_80956B:
#_80956B: LDA.w $146D
#_80956E: BEQ CODE_809572
#_809570: CLC
#_809571: RTS

CODE_809572:
#_809572: LDY.b #$0F

CODE_809574:
#_809574: PHY
#_809575: LDA.w $0AE2,Y
#_809578: CMP.b #$81
#_80957A: BEQ CODE_809582

CODE_80957C:
#_80957C: PLY
#_80957D: DEY
#_80957E: BPL CODE_809574
#_809580: CLC
#_809581: RTS

CODE_809582:
#_809582: LDA.w $0AF2,Y
#_809585: TAX
#_809586: LDA.l UNREACH_80CCCD,X
#_80958A: ORA.w $0B02,Y
#_80958D: STA.w $1BB6
#_809590: LDY.w $1BB6
#_809593: LDA.w $0820,Y
#_809596: STA.b $12

CODE_809598:
#_809598: LDA.w $0830,Y
#_80959B: BNE CODE_8095A4
#_80959D: TYA
#_80959E: CLC
#_80959F: ADC.b #$10
#_8095A1: TAY
#_8095A2: BRA CODE_809598

CODE_8095A4:
#_8095A4: STY.w $1BB6
#_8095A7: LDA.b #$00
#_8095A9: STA.w $1B90
#_8095AC: LDY.w $1BB6
#_8095AF: LDA.b $12
#_8095B1: JSR SomeParamCheck_809742
#_8095B4: AND.b #$07
#_8095B6: STA.w $1B8F
#_8095B9: LDA.w $0830,Y
#_8095BC: CMP.b #$FF
#_8095BE: BEQ CODE_8095D4
#_8095C0: JSR SomeParamCheck_809752
#_8095C3: BCC CODE_8095D4
#_8095C5: LDA.w $0840,Y
#_8095C8: JSR SomeParamCheck_809752
#_8095CB: BCC CODE_8095D4

CODE_8095CD:
#_8095CD: LDA.b #$04
#_8095CF: STA.b $A8
#_8095D1: PLX
#_8095D2: SEC
#_8095D3: RTS

CODE_8095D4:
#_8095D4: LDA.b #$00
#_8095D6: STA.w $1B90
#_8095D9: LDY.w $1BB6
#_8095DC: LDA.b $12
#_8095DE: JSR SomeParamCheck_809742
#_8095E1: AND.b #$07
#_8095E3: STA.w $1B8F
#_8095E6: LDA.w $081F,Y
#_8095E9: CMP.b #$FF
#_8095EB: BEQ CODE_8095FA
#_8095ED: JSR SomeParamCheck_809752
#_8095F0: BCC CODE_8095FA
#_8095F2: LDA.w $0821,Y
#_8095F5: JSR SomeParamCheck_809752
#_8095F8: BCS CODE_8095CD

CODE_8095FA:
#_8095FA: LDA.b #$00
#_8095FC: STA.w $1B90
#_8095FF: LDY.w $1BB6
#_809602: LDA.b $12
#_809604: JSR SomeParamCheck_809742
#_809607: AND.b #$07
#_809609: STA.w $1B8F
#_80960C: LDA.w $081F,Y
#_80960F: CMP.b #$FF
#_809611: BEQ CODE_809620
#_809613: JSR SomeParamCheck_809752
#_809616: BCC CODE_809620
#_809618: LDA.w $081E,Y
#_80961B: JSR SomeParamCheck_809752
#_80961E: BCS CODE_8095CD

CODE_809620:
#_809620: LDA.b #$00
#_809622: STA.w $1B90
#_809625: LDY.w $1BB6
#_809628: LDA.b $12
#_80962A: JSR SomeParamCheck_809742
#_80962D: AND.b #$07
#_80962F: STA.w $1B8F
#_809632: LDA.w $082F,Y
#_809635: CMP.b #$FF
#_809637: BEQ CODE_809646
#_809639: JSR SomeParamCheck_809752
#_80963C: BCC CODE_809646
#_80963E: LDA.w $083E,Y
#_809641: JSR SomeParamCheck_809752
#_809644: BCS CODE_8095CD

CODE_809646:
#_809646: LDA.b #$00
#_809648: STA.w $1B90
#_80964B: LDY.w $1BB6
#_80964E: LDA.b $12
#_809650: JSR SomeParamCheck_809742
#_809653: AND.b #$07
#_809655: STA.w $1B8F
#_809658: LDA.w $0831,Y
#_80965B: CMP.b #$FF
#_80965D: BEQ CODE_80966F
#_80965F: JSR SomeParamCheck_809752
#_809662: BCC CODE_80966F
#_809664: LDA.w $0842,Y
#_809667: JSR SomeParamCheck_809752
#_80966A: BCC CODE_80966F
#_80966C: JMP.w CODE_8095CD

CODE_80966F:
#_80966F: LDA.b #$00
#_809671: STA.w $1B90
#_809674: LDY.w $1BB6
#_809677: LDA.b $12
#_809679: JSR SomeParamCheck_809742
#_80967C: AND.b #$07
#_80967E: STA.w $1B8F
#_809681: LDA.w $080F,Y
#_809684: CMP.b #$FF
#_809686: BEQ CODE_809698
#_809688: JSR SomeParamCheck_809752
#_80968B: BCC CODE_809698
#_80968D: LDA.w $0831,Y
#_809690: JSR SomeParamCheck_809752
#_809693: BCC CODE_809698
#_809695: JMP.w CODE_8095CD

CODE_809698:
#_809698: LDA.b #$00
#_80969A: STA.w $1B90
#_80969D: LDY.w $1BB6
#_8096A0: LDA.b $12
#_8096A2: JSR SomeParamCheck_809742
#_8096A5: AND.b #$07
#_8096A7: STA.w $1B8F
#_8096AA: LDA.w $0811,Y
#_8096AD: CMP.b #$FF
#_8096AF: BEQ CODE_8096C1
#_8096B1: JSR SomeParamCheck_809752
#_8096B4: BCC CODE_8096C1
#_8096B6: LDA.w $082F,Y
#_8096B9: JSR SomeParamCheck_809752
#_8096BC: BCC CODE_8096C1
#_8096BE: JMP.w CODE_8095CD

CODE_8096C1:
#_8096C1: LDA.b #$00
#_8096C3: STA.w $1B90
#_8096C6: LDY.w $1BB6
#_8096C9: LDA.b $12
#_8096CB: JSR SomeParamCheck_809742
#_8096CE: AND.b #$07
#_8096D0: STA.w $1B8F
#_8096D3: LDA.w $080F,Y
#_8096D6: CMP.b #$FF
#_8096D8: BEQ CODE_8096EA
#_8096DA: JSR SomeParamCheck_809752
#_8096DD: BCC CODE_8096EA
#_8096DF: LDA.w $07FE,Y
#_8096E2: JSR SomeParamCheck_809752
#_8096E5: BCC CODE_8096EA
#_8096E7: JMP.w CODE_8095CD

CODE_8096EA:
#_8096EA: LDA.b #$00
#_8096EC: STA.w $1B90
#_8096EF: LDY.w $1BB6
#_8096F2: LDA.b $12
#_8096F4: JSR SomeParamCheck_809742
#_8096F7: AND.b #$07
#_8096F9: STA.w $1B8F
#_8096FC: LDA.w $0811,Y
#_8096FF: CMP.b #$FF
#_809701: BEQ CODE_809713
#_809703: JSR SomeParamCheck_809752
#_809706: BCC CODE_809713
#_809708: LDA.w $0802,Y
#_80970B: JSR SomeParamCheck_809752
#_80970E: BCC CODE_809713
#_809710: JMP.w CODE_8095CD

CODE_809713:
#_809713: LDA.b #$00
#_809715: STA.w $1B90
#_809718: LDY.w $1BB6
#_80971B: LDA.b $12
#_80971D: JSR SomeParamCheck_809742
#_809720: AND.b #$07
#_809722: STA.w $1B8F
#_809725: LDA.w $0821,Y
#_809728: CMP.b #$FF
#_80972A: BNE CODE_80972F

CODE_80972C:
#_80972C: JMP.w CODE_80957C

CODE_80972F:
#_80972F: JSR SomeParamCheck_809752
#_809732: BCC CODE_80972C
#_809734: LDA.w $0822,Y
#_809737: JSR SomeParamCheck_809752
#_80973A: BCS CODE_80973F
#_80973C: JMP.w CODE_80957C

CODE_80973F:
#_80973F: JMP.w CODE_8095CD

;===================================================================================================

SomeParamCheck_809742:
#_809742: PHA
#_809743: ASL A
#_809744: BCS .fail
#_809746: ASL A
#_809747: ASL A
#_809748: ASL A
#_809749: BCC .fail
#_80974B: LDA.b #$01
#_80974D: STA.w $1B90

.fail
#_809750: PLA
#_809751: RTS

;===================================================================================================

SomeParamCheck_809752:
#_809752: PHA
#_809753: CMP.b #$00
#_809755: BEQ .fail
#_809757: CMP.b #$FF
#_809759: BEQ .fail
#_80975B: CMP.b #$07
#_80975D: BEQ .fail
#_80975F: AND.b #$07
#_809761: CMP.w $1B8F
#_809764: BNE .fail
#_809766: PLA
#_809767: JSR SomeParamCheck_809742
#_80976A: SEC
#_80976B: RTS

.fail
#_80976C: PLA
#_80976D: CLC
#_80976E: RTS

;===================================================================================================

ROUTINE_80976F:
#_80976F: LDA.w $1BAB
#_809772: BEQ .zero

#_809774: DEC.w $1BAB

#_809777: LDA.b #$04
#_809779: STA.b $A8

#_80977B: SEC
#_80977C: RTS

.zero
#_80977D: CLC
#_80977E: RTS

;===================================================================================================

ROUTINE_80977F:
#_80977F: LDA.w $1B92
#_809782: BEQ CODE_80978B
#_809784: LDA.w $1BAD
#_809787: BNE CODE_80978B
#_809789: CLC
#_80978A: RTS

CODE_80978B:
#_80978B: LDA.b #$00
#_80978D: STA.w $1BA7
#_809790: STA.w $1BA8
#_809793: STA.w $1BA9
#_809796: LDX.b #$07
#_809798: LDA.w $1BA7
#_80979B: CLC

CODE_80979C:
#_80979C: ADC.w $0AB7,X
#_80979F: DEX
#_8097A0: BPL CODE_80979C
#_8097A2: STA.w $1BA7
#_8097A5: LDX.b #$07
#_8097A7: LDA.w $1BA8
#_8097AA: CLC

CODE_8097AB:
#_8097AB: ADC.w $0AC7,X
#_8097AE: DEX
#_8097AF: BPL CODE_8097AB
#_8097B1: STA.w $1BA8
#_8097B4: LDX.b #$07
#_8097B6: LDA.w $1BA9
#_8097B9: CLC

CODE_8097BA:
#_8097BA: ADC.w $0AD7,X
#_8097BD: DEX
#_8097BE: BPL CODE_8097BA
#_8097C0: STA.w $1BA9
#_8097C3: CLC
#_8097C4: ADC.w $1BA8
#_8097C7: ADC.w $1BA7
#_8097CA: ADC.w $0AE0
#_8097CD: STA.w $1BAA
#_8097D0: CMP.b #$03
#_8097D2: BCC CODE_8097F5
#_8097D4: LDY.b #$00
#_8097D6: LDX.b #$07

CODE_8097D8:
#_8097D8: LDA.w $0AC7,X
#_8097DB: BNE CODE_8097E5

CODE_8097DD:
#_8097DD: DEX
#_8097DE: BPL CODE_8097D8
#_8097E0: TYA
#_8097E1: BEQ CODE_8097F5
#_8097E3: BNE CODE_809800

CODE_8097E5:
#_8097E5: LDA.w $0AB7,X
#_8097E8: BEQ CODE_8097DD
#_8097EA: CLC
#_8097EB: ADC.w $0AC7,X
#_8097EE: CMP.b #$03
#_8097F0: BCC CODE_8097DD
#_8097F2: INY
#_8097F3: BRA CODE_8097DD

CODE_8097F5:
#_8097F5: LDA.b #$80
#_8097F7: STA.w $1BAB
#_8097FA: LDA.b #$04
#_8097FC: STA.b $A8
#_8097FE: SEC
#_8097FF: RTS

CODE_809800:
#_809800: CLC
#_809801: RTS

;===================================================================================================

ROUTINE_809802:
#_809802: LDA.w $146D
#_809805: CMP.b #$1A
#_809807: BEQ CODE_80980B
#_809809: CLC
#_80980A: RTS

CODE_80980B:
#_80980B: LDY.w $1416
#_80980E: LDA.w $147D
#_809811: BEQ CODE_809826
#_809813: LDA.w $0821,Y
#_809816: CMP.b #$FF
#_809818: BNE CODE_809820

CODE_80981A:
#_80981A: LDA.b #$40
#_80981C: STA.b $B0
#_80981E: SEC
#_80981F: RTS

CODE_809820:
#_809820: LDA.b #$01
#_809822: STA.b $B0
#_809824: SEC
#_809825: RTS

CODE_809826:
#_809826: LDA.w $081F,Y
#_809829: CMP.b #$FF
#_80982B: BEQ CODE_80981A
#_80982D: LDA.b #$02
#_80982F: STA.b $B0
#_809831: SEC
#_809832: RTS

;===================================================================================================

ROUTINE_809833:
#_809833: LDA.w $1B91
#_809836: BEQ CODE_80983A
#_809838: CLC
#_809839: RTS

CODE_80983A:
#_80983A: LDA.w $1B92
#_80983D: BEQ CODE_809841
#_80983F: CLC
#_809840: RTS

CODE_809841:
#_809841: LDA.w $1AD4
#_809844: BEQ CODE_809848
#_809846: CLC
#_809847: RTS

;---------------------------------------------------------------------------------------------------

CODE_809848:
#_809848: LDA.w $1416
#_80984B: PHA
#_80984C: LDA.b #$01
#_80984E: STA.w $1BA6

CODE_809851:
#_809851: LDA.w $1416
#_809854: CLC
#_809855: ADC.b #$F0
#_809857: STA.w $1416
#_80985A: TAY
#_80985B: JSR ROUTINE_80989D
#_80985E: BCS CODE_809870
#_809860: INC.w $1BA6
#_809863: LDA.w $1BA6
#_809866: CMP.b #$0A
#_809868: BNE CODE_809851
#_80986A: PLA
#_80986B: STA.w $1416
#_80986E: CLC
#_80986F: RTS

CODE_809870:
#_809870: STA.w $1B91
#_809873: LDX.w $1BA6
#_809876: LDA.l UNREACH_809B5A,X
#_80987A: ORA.w $1B91
#_80987D: STA.w $1B91
#_809880: BMI CODE_809892
#_809882: LDA.w $147D
#_809885: BEQ CODE_809897

CODE_809887:
#_809887: LDA.w $1B91
#_80988A: CLC
#_80988B: ADC.b #$0A
#_80988D: STA.w $1B91
#_809890: BRA CODE_809897

CODE_809892:
#_809892: LDA.w $147D
#_809895: BEQ CODE_809887

CODE_809897:
#_809897: PLA
#_809898: STA.w $1416
#_80989B: SEC
#_80989C: RTS

;===================================================================================================

ROUTINE_80989D:
#_80989D: LDA.w $0821,Y
#_8098A0: BEQ CODE_8098A6
#_8098A2: CMP.b #$FF
#_8098A4: BNE CODE_8098A9

CODE_8098A6:
#_8098A6: JMP.w CODE_8099F8

CODE_8098A9:
#_8098A9: LDY.w $1416
#_8098AC: LDA.b #$00
#_8098AE: STA.w $1B90
#_8098B1: LDA.w $0811,Y
#_8098B4: BEQ CODE_8098EA
#_8098B6: CMP.b #$FF
#_8098B8: BEQ CODE_8098EA
#_8098BA: JSR SomeParamCheck_809742
#_8098BD: AND.b #$07
#_8098BF: STA.w $1B8F
#_8098C2: LDA.w $1416
#_8098C5: CLC
#_8098C6: ADC.b #$01
#_8098C8: TAY
#_8098C9: LDA.w $0821,Y
#_8098CC: JSR SomeParamCheck_809752
#_8098CF: BCC CODE_8098EA
#_8098D1: LDA.w $0822,Y
#_8098D4: JSR SomeParamCheck_809752
#_8098D7: BCC CODE_8098EA

CODE_8098D9:
#_8098D9: LDA.w $1B90
#_8098DC: BEQ CODE_8098E5
#_8098DE: SEC
#_8098DF: LDY.w $1416
#_8098E2: LDA.b #$00
#_8098E4: RTS

CODE_8098E5:
#_8098E5: CLC
#_8098E6: LDY.w $1416
#_8098E9: RTS

CODE_8098EA:
#_8098EA: LDY.w $1416
#_8098ED: LDA.b #$00
#_8098EF: STA.w $1B90
#_8098F2: LDA.w $0811,Y
#_8098F5: BEQ CODE_809924
#_8098F7: CMP.b #$FF
#_8098F9: BEQ CODE_809924
#_8098FB: JSR SomeParamCheck_809742
#_8098FE: AND.b #$07
#_809900: STA.w $1B8F
#_809903: LDA.w $1416
#_809906: CLC
#_809907: ADC.b #$01
#_809909: TAY
#_80990A: LDA.w $0830,Y
#_80990D: JSR SomeParamCheck_809752
#_809910: BCC CODE_809924
#_809912: LDA.w $0840,Y
#_809915: JSR SomeParamCheck_809752
#_809918: BCC CODE_809924
#_80991A: LDA.w $0820,Y
#_80991D: JSR SomeParamCheck_809752
#_809920: BCS CODE_809924
#_809922: BRA CODE_8098D9

CODE_809924:
#_809924: LDY.w $1416
#_809927: LDA.b #$00
#_809929: STA.w $1B90
#_80992C: LDA.w $0811,Y
#_80992F: BEQ CODE_80995F
#_809931: CMP.b #$FF
#_809933: BEQ CODE_80995F
#_809935: JSR SomeParamCheck_809742
#_809938: AND.b #$07
#_80993A: STA.w $1B8F
#_80993D: LDA.w $1416
#_809940: CLC
#_809941: ADC.b #$01
#_809943: TAY
#_809944: LDA.w $0800,Y
#_809947: JSR SomeParamCheck_809752
#_80994A: BCC CODE_80995F
#_80994C: LDA.w $0830,Y
#_80994F: JSR SomeParamCheck_809752
#_809952: BCC CODE_80995F
#_809954: LDA.w $0820,Y
#_809957: JSR SomeParamCheck_809752
#_80995A: BCS CODE_80995F
#_80995C: JMP.w CODE_8098D9

CODE_80995F:
#_80995F: LDY.w $1416
#_809962: LDA.b #$00
#_809964: STA.w $1B90
#_809967: LDA.w $0821,Y
#_80996A: BEQ CODE_809992
#_80996C: CMP.b #$FF
#_80996E: BEQ CODE_809992
#_809970: JSR SomeParamCheck_809742
#_809973: AND.b #$07
#_809975: STA.w $1B8F
#_809978: LDA.w $1416
#_80997B: CLC
#_80997C: ADC.b #$01
#_80997E: TAY
#_80997F: LDA.w $0810,Y
#_809982: JSR SomeParamCheck_809752
#_809985: BCC CODE_809992
#_809987: LDA.w $0811,Y
#_80998A: JSR SomeParamCheck_809752
#_80998D: BCC CODE_809992
#_80998F: JMP.w CODE_8098D9

CODE_809992:
#_809992: LDY.w $1416
#_809995: LDA.b #$00
#_809997: STA.w $1B90
#_80999A: LDA.w $0821,Y
#_80999D: BEQ CODE_8099C5
#_80999F: CMP.b #$FF
#_8099A1: BEQ CODE_8099C5
#_8099A3: JSR SomeParamCheck_809742
#_8099A6: AND.b #$07
#_8099A8: STA.w $1B8F
#_8099AB: LDA.w $1416
#_8099AE: CLC
#_8099AF: ADC.b #$01
#_8099B1: TAY
#_8099B2: LDA.w $082E,Y
#_8099B5: JSR SomeParamCheck_809752
#_8099B8: BCC CODE_8099C5
#_8099BA: LDA.w $0830,Y
#_8099BD: JSR SomeParamCheck_809752
#_8099C0: BCC CODE_8099C5
#_8099C2: JMP.w CODE_8098D9

CODE_8099C5:
#_8099C5: LDY.w $1416
#_8099C8: LDA.b #$00
#_8099CA: STA.w $1B90
#_8099CD: LDA.w $0821,Y
#_8099D0: BEQ CODE_8099F8
#_8099D2: CMP.b #$FF
#_8099D4: BEQ CODE_8099F8
#_8099D6: JSR SomeParamCheck_809742
#_8099D9: AND.b #$07
#_8099DB: STA.w $1B8F
#_8099DE: LDA.w $1416
#_8099E1: CLC
#_8099E2: ADC.b #$01
#_8099E4: TAY
#_8099E5: LDA.w $0810,Y
#_8099E8: JSR SomeParamCheck_809752
#_8099EB: BCC CODE_8099F8
#_8099ED: LDA.w $080E,Y
#_8099F0: JSR SomeParamCheck_809752
#_8099F3: BCC CODE_8099F8
#_8099F5: JMP.w CODE_8098D9

CODE_8099F8:
#_8099F8: LDY.w $1416
#_8099FB: LDA.w $081F,Y
#_8099FE: BEQ CODE_809A04
#_809A00: CMP.b #$FF
#_809A02: BNE CODE_809A06

CODE_809A04:
#_809A04: BRA CODE_809A42

CODE_809A06:
#_809A06: LDY.w $1416
#_809A09: LDA.b #$00
#_809A0B: STA.w $1B90
#_809A0E: LDA.w $080F,Y
#_809A11: BEQ CODE_809A42
#_809A13: CMP.b #$FF
#_809A15: BEQ CODE_809A42
#_809A17: JSR SomeParamCheck_809742
#_809A1A: AND.b #$07
#_809A1C: STA.w $1B8F
#_809A1F: LDA.w $1416
#_809A22: CLC
#_809A23: ADC.b #$FF
#_809A25: TAY
#_809A26: LDA.w $081F,Y
#_809A29: JSR SomeParamCheck_809752
#_809A2C: BCC CODE_809A47
#_809A2E: LDA.w $081E,Y
#_809A31: JSR SomeParamCheck_809752
#_809A34: BCC CODE_809A47

CODE_809A36:
#_809A36: LDA.w $1B90
#_809A39: BEQ CODE_809A42
#_809A3B: SEC
#_809A3C: LDY.w $1416
#_809A3F: LDA.b #$80
#_809A41: RTS

CODE_809A42:
#_809A42: CLC
#_809A43: LDY.w $1416
#_809A46: RTS

CODE_809A47:
#_809A47: LDY.w $1416
#_809A4A: LDA.b #$00
#_809A4C: STA.w $1B90
#_809A4F: LDA.w $080F,Y
#_809A52: BEQ CODE_809A81
#_809A54: CMP.b #$FF
#_809A56: BEQ CODE_809A81
#_809A58: JSR SomeParamCheck_809742
#_809A5B: AND.b #$07
#_809A5D: STA.w $1B8F
#_809A60: LDA.w $1416
#_809A63: CLC
#_809A64: ADC.b #$FF
#_809A66: TAY
#_809A67: LDA.w $0830,Y
#_809A6A: JSR SomeParamCheck_809752
#_809A6D: BCC CODE_809A81
#_809A6F: LDA.w $0840,Y
#_809A72: JSR SomeParamCheck_809752
#_809A75: BCC CODE_809A81
#_809A77: LDA.w $0820,Y
#_809A7A: JSR SomeParamCheck_809752
#_809A7D: BCS CODE_809A81
#_809A7F: BRA CODE_809A36

CODE_809A81:
#_809A81: LDY.w $1416
#_809A84: LDA.b #$00
#_809A86: STA.w $1B90
#_809A89: LDA.w $080F,Y
#_809A8C: BEQ CODE_809ABC
#_809A8E: CMP.b #$FF
#_809A90: BEQ CODE_809ABC
#_809A92: JSR SomeParamCheck_809742
#_809A95: AND.b #$07
#_809A97: STA.w $1B8F
#_809A9A: LDA.w $1416
#_809A9D: CLC
#_809A9E: ADC.b #$FF
#_809AA0: TAY
#_809AA1: LDA.w $0800,Y
#_809AA4: JSR SomeParamCheck_809752
#_809AA7: BCC CODE_809ABC
#_809AA9: LDA.w $0830,Y
#_809AAC: JSR SomeParamCheck_809752
#_809AAF: BCC CODE_809ABC
#_809AB1: LDA.w $0820,Y
#_809AB4: JSR SomeParamCheck_809752
#_809AB7: BCS CODE_809ABC
#_809AB9: JMP.w CODE_809A36

CODE_809ABC:
#_809ABC: LDY.w $1416
#_809ABF: LDA.b #$00
#_809AC1: STA.w $1B90
#_809AC4: LDA.w $081F,Y
#_809AC7: BEQ CODE_809AEF
#_809AC9: CMP.b #$FF
#_809ACB: BEQ CODE_809AEF
#_809ACD: JSR SomeParamCheck_809742
#_809AD0: AND.b #$07
#_809AD2: STA.w $1B8F
#_809AD5: LDA.w $1416
#_809AD8: CLC
#_809AD9: ADC.b #$FF
#_809ADB: TAY
#_809ADC: LDA.w $0810,Y
#_809ADF: JSR SomeParamCheck_809752
#_809AE2: BCC CODE_809AEF
#_809AE4: LDA.w $080F,Y
#_809AE7: JSR SomeParamCheck_809752
#_809AEA: BCC CODE_809AEF
#_809AEC: JMP.w CODE_809A36

CODE_809AEF:
#_809AEF: LDY.w $1416
#_809AF2: LDA.b #$00
#_809AF4: STA.w $1B90
#_809AF7: LDA.w $081F,Y
#_809AFA: BEQ CODE_809B22
#_809AFC: CMP.b #$FF
#_809AFE: BEQ CODE_809B22
#_809B00: JSR SomeParamCheck_809742
#_809B03: AND.b #$07
#_809B05: STA.w $1B8F
#_809B08: LDA.w $1416
#_809B0B: CLC
#_809B0C: ADC.b #$FF
#_809B0E: TAY
#_809B0F: LDA.w $0830,Y
#_809B12: JSR SomeParamCheck_809752
#_809B15: BCC CODE_809B22
#_809B17: LDA.w $0832,Y
#_809B1A: JSR SomeParamCheck_809752
#_809B1D: BCC CODE_809B22
#_809B1F: JMP.w CODE_809A36

CODE_809B22:
#_809B22: LDY.w $1416
#_809B25: LDA.b #$00
#_809B27: STA.w $1B90
#_809B2A: LDA.w $081F,Y
#_809B2D: BEQ CODE_809B55
#_809B2F: CMP.b #$FF
#_809B31: BEQ CODE_809B55
#_809B33: JSR SomeParamCheck_809742
#_809B36: AND.b #$07
#_809B38: STA.w $1B8F
#_809B3B: LDA.w $1416
#_809B3E: CLC
#_809B3F: ADC.b #$FF
#_809B41: TAY
#_809B42: LDA.w $0810,Y
#_809B45: JSR SomeParamCheck_809752
#_809B48: BCC CODE_809B55
#_809B4A: LDA.w $0812,Y
#_809B4D: JSR SomeParamCheck_809752
#_809B50: BCC CODE_809B55
#_809B52: JMP.w CODE_809A36

CODE_809B55:
#_809B55: CLC
#_809B56: LDY.w $1416
#_809B59: RTS

UNREACH_809B5A:
#_809B5A: db $00,$0E,$1C,$26,$34,$3D,$46,$52
#_809B62: db $5C,$66

;===================================================================================================

ROUTINE_809B64:
#_809B64: LDX.b #$00
#_809B66: LDY.w $1416
#_809B69: LDA.w $1B91
#_809B6C: AND.b #$7F
#_809B6E: BNE CODE_809B75
#_809B70: STA.w $1B91
#_809B73: CLC
#_809B74: RTS

CODE_809B75:
#_809B75: DEC.w $1B91
#_809B78: LDA.w $1B91
#_809B7B: AND.b #$7F
#_809B7D: BEQ CODE_809BAC
#_809B7F: LDA.w $1B91
#_809B82: BMI CODE_809B98
#_809B84: LDA.w $1ADA
#_809B87: CMP.b #$FF
#_809B89: BNE CODE_809B92
#_809B8B: LDA.b #$00
#_809B8D: STA.w $1B91
#_809B90: CLC
#_809B91: RTS

CODE_809B92:
#_809B92: LDA.b #$01
#_809B94: STA.b $A8
#_809B96: SEC
#_809B97: RTS

CODE_809B98:
#_809B98: LDA.w $1AD8
#_809B9B: CMP.b #$FF
#_809B9D: BNE CODE_809BA6
#_809B9F: LDA.b #$00
#_809BA1: STA.w $1B91
#_809BA4: CLC
#_809BA5: RTS

CODE_809BA6:
#_809BA6: LDA.b #$02
#_809BA8: STA.b $A8
#_809BAA: SEC
#_809BAB: RTS

CODE_809BAC:
#_809BAC: LDA.w $1B91
#_809BAF: BMI CODE_809BCC
#_809BB1: LDA.w $1ADA
#_809BB4: BEQ CODE_809BC5
#_809BB6: CMP.b #$FF
#_809BB8: BEQ CODE_809BC5
#_809BBA: LDA.b #$80
#_809BBC: STA.b $B0
#_809BBE: LDA.b #$00
#_809BC0: STA.w $1B91
#_809BC3: SEC
#_809BC4: RTS

CODE_809BC5:
#_809BC5: LDA.b #$00
#_809BC7: STA.w $1B91
#_809BCA: CLC
#_809BCB: RTS

CODE_809BCC:
#_809BCC: LDA.w $1AD8
#_809BCF: BEQ CODE_809BE0
#_809BD1: CMP.b #$FF
#_809BD3: BEQ CODE_809BE0
#_809BD5: LDA.b #$80
#_809BD7: STA.b $B0
#_809BD9: LDA.b #$00
#_809BDB: STA.w $1B91
#_809BDE: SEC
#_809BDF: RTS

CODE_809BE0:
#_809BE0: LDA.b #$00
#_809BE2: STA.w $1B91
#_809BE5: CLC
#_809BE6: RTS

;===================================================================================================

ROUTINE_809BE7:
#_809BE7: LDA.b #$00
#_809BE9: STA.w $1BAC
#_809BEC: LDX.b #$00
#_809BEE: LDY.w $1416
#_809BF1: LDA.w $1AD4
#_809BF4: BNE CODE_809BFA
#_809BF6: JSR ROUTINE_809D50
#_809BF9: RTS

CODE_809BFA:
#_809BFA: LDA.b #$00
#_809BFC: STA.w $1B90
#_809BFF: LDA.w $1AD4
#_809C02: JSR SomeParamCheck_809742
#_809C05: AND.b #$07
#_809C07: STA.w $1B8F
#_809C0A: LDA.w $1B90
#_809C0D: STA.w $1BA5
#_809C10: JSR ROUTINE_809C7F
#_809C13: BCC CODE_809C16
#_809C15: RTS

CODE_809C16:
#_809C16: LDA.w $0821,Y
#_809C19: BNE CODE_809C30
#_809C1B: LDA.w $0831,Y
#_809C1E: BEQ CODE_809C7E
#_809C20: LDA.b #$01
#_809C22: JSR ROUTINE_80A0AD
#_809C25: BCC CODE_809C4A

CODE_809C27:
#_809C27: LDA.w $1B90
#_809C2A: BEQ CODE_809C7E
#_809C2C: JSR ROUTINE_80A2A1
#_809C2F: RTS

CODE_809C30:
#_809C30: LDA.w $0811,Y
#_809C33: BNE CODE_809C3E
#_809C35: LDA.b #$F1
#_809C37: JSR ROUTINE_80A0AD
#_809C3A: BCC CODE_809C4A
#_809C3C: BCS CODE_809C27

CODE_809C3E:
#_809C3E: LDA.w $0801,Y
#_809C41: BNE CODE_809C4A
#_809C43: LDA.b #$E1
#_809C45: JSR ROUTINE_80A0AD
#_809C48: BCS CODE_809C27

CODE_809C4A:
#_809C4A: LDA.w $081F,Y
#_809C4D: BNE CODE_809C64
#_809C4F: LDA.w $082F,Y
#_809C52: BEQ CODE_809C7E
#_809C54: LDA.b #$FF
#_809C56: JSR ROUTINE_809FEA
#_809C59: BCC CODE_809C7E

CODE_809C5B:
#_809C5B: LDA.w $1B90
#_809C5E: BEQ CODE_809C7E
#_809C60: JSR ROUTINE_80A295
#_809C63: RTS

CODE_809C64:
#_809C64: LDA.w $080F,Y
#_809C67: BNE CODE_809C72
#_809C69: LDA.b #$EF
#_809C6B: JSR ROUTINE_809FEA
#_809C6E: BCC CODE_809C7E
#_809C70: BCS CODE_809C5B

CODE_809C72:
#_809C72: LDA.w $07FF,Y
#_809C75: BNE CODE_809C7E
#_809C77: LDA.b #$DF
#_809C79: JSR ROUTINE_809FEA
#_809C7C: BCS CODE_809C5B

CODE_809C7E:
#_809C7E: RTS

;===================================================================================================

ROUTINE_809C7F:
#_809C7F: LDA.w $0830,Y
#_809C82: BNE CODE_809C8B
#_809C84: TYA
#_809C85: CLC
#_809C86: ADC.b #$10
#_809C88: TAY
#_809C89: BRA ROUTINE_809C7F

CODE_809C8B:
#_809C8B: LDA.w $1BA5
#_809C8E: STA.w $1B90
#_809C91: LDA.w $081F,Y
#_809C94: JSR SomeParamCheck_809752
#_809C97: BCC CODE_809CAE
#_809C99: LDA.w $0821,Y
#_809C9C: JSR SomeParamCheck_809752
#_809C9F: BCC CODE_809CAE

CODE_809CA1:
#_809CA1: LDA.w $1B90
#_809CA4: BNE CODE_809CA8
#_809CA6: CLC
#_809CA7: RTS

CODE_809CA8:
#_809CA8: LDA.b #$40
#_809CAA: STA.b $AF
#_809CAC: SEC
#_809CAD: RTS

CODE_809CAE:
#_809CAE: LDA.w $1BA5
#_809CB1: STA.w $1B90
#_809CB4: LDA.w $07FE,Y
#_809CB7: JSR SomeParamCheck_809752
#_809CBA: BCC CODE_809CC4
#_809CBC: LDA.w $080F,Y
#_809CBF: JSR SomeParamCheck_809752
#_809CC2: BCS CODE_809CA1

CODE_809CC4:
#_809CC4: LDA.w $1BA5
#_809CC7: STA.w $1B90
#_809CCA: LDA.w $0802,Y
#_809CCD: JSR SomeParamCheck_809752
#_809CD0: BCC CODE_809CDA
#_809CD2: LDA.w $0811,Y
#_809CD5: JSR SomeParamCheck_809752
#_809CD8: BCS CODE_809CA1

CODE_809CDA:
#_809CDA: LDA.w $1BA5
#_809CDD: STA.w $1B90
#_809CE0: LDA.w $0831,Y
#_809CE3: JSR SomeParamCheck_809752
#_809CE6: BCC CODE_809CF0
#_809CE8: LDA.w $0842,Y
#_809CEB: JSR SomeParamCheck_809752
#_809CEE: BCS CODE_809CA1

CODE_809CF0:
#_809CF0: LDA.w $1BA5
#_809CF3: STA.w $1B90
#_809CF6: LDA.w $082F,Y
#_809CF9: JSR SomeParamCheck_809752
#_809CFC: BCC CODE_809D06
#_809CFE: LDA.w $083E,Y
#_809D01: JSR SomeParamCheck_809752
#_809D04: BCS CODE_809CA1

CODE_809D06:
#_809D06: LDA.w $1BA5
#_809D09: STA.w $1B90
#_809D0C: LDA.w $081F,Y
#_809D0F: JSR SomeParamCheck_809752
#_809D12: BCC CODE_809D1C
#_809D14: LDA.w $081E,Y
#_809D17: JSR SomeParamCheck_809752
#_809D1A: BCS CODE_809CA1

CODE_809D1C:
#_809D1C: LDA.w $1BA5
#_809D1F: STA.w $1B90
#_809D22: LDA.w $0821,Y
#_809D25: JSR SomeParamCheck_809752
#_809D28: BCC CODE_809D35
#_809D2A: LDA.w $0822,Y
#_809D2D: JSR SomeParamCheck_809752
#_809D30: BCC CODE_809D35
#_809D32: JMP.w CODE_809CA1

CODE_809D35:
#_809D35: LDA.w $1BA5
#_809D38: STA.w $1B90
#_809D3B: LDA.w $0830,Y
#_809D3E: JSR SomeParamCheck_809752
#_809D41: BCC CODE_809D4E
#_809D43: LDA.w $0840,Y
#_809D46: JSR SomeParamCheck_809752
#_809D49: BCC CODE_809D4E
#_809D4B: JMP.w CODE_809CA1

CODE_809D4E:
#_809D4E: CLC
#_809D4F: RTS

;===================================================================================================

ROUTINE_809D50:
#_809D50: LDA.w $0821,Y
#_809D53: BEQ CODE_809D59
#_809D55: CMP.b #$FF
#_809D57: BNE CODE_809D5C

CODE_809D59:
#_809D59: JMP.w CODE_809E9A

CODE_809D5C:
#_809D5C: LDY.w $1416
#_809D5F: LDA.b #$00
#_809D61: STA.w $1B90
#_809D64: LDA.w $0811,Y
#_809D67: BEQ CODE_809D9D
#_809D69: CMP.b #$FF
#_809D6B: BEQ CODE_809D9D
#_809D6D: JSR SomeParamCheck_809742
#_809D70: AND.b #$07
#_809D72: STA.w $1B8F
#_809D75: LDA.w $1416
#_809D78: CLC
#_809D79: ADC.b #$01
#_809D7B: TAY
#_809D7C: LDA.w $0821,Y
#_809D7F: JSR SomeParamCheck_809752
#_809D82: BCC CODE_809D9D
#_809D84: LDA.w $0822,Y
#_809D87: JSR SomeParamCheck_809752
#_809D8A: BCC CODE_809D9D

CODE_809D8C:
#_809D8C: LDA.w $1B90
#_809D8F: BEQ CODE_809D99
#_809D91: JSR ROUTINE_80A2BB
#_809D94: LDA.b #$02
#_809D96: JSR ROUTINE_80A2C9

CODE_809D99:
#_809D99: LDY.w $1416
#_809D9C: RTS

CODE_809D9D:
#_809D9D: LDY.w $1416
#_809DA0: LDA.b #$00
#_809DA2: STA.w $1B90
#_809DA5: LDA.w $0811,Y
#_809DA8: BEQ CODE_809DCF
#_809DAA: CMP.b #$FF
#_809DAC: BEQ CODE_809DCF
#_809DAE: JSR SomeParamCheck_809742
#_809DB1: AND.b #$07
#_809DB3: STA.w $1B8F
#_809DB6: LDA.w $1416
#_809DB9: CLC
#_809DBA: ADC.b #$01
#_809DBC: TAY
#_809DBD: LDA.w $0830,Y
#_809DC0: JSR SomeParamCheck_809752
#_809DC3: BCC CODE_809DCF
#_809DC5: LDA.w $0840,Y
#_809DC8: JSR SomeParamCheck_809752
#_809DCB: BCC CODE_809DCF
#_809DCD: BRA CODE_809D8C

CODE_809DCF:
#_809DCF: LDY.w $1416
#_809DD2: LDA.b #$00
#_809DD4: STA.w $1B90
#_809DD7: LDA.w $0811,Y
#_809DDA: BEQ CODE_809E01
#_809DDC: CMP.b #$FF
#_809DDE: BEQ CODE_809E01
#_809DE0: JSR SomeParamCheck_809742
#_809DE3: AND.b #$07
#_809DE5: STA.w $1B8F
#_809DE8: LDA.w $1416
#_809DEB: CLC
#_809DEC: ADC.b #$01
#_809DEE: TAY
#_809DEF: LDA.w $0800,Y
#_809DF2: JSR SomeParamCheck_809752
#_809DF5: BCC CODE_809E01
#_809DF7: LDA.w $0830,Y
#_809DFA: JSR SomeParamCheck_809752
#_809DFD: BCC CODE_809E01
#_809DFF: BRA CODE_809D8C

CODE_809E01:
#_809E01: LDY.w $1416
#_809E04: LDA.b #$00
#_809E06: STA.w $1B90
#_809E09: LDA.w $0821,Y
#_809E0C: BEQ CODE_809E34
#_809E0E: CMP.b #$FF
#_809E10: BEQ CODE_809E34
#_809E12: JSR SomeParamCheck_809742
#_809E15: AND.b #$07
#_809E17: STA.w $1B8F
#_809E1A: LDA.w $1416
#_809E1D: CLC
#_809E1E: ADC.b #$01
#_809E20: TAY
#_809E21: LDA.w $0810,Y
#_809E24: JSR SomeParamCheck_809752
#_809E27: BCC CODE_809E34
#_809E29: LDA.w $0811,Y
#_809E2C: JSR SomeParamCheck_809752
#_809E2F: BCC CODE_809E34
#_809E31: JMP.w CODE_809D8C

CODE_809E34:
#_809E34: LDY.w $1416
#_809E37: LDA.b #$00
#_809E39: STA.w $1B90
#_809E3C: LDA.w $0821,Y
#_809E3F: BEQ CODE_809E67
#_809E41: CMP.b #$FF
#_809E43: BEQ CODE_809E67
#_809E45: JSR SomeParamCheck_809742
#_809E48: AND.b #$07
#_809E4A: STA.w $1B8F
#_809E4D: LDA.w $1416
#_809E50: CLC
#_809E51: ADC.b #$01
#_809E53: TAY
#_809E54: LDA.w $0810,Y
#_809E57: JSR SomeParamCheck_809752
#_809E5A: BCC CODE_809E67
#_809E5C: LDA.w $080E,Y
#_809E5F: JSR SomeParamCheck_809752
#_809E62: BCC CODE_809E67
#_809E64: JMP.w CODE_809D8C

CODE_809E67:
#_809E67: LDY.w $1416
#_809E6A: LDA.b #$00
#_809E6C: STA.w $1B90
#_809E6F: LDA.w $0821,Y
#_809E72: BEQ CODE_809E9A
#_809E74: CMP.b #$FF
#_809E76: BEQ CODE_809E9A
#_809E78: JSR SomeParamCheck_809742
#_809E7B: AND.b #$07
#_809E7D: STA.w $1B8F
#_809E80: LDA.w $1416
#_809E83: CLC
#_809E84: ADC.b #$01
#_809E86: TAY
#_809E87: LDA.w $080E,Y
#_809E8A: JSR SomeParamCheck_809752
#_809E8D: BCC CODE_809E9A
#_809E8F: LDA.w $0800,Y
#_809E92: JSR SomeParamCheck_809752
#_809E95: BCC CODE_809E9A
#_809E97: JMP.w CODE_809D8C

CODE_809E9A:
#_809E9A: LDY.w $1416
#_809E9D: LDA.w $081F,Y
#_809EA0: BEQ CODE_809EA6
#_809EA2: CMP.b #$FF
#_809EA4: BNE CODE_809EA8

CODE_809EA6:
#_809EA6: BRA CODE_809EE5

CODE_809EA8:
#_809EA8: LDY.w $1416
#_809EAB: LDA.b #$00
#_809EAD: STA.w $1B90
#_809EB0: LDA.w $080F,Y
#_809EB3: BEQ CODE_809EE5
#_809EB5: CMP.b #$FF
#_809EB7: BEQ CODE_809EE5
#_809EB9: JSR SomeParamCheck_809742
#_809EBC: AND.b #$07
#_809EBE: STA.w $1B8F
#_809EC1: LDA.w $1416
#_809EC4: CLC
#_809EC5: ADC.b #$FF
#_809EC7: TAY
#_809EC8: LDA.w $081F,Y
#_809ECB: JSR SomeParamCheck_809752
#_809ECE: BCC CODE_809EE9
#_809ED0: LDA.w $081E,Y
#_809ED3: JSR SomeParamCheck_809752
#_809ED6: BCC CODE_809EE9

CODE_809ED8:
#_809ED8: LDA.w $1B90
#_809EDB: BEQ CODE_809EE5
#_809EDD: JSR ROUTINE_80A2AF
#_809EE0: LDA.b #$01
#_809EE2: JSR ROUTINE_80A2C9

CODE_809EE5:
#_809EE5: LDY.w $1416
#_809EE8: RTS

CODE_809EE9:
#_809EE9: LDY.w $1416
#_809EEC: LDA.b #$00
#_809EEE: STA.w $1B90
#_809EF1: LDA.w $080F,Y
#_809EF4: BEQ CODE_809F1B
#_809EF6: CMP.b #$FF
#_809EF8: BEQ CODE_809F1B
#_809EFA: JSR SomeParamCheck_809742
#_809EFD: AND.b #$07
#_809EFF: STA.w $1B8F
#_809F02: LDA.w $1416
#_809F05: CLC
#_809F06: ADC.b #$FF
#_809F08: TAY
#_809F09: LDA.w $0830,Y
#_809F0C: JSR SomeParamCheck_809752
#_809F0F: BCC CODE_809F1B
#_809F11: LDA.w $0840,Y
#_809F14: JSR SomeParamCheck_809752
#_809F17: BCC CODE_809F1B
#_809F19: BRA CODE_809ED8

CODE_809F1B:
#_809F1B: LDY.w $1416
#_809F1E: LDA.b #$00
#_809F20: STA.w $1B90
#_809F23: LDA.w $080F,Y
#_809F26: BEQ CODE_809F4D
#_809F28: CMP.b #$FF
#_809F2A: BEQ CODE_809F4D
#_809F2C: JSR SomeParamCheck_809742
#_809F2F: AND.b #$07
#_809F31: STA.w $1B8F
#_809F34: LDA.w $1416
#_809F37: CLC
#_809F38: ADC.b #$FF
#_809F3A: TAY
#_809F3B: LDA.w $0800,Y
#_809F3E: JSR SomeParamCheck_809752
#_809F41: BCC CODE_809F4D
#_809F43: LDA.w $0830,Y
#_809F46: JSR SomeParamCheck_809752
#_809F49: BCC CODE_809F4D
#_809F4B: BRA CODE_809ED8

CODE_809F4D:
#_809F4D: LDY.w $1416
#_809F50: LDA.b #$00
#_809F52: STA.w $1B90
#_809F55: LDA.w $081F,Y
#_809F58: BEQ CODE_809F80
#_809F5A: CMP.b #$FF
#_809F5C: BEQ CODE_809F80
#_809F5E: JSR SomeParamCheck_809742
#_809F61: AND.b #$07
#_809F63: STA.w $1B8F
#_809F66: LDA.w $1416
#_809F69: CLC
#_809F6A: ADC.b #$FF
#_809F6C: TAY
#_809F6D: LDA.w $0810,Y
#_809F70: JSR SomeParamCheck_809752
#_809F73: BCC CODE_809F80
#_809F75: LDA.w $080F,Y
#_809F78: JSR SomeParamCheck_809752
#_809F7B: BCC CODE_809F80
#_809F7D: JMP.w CODE_809ED8

CODE_809F80:
#_809F80: LDY.w $1416
#_809F83: LDA.b #$00
#_809F85: STA.w $1B90
#_809F88: LDA.w $081F,Y
#_809F8B: BEQ CODE_809FB3
#_809F8D: CMP.b #$FF
#_809F8F: BEQ CODE_809FB3
#_809F91: JSR SomeParamCheck_809742
#_809F94: AND.b #$07
#_809F96: STA.w $1B8F
#_809F99: LDA.w $1416
#_809F9C: CLC
#_809F9D: ADC.b #$FF
#_809F9F: TAY
#_809FA0: LDA.w $0810,Y
#_809FA3: JSR SomeParamCheck_809752
#_809FA6: BCC CODE_809FB3
#_809FA8: LDA.w $0812,Y
#_809FAB: JSR SomeParamCheck_809752
#_809FAE: BCC CODE_809FB3
#_809FB0: JMP.w CODE_809ED8

CODE_809FB3:
#_809FB3: LDY.w $1416
#_809FB6: LDA.b #$00
#_809FB8: STA.w $1B90
#_809FBB: LDA.w $081F,Y
#_809FBE: BEQ CODE_809FE6
#_809FC0: CMP.b #$FF
#_809FC2: BEQ CODE_809FE6
#_809FC4: JSR SomeParamCheck_809742
#_809FC7: AND.b #$07
#_809FC9: STA.w $1B8F
#_809FCC: LDA.w $1416
#_809FCF: CLC
#_809FD0: ADC.b #$FF
#_809FD2: TAY
#_809FD3: LDA.w $0812,Y
#_809FD6: JSR SomeParamCheck_809752
#_809FD9: BCC CODE_809FE6
#_809FDB: LDA.w $0800,Y
#_809FDE: JSR SomeParamCheck_809752
#_809FE1: BCC CODE_809FE6
#_809FE3: JMP.w CODE_809ED8

CODE_809FE6:
#_809FE6: LDY.w $1416
#_809FE9: RTS

;===================================================================================================

ROUTINE_809FEA:
#_809FEA: CLC
#_809FEB: ADC.w $1416
#_809FEE: TAY
#_809FEF: LDA.w $1BA5
#_809FF2: STA.w $1B90
#_809FF5: LDA.w $0801,Y
#_809FF8: JSR SomeParamCheck_809752
#_809FFB: BCC CODE_80A009
#_809FFD: LDA.w $0830,Y
#_80A000: JSR SomeParamCheck_809752
#_80A003: BCC CODE_80A009
#_80A005: LDY.w $1416
#_80A008: RTS

CODE_80A009:
#_80A009: LDA.w $1BA5
#_80A00C: STA.w $1B90
#_80A00F: LDA.w $081F,Y
#_80A012: JSR SomeParamCheck_809752
#_80A015: BCC CODE_80A023
#_80A017: LDA.w $081E,Y
#_80A01A: JSR SomeParamCheck_809752
#_80A01D: BCC CODE_80A023
#_80A01F: LDY.w $1416
#_80A022: RTS

CODE_80A023:
#_80A023: LDA.w $1BA5
#_80A026: STA.w $1B90
#_80A029: LDA.w $0830,Y
#_80A02C: JSR SomeParamCheck_809752
#_80A02F: BCC CODE_80A03D
#_80A031: LDA.w $0840,Y
#_80A034: JSR SomeParamCheck_809752
#_80A037: BCC CODE_80A03D
#_80A039: LDY.w $1416
#_80A03C: RTS

CODE_80A03D:
#_80A03D: LDA.w $1BA5
#_80A040: STA.w $1B90
#_80A043: LDA.w $080F,Y
#_80A046: JSR SomeParamCheck_809752
#_80A049: BCC CODE_80A057
#_80A04B: LDA.w $07FE,Y
#_80A04E: JSR SomeParamCheck_809752
#_80A051: BCC CODE_80A057
#_80A053: LDY.w $1416
#_80A056: RTS

CODE_80A057:
#_80A057: LDA.w $1BA5
#_80A05A: STA.w $1B90
#_80A05D: LDA.w $082F,Y
#_80A060: JSR SomeParamCheck_809752
#_80A063: BCC CODE_80A071
#_80A065: LDA.w $083E,Y
#_80A068: JSR SomeParamCheck_809752
#_80A06B: BCC CODE_80A071
#_80A06D: LDY.w $1416
#_80A070: RTS

CODE_80A071:
#_80A071: LDA.w $1BA5
#_80A074: STA.w $1B90
#_80A077: LDA.w $080F,Y
#_80A07A: JSR SomeParamCheck_809752
#_80A07D: BCC CODE_80A08B
#_80A07F: LDA.w $0831,Y
#_80A082: JSR SomeParamCheck_809752
#_80A085: BCC CODE_80A08B
#_80A087: LDY.w $1416
#_80A08A: RTS

CODE_80A08B:
#_80A08B: LDA.w $0830,Y
#_80A08E: BNE CODE_80A0A8
#_80A090: LDA.w $1BA5
#_80A093: STA.w $1B90
#_80A096: LDA.w $0831,Y
#_80A099: JSR SomeParamCheck_809752
#_80A09C: BCC CODE_80A0A8
#_80A09E: LDA.w $0832,Y
#_80A0A1: JSR SomeParamCheck_809752
#_80A0A4: LDY.w $1416
#_80A0A7: RTS

CODE_80A0A8:
#_80A0A8: LDY.w $1416
#_80A0AB: CLC
#_80A0AC: RTS

;===================================================================================================

ROUTINE_80A0AD:
#_80A0AD: CLC
#_80A0AE: ADC.w $1416
#_80A0B1: TAY
#_80A0B2: LDA.w $1BA5
#_80A0B5: STA.w $1B90
#_80A0B8: LDA.w $07FF,Y
#_80A0BB: JSR SomeParamCheck_809752
#_80A0BE: BCC CODE_80A0CC
#_80A0C0: LDA.w $0830,Y
#_80A0C3: JSR SomeParamCheck_809752
#_80A0C6: BCC CODE_80A0CC
#_80A0C8: LDY.w $1416
#_80A0CB: RTS

CODE_80A0CC:
#_80A0CC: LDA.w $1BA5
#_80A0CF: STA.w $1B90
#_80A0D2: LDA.w $0821,Y
#_80A0D5: JSR SomeParamCheck_809752
#_80A0D8: BCC CODE_80A0E6
#_80A0DA: LDA.w $0822,Y
#_80A0DD: JSR SomeParamCheck_809752
#_80A0E0: BCC CODE_80A0E6
#_80A0E2: LDY.w $1416
#_80A0E5: RTS

CODE_80A0E6:
#_80A0E6: LDA.w $1BA5
#_80A0E9: STA.w $1B90
#_80A0EC: LDA.w $0830,Y
#_80A0EF: JSR SomeParamCheck_809752
#_80A0F2: BCC CODE_80A100
#_80A0F4: LDA.w $0840,Y
#_80A0F7: JSR SomeParamCheck_809752
#_80A0FA: BCC CODE_80A100
#_80A0FC: LDY.w $1416
#_80A0FF: RTS

CODE_80A100:
#_80A100: LDA.w $1BA5
#_80A103: STA.w $1B90
#_80A106: LDA.w $0811,Y
#_80A109: JSR SomeParamCheck_809752
#_80A10C: BCC CODE_80A11A
#_80A10E: LDA.w $0802,Y
#_80A111: JSR SomeParamCheck_809752
#_80A114: BCC CODE_80A11A
#_80A116: LDY.w $1416
#_80A119: RTS

CODE_80A11A:
#_80A11A: LDA.w $1BA5
#_80A11D: STA.w $1B90
#_80A120: LDA.w $0831,Y
#_80A123: JSR SomeParamCheck_809752
#_80A126: BCC CODE_80A134
#_80A128: LDA.w $0842,Y
#_80A12B: JSR SomeParamCheck_809752
#_80A12E: BCC CODE_80A134
#_80A130: LDY.w $1416
#_80A133: RTS

CODE_80A134:
#_80A134: LDA.w $1BA5
#_80A137: STA.w $1B90
#_80A13A: LDA.w $0811,Y
#_80A13D: JSR SomeParamCheck_809752
#_80A140: BCC CODE_80A14E
#_80A142: LDA.w $082F,Y
#_80A145: JSR SomeParamCheck_809752
#_80A148: BCC CODE_80A14E
#_80A14A: LDY.w $1416
#_80A14D: RTS

CODE_80A14E:
#_80A14E: LDA.w $0830,Y
#_80A151: BNE CODE_80A16B
#_80A153: LDA.w $1BA5
#_80A156: STA.w $1B90
#_80A159: LDA.w $082F,Y
#_80A15C: JSR SomeParamCheck_809752
#_80A15F: BCC CODE_80A16B
#_80A161: LDA.w $082E,Y
#_80A164: JSR SomeParamCheck_809752
#_80A167: LDY.w $1416
#_80A16A: RTS

CODE_80A16B:
#_80A16B: LDY.w $1416
#_80A16E: CLC
#_80A16F: RTS

;===================================================================================================

ROUTINE_80A170:
#_80A170: LDA.b #$01
#_80A172: STA.w $1BAC
#_80A175: LDA.w $1B92
#_80A178: BEQ CODE_80A17B
#_80A17A: RTS

CODE_80A17B:
#_80A17B: LDA.b #$00
#_80A17D: STA.w $1B93
#_80A180: LDX.b #$00
#_80A182: LDY.w $1416
#_80A185: LDA.w $1AD4
#_80A188: BEQ CODE_80A18D
#_80A18A: JMP.w ROUTINE_80A224

CODE_80A18D:
#_80A18D: JSR ROUTINE_80A37C
#_80A190: BMI CODE_80A1C3
#_80A192: LDA.w $147D
#_80A195: BEQ .exit

CODE_80A197:
#_80A197: LDA.w $081F,Y
#_80A19A: BNE CODE_80A1A9
#_80A19C: JSR ROUTINE_80A200
#_80A19F: BCS CODE_80A1BA
#_80A1A1: LDA.b #$02
#_80A1A3: JSR ROUTINE_80A2C9
#_80A1A6: DEY
#_80A1A7: BRA CODE_80A197

CODE_80A1A9:
#_80A1A9: CMP.b #$FF
#_80A1AB: BEQ CODE_80A1F4
#_80A1AD: JSR ROUTINE_80A37C
#_80A1B0: CMP.b #$10
#_80A1B2: JSR ROUTINE_80A295
#_80A1B5: RTS

;===================================================================================================

#ROUTINE_80A1B6:
#_80A1B6: JSR ROUTINE_80A2AF
#_80A1B9: RTS

CODE_80A1BA:
#_80A1BA: JSR ROUTINE_80A295
#_80A1BD: LDA.b #$01
#_80A1BF: JSR ROUTINE_80A2C9
#_80A1C2: RTS

CODE_80A1C3:
#_80A1C3: LDA.w $147D
#_80A1C6: BNE .exit
#_80A1C8: LDA.w $0821,Y
#_80A1CB: BNE CODE_80A1DA
#_80A1CD: JSR ROUTINE_80A212
#_80A1D0: BCS CODE_80A1EB
#_80A1D2: LDA.b #$01
#_80A1D4: JSR ROUTINE_80A2C9
#_80A1D7: INY
#_80A1D8: BRA CODE_80A1C3

CODE_80A1DA:
#_80A1DA: CMP.b #$FF
#_80A1DC: BEQ CODE_80A1FA
#_80A1DE: JSR ROUTINE_80A37C
#_80A1E1: CMP.b #$10
#_80A1E3: JSR ROUTINE_80A2A1

.exit
#_80A1E6: RTS

;===================================================================================================

#ROUTINE_80A1E7:
#_80A1E7: JSR ROUTINE_80A2BB
#_80A1EA: RTS

CODE_80A1EB:
#_80A1EB: JSR ROUTINE_80A2A1
#_80A1EE: LDA.b #$02
#_80A1F0: JSR ROUTINE_80A2C9
#_80A1F3: RTS

CODE_80A1F4:
#_80A1F4: LDA.b #$01
#_80A1F6: JSR ROUTINE_80A2C9
#_80A1F9: RTS

CODE_80A1FA:
#_80A1FA: LDA.b #$02
#_80A1FC: JSR ROUTINE_80A2C9
#_80A1FF: RTS

;===================================================================================================

ROUTINE_80A200:
#_80A200: LDA.w $082F,Y
#_80A203: BEQ .fail

#_80A205: CMP.b #$FF
#_80A207: BEQ .fail

#_80A209: JSR ROUTINE_80A37C
#_80A20C: BMI .fail

#_80A20E: SEC
#_80A20F: RTS

.fail
#_80A210: CLC
#_80A211: RTS

;===================================================================================================

ROUTINE_80A212:
#_80A212: LDA.w $0831,Y
#_80A215: BEQ .fail
#_80A217: CMP.b #$FF
#_80A219: BEQ .fail
#_80A21B: JSR ROUTINE_80A37C
#_80A21E: BMI .fail
#_80A220: SEC
#_80A221: RTS

.fail
#_80A222: CLC
#_80A223: RTS

;===================================================================================================

ROUTINE_80A224:
#_80A224: LDA.w $147D
#_80A227: BEQ CODE_80A25F

CODE_80A229:
#_80A229: LDA.w $081F,Y
#_80A22C: BNE CODE_80A236
#_80A22E: LDA.b #$02
#_80A230: JSR ROUTINE_80A2C9
#_80A233: DEY
#_80A234: BRA CODE_80A229

CODE_80A236:
#_80A236: LDA.w $080F,Y
#_80A239: BEQ CODE_80A24E
#_80A23B: LDA.w $07FF,Y
#_80A23E: BEQ CODE_80A24E
#_80A240: LDA.b #$01
#_80A242: JSR ROUTINE_80A2C9
#_80A245: JSR ROUTINE_80A2AB
#_80A248: LDA.b #$02
#_80A24A: JSR ROUTINE_80A2C9
#_80A24D: RTS

CODE_80A24E:
#_80A24E: JSR ROUTINE_80A2AB
#_80A251: RTS

;===================================================================================================

ROUTINE_80A252:
#_80A252: TXA
#_80A253: BEQ .zero

#_80A255: DEX

.zero
#_80A256: JSR ROUTINE_80A2AB
#_80A259: LDA.b #$01
#_80A25B: JSR ROUTINE_80A2C9
#_80A25E: RTS

;===================================================================================================

CODE_80A25F:
#_80A25F: LDA.w $0821,Y
#_80A262: BNE CODE_80A26C
#_80A264: LDA.b #$01
#_80A266: JSR ROUTINE_80A2C9
#_80A269: INY
#_80A26A: BRA CODE_80A25F

CODE_80A26C:
#_80A26C: LDA.w $0811,Y
#_80A26F: BEQ CODE_80A284
#_80A271: LDA.w $0801,Y
#_80A274: BEQ CODE_80A284
#_80A276: LDA.b #$02
#_80A278: JSR ROUTINE_80A2C9
#_80A27B: JSR ROUTINE_80A2AB
#_80A27E: LDA.b #$01
#_80A280: JSR ROUTINE_80A2C9
#_80A283: RTS

CODE_80A284:
#_80A284: JSR ROUTINE_80A2AB
#_80A287: RTS

;===================================================================================================

ROUTINE_80A288:
#_80A288: TXA
#_80A289: BEQ CODE_80A28C
#_80A28B: DEX

CODE_80A28C:
#_80A28C: JSR ROUTINE_80A2AB
#_80A28F: LDA.b #$02
#_80A291: JSR ROUTINE_80A2C9
#_80A294: RTS

;===================================================================================================

ROUTINE_80A295:
#_80A295: LDA.w $147D
#_80A298: BNE ROUTINE_80A2AB
#_80A29A: LDA.b #$02
#_80A29C: JSR ROUTINE_80A2C9
#_80A29F: BRA ROUTINE_80A2AB

;===================================================================================================

ROUTINE_80A2A1:
#_80A2A1: LDA.w $147D
#_80A2A4: BEQ ROUTINE_80A2AB
#_80A2A6: LDA.b #$01
#_80A2A8: JSR ROUTINE_80A2C9

ROUTINE_80A2AB:
#_80A2AB: LDA.b #$80
#_80A2AD: BRA CODE_80A2D0

;===================================================================================================

ROUTINE_80A2AF:
#_80A2AF: LDA.w $147D
#_80A2B2: BNE CODE_80A2C5
#_80A2B4: LDA.b #$02
#_80A2B6: JSR ROUTINE_80A2C9
#_80A2B9: BRA CODE_80A2C5

;===================================================================================================

ROUTINE_80A2BB:
#_80A2BB: LDA.w $147D
#_80A2BE: BEQ CODE_80A2C5
#_80A2C0: LDA.b #$01
#_80A2C2: JSR ROUTINE_80A2C9

CODE_80A2C5:
#_80A2C5: LDA.b #$40
#_80A2C7: BRA CODE_80A2D0

;===================================================================================================

ROUTINE_80A2C9:
#_80A2C9: PHA
#_80A2CA: LDA.b #$00
#_80A2CC: STA.w $1BA4
#_80A2CF: PLA

CODE_80A2D0:
#_80A2D0: STA.w $1B94,X
#_80A2D3: INX
#_80A2D4: LDA.b #$FF
#_80A2D6: STA.w $1B94,X
#_80A2D9: LDA.b #$01
#_80A2DB: STA.w $1B92
#_80A2DE: LDA.b #$00
#_80A2E0: STA.w $1B93
#_80A2E3: STA.w $1BAB
#_80A2E6: LDA.w $1BAC
#_80A2E9: STA.w $1BAD
#_80A2EC: RTS

;===================================================================================================

ROUTINE_80A2ED:
#_80A2ED: LDY.w $1416
#_80A2F0: LDA.w $1B92
#_80A2F3: BNE CODE_80A2F6
#_80A2F5: RTS

CODE_80A2F6:
#_80A2F6: LDA.w $1AC0
#_80A2F9: AND.b #$82
#_80A2FB: BEQ CODE_80A2FE
#_80A2FD: RTS

CODE_80A2FE:
#_80A2FE: LDX.w $1B93
#_80A301: LDA.w $1B94,X
#_80A304: CMP.b #$FF
#_80A306: BNE CODE_80A30E
#_80A308: LDA.b #$00
#_80A30A: STA.w $1B92
#_80A30D: RTS

CODE_80A30E:
#_80A30E: INC.w $1B93
#_80A311: AND.b #$03
#_80A313: BEQ CODE_80A321
#_80A315: LDA.b #$00
#_80A317: STA.b $AF
#_80A319: LDA.w $1B94,X
#_80A31C: AND.b #$03
#_80A31E: STA.b $B0
#_80A320: RTS

CODE_80A321:
#_80A321: LDA.w $1B94,X
#_80A324: AND.b #$80
#_80A326: BEQ CODE_80A331
#_80A328: LDA.b #$80
#_80A32A: STA.b $AF
#_80A32C: LDA.b #$00
#_80A32E: STA.b $B0
#_80A330: RTS

CODE_80A331:
#_80A331: LDA.w $1B94,X
#_80A334: AND.b #$40
#_80A336: BEQ CODE_80A341
#_80A338: LDA.b #$00
#_80A33A: STA.b $AF
#_80A33C: LDA.b #$80
#_80A33E: STA.b $B0
#_80A340: RTS

CODE_80A341:
#_80A341: LDA.w $1B94,X
#_80A344: AND.b #$20
#_80A346: BEQ CODE_80A351
#_80A348: LDA.b #$00
#_80A34A: STA.b $AF
#_80A34C: LDA.b #$40
#_80A34E: STA.b $B0
#_80A350: RTS

CODE_80A351:
#_80A351: RTS

;===================================================================================================

ROUTINE_80A352:
#_80A352: PHP

#_80A353: SEP #$30

#_80A355: LDX.b #$00

.next
#_80A357: LDA.l UNREACH_80A36D,X
#_80A35B: CLC
#_80A35C: ADC.w $1416
#_80A35F: TAY

#_80A360: LDA.w $0820,Y
#_80A363: STA.w $1AD2,X

#_80A366: INX
#_80A367: CPX.b #$0F
#_80A369: BCC .next

#_80A36B: PLP
#_80A36C: RTS

UNREACH_80A36D:
#_80A36D: db $EE,$EF,$F0,$F1,$F2,$FE,$FF,$00
#_80A375: db $01,$02,$0E,$0F,$10,$11,$12

;===================================================================================================

ROUTINE_80A37C:
#_80A37C: PHX
#_80A37D: LDX.w $0630
#_80A380: LDA.l UNREACH_80A38B,X
#_80A384: STA.w $0630
#_80A387: PLX
#_80A388: ROL A
#_80A389: ROR A
#_80A38A: RTS

;===================================================================================================
; TODO more random?
;===================================================================================================
UNREACH_80A38B:
#_80A38B: db $72,$5D,$87,$9C,$B1,$C6,$DB,$05
#_80A393: db $1A,$D0,$21,$44,$59,$83,$6F,$98
#_80A39B: db $D7,$EC,$AD,$C2,$01,$16,$2B,$F0
#_80A3A3: db $55,$6A,$72,$BE,$94,$A9,$D3,$E8
#_80A3AB: db $FD,$3C,$51,$12,$27,$66,$40,$90
#_80A3B3: db $A5,$E4,$BA,$C3,$F9,$0D,$23,$38
#_80A3BB: db $E0,$F5,$14,$34,$49,$5C,$73,$88
#_80A3C3: db $4D,$77,$A1,$B6,$8C,$62,$7B,$0A
#_80A3CB: db $9D,$B2,$C7,$06,$1B,$CB,$DC,$F1
#_80A3D3: db $45,$5A,$65,$84,$99,$AB,$C3,$D8
#_80A3DB: db $ED,$02,$2C,$80,$41,$30,$17,$56
#_80A3E3: db $95,$AA,$B6,$D4,$E9,$FA,$13,$28
#_80A3EB: db $3D,$91,$52,$67,$6B,$D0,$E5,$7C
#_80A3F3: db $BB,$FA,$24,$07,$49,$39,$63,$78
#_80A3FB: db $A2,$B7,$8D,$CC,$A6,$F6,$20,$4A
#_80A403: db $58,$0B,$35,$89,$74,$98,$B3,$C8
#_80A40B: db $DD,$F2,$07,$E1,$31,$46,$A9,$5B
#_80A413: db $9A,$70,$85,$C4,$D9,$E7,$03,$18
#_80A41B: db $2D,$57,$6C,$1C,$AB,$81,$96,$C0
#_80A423: db $FA,$14,$D5,$EA,$29,$36,$53,$68
#_80A42B: db $85,$A3,$B8,$92,$E6,$42,$7D,$3A
#_80A433: db $4B,$A7,$BC,$FB,$D1,$25,$64,$79
#_80A43B: db $E2,$0C,$F7,$CD,$21,$36,$4B,$60
#_80A443: db $10,$8A,$9C,$C9,$D4,$B4,$F3,$08
#_80A44B: db $47,$86,$9B,$75,$ED,$C5,$DA,$23
#_80A453: db $43,$58,$04,$1D,$5C,$71,$32,$19
#_80A45B: db $6D,$82,$C1,$D6,$97,$AC,$15,$B0
#_80A463: db $00,$2A,$3E,$69,$72,$A8,$54,$93
#_80A46B: db $BD,$D2,$E7,$26,$11,$3B,$FC,$EB
#_80A473: db $65,$50,$7A,$8F,$B9,$A4,$C1,$E3
#_80A47B: db $22,$0D,$37,$4C,$8B,$B5,$61,$76
#_80A483: db $A0,$CA,$F8,$F4,$09,$10,$33,$48

;===================================================================================================

ROUTINE_80A48B:
#_80A48B: SEP #$30
#_80A48D: LDA.w $7E1471
#_80A490: STA.w $7E1411
#_80A493: LDA.w $7E1475
#_80A496: STA.w $7E1415
#_80A499: JSR ROUTINE_80CCBD
#_80A49C: JSR ROUTINE_80CC93
#_80A49F: BCC CODE_80A4A2
#_80A4A1: RTS

CODE_80A4A2:
#_80A4A2: LDA.w $7E27DB
#_80A4A5: STA.w $7E1BB3

#_80A4A8: LDA.w $7E27DB
#_80A4AB: ASL A
#_80A4AC: TAX

#_80A4AD: LDA.l PTR16_80A4BC+0,X
#_80A4B1: STA.b $12
#_80A4B3: LDA.l PTR16_80A4BC+1,X
#_80A4B7: STA.b $13
#_80A4B9: JMP.w ($0012)

PTR16_80A4BC:
#_80A4BC: dw ROUTINE_80A4DE
#_80A4BE: dw ROUTINE_80A514
#_80A4C0: dw ROUTINE_80A728
#_80A4C2: dw ROUTINE_80A794
#_80A4C4: dw ROUTINE_80A7EE
#_80A4C6: dw ROUTINE_80A81D
#_80A4C8: dw ROUTINE_80AB5F
#_80A4CA: dw ROUTINE_80ACCD
#_80A4CC: dw ROUTINE_80AD39
#_80A4CE: dw ROUTINE_80AD4E
#_80A4D0: dw ROUTINE_80AD6F
#_80A4D2: dw Nothing_80ADC5
#_80A4D4: dw Nothing_80ADC6
#_80A4D6: dw ROUTINE_80A59E
#_80A4D8: dw ROUTINE_80A5A8
#_80A4DA: dw ROUTINE_80A5AF
#_80A4DC: dw ROUTINE_80A7DF

;===================================================================================================

ROUTINE_80A4DE:
#_80A4DE: LDA.b #$00
#_80A4E0: STA.w $7E27ED
#_80A4E3: STA.w $7E27EE
#_80A4E6: STA.w $7E27F3
#_80A4E9: LDA.w $146D
#_80A4EC: BEQ CODE_80A4EF
#_80A4EE: RTS

CODE_80A4EF:
#_80A4EF: LDA.b #$03
#_80A4F1: STA.w $7E27DF
#_80A4F4: INC.w $7E27DB
#_80A4F7: LDY.w $7E1416
#_80A4FA: LDA.w $7E0810,Y
#_80A4FD: BEQ .exit
#_80A4FF: CMP.b #$FF
#_80A501: BEQ .exit
#_80A503: LDA.b #$07
#_80A505: STA.w $7E27DB
#_80A508: LDA.b #$02
#_80A50A: STA.w $7E27EE
#_80A50D: LDA.b #$03
#_80A50F: STA.w $7E27F3
#_80A512: RTS

.exit
#_80A513: RTS

;===================================================================================================

ROUTINE_80A514:
#_80A514: JSR ROUTINE_80A552
#_80A517: LDA.w $7E27F4
#_80A51A: STA.w $7E2751
#_80A51D: LDA.w $7E1416
#_80A520: STA.w $7E2000
#_80A523: LDX.b #$01
#_80A525: LDA.w $7E147D
#_80A528: BEQ CODE_80A52B
#_80A52A: INX

CODE_80A52B:
#_80A52B: STX.w $7E27DE
#_80A52E: LDY.w $7E2000
#_80A531: LDX.w $7E27EE
#_80A534: LDA.l UNREACH_80A54E,X
#_80A538: LDX.b #$00
#_80A53A: AND.b #$02
#_80A53C: BEQ CODE_80A540
#_80A53E: LDX.b #$0A

CODE_80A540:
#_80A540: STX.w $7E27E7
#_80A543: LDA.b #$00
#_80A545: STA.w $7E27ED
#_80A548: LDA.b #$0D
#_80A54A: STA.w $7E27DB
#_80A54D: RTS

UNREACH_80A54E:
#_80A54E: db $01,$02,$00,$03

;===================================================================================================

ROUTINE_80A552:
#_80A552: LDX.b #$08
#_80A554: LDY.b #$00

CODE_80A556:
#_80A556: LDA.b #$FF
#_80A558: STA.w $7E2361,Y
#_80A55B: STA.w $7E2511,Y
#_80A55E: STA.w $7E2591,Y
#_80A561: STA.w $7E2611,Y
#_80A564: LDA.b #$00
#_80A566: STA.w $7E2690,X
#_80A569: STA.w $7E26A0,X
#_80A56C: STA.w $7E26B0,X
#_80A56F: STA.w $7E2698,X
#_80A572: STA.w $7E26A8,X
#_80A575: STA.w $7E26B8,X
#_80A578: STA.w $7E26C0,X
#_80A57B: STA.w $7E26D0,X
#_80A57E: STA.w $7E26E0,X
#_80A581: STA.w $7E26C8,X
#_80A584: STA.w $7E26D8,X
#_80A587: STA.w $7E26E8,X
#_80A58A: TYA
#_80A58B: CLC
#_80A58C: ADC.b #$10
#_80A58E: TAY
#_80A58F: DEX
#_80A590: BNE CODE_80A556
#_80A592: LDA.b #$FF
#_80A594: STA.w $7E2775
#_80A597: STA.w $7E2797
#_80A59A: STA.w $7E27B9
#_80A59D: RTS

;===================================================================================================

ROUTINE_80A59E:
#_80A59E: JSR ROUTINE_80BD2E
#_80A5A1: JSR ROUTINE_80C39C
#_80A5A4: INC.w $7E27DB
#_80A5A7: RTS

;===================================================================================================

ROUTINE_80A5A8:
#_80A5A8: JSR ROUTINE_80C500

#_80A5AB: INC.w $7E27DB

#_80A5AE: RTS

;===================================================================================================

ROUTINE_80A5AF:
#_80A5AF: LDA.w $7E2331
#_80A5B2: CLC
#_80A5B3: ADC.w $7E2332
#_80A5B6: ADC.w $7E2333
#_80A5B9: ADC.w $7E2334
#_80A5BC: ADC.w $7E2335
#_80A5BF: ADC.w $7E2336
#_80A5C2: ADC.w $7E2337
#_80A5C5: ADC.w $7E2338
#_80A5C8: STA.w $7E27E0

#_80A5CB: LDA.w $7E2339
#_80A5CE: CLC
#_80A5CF: ADC.w $7E233A
#_80A5D2: ADC.w $7E233B
#_80A5D5: ADC.w $7E233C
#_80A5D8: ADC.w $7E233D
#_80A5DB: ADC.w $7E233E
#_80A5DE: ADC.w $7E233F
#_80A5E1: ADC.w $7E2340
#_80A5E4: STA.w $7E27E1
#_80A5E7: LDA.w $7E2341
#_80A5EA: CLC
#_80A5EB: ADC.w $7E2342
#_80A5EE: ADC.w $7E2343
#_80A5F1: ADC.w $7E2344
#_80A5F4: ADC.w $7E2345
#_80A5F7: ADC.w $7E2346
#_80A5FA: ADC.w $7E2347
#_80A5FD: ADC.w $7E2348
#_80A600: STA.w $7E27E2

#_80A603: LDA.w $7E2349
#_80A606: CLC
#_80A607: ADC.w $7E234A
#_80A60A: ADC.w $7E234B
#_80A60D: ADC.w $7E234C
#_80A610: ADC.w $7E234D
#_80A613: ADC.w $7E234E
#_80A616: ADC.w $7E234F
#_80A619: ADC.w $7E2350
#_80A61C: STA.w $7E27E3

#_80A61F: LDA.w $7E2351
#_80A622: CLC
#_80A623: ADC.w $7E2352
#_80A626: ADC.w $7E2353
#_80A629: ADC.w $7E2354
#_80A62C: ADC.w $7E2355
#_80A62F: ADC.w $7E2356
#_80A632: ADC.w $7E2357
#_80A635: ADC.w $7E2358
#_80A638: STA.w $7E27E4
#_80A63B: LDA.w $7E2359
#_80A63E: CLC
#_80A63F: ADC.w $7E235A
#_80A642: ADC.w $7E235B
#_80A645: ADC.w $7E235C
#_80A648: ADC.w $7E235D
#_80A64B: ADC.w $7E235E
#_80A64E: ADC.w $7E235F
#_80A651: ADC.w $7E2360
#_80A654: STA.w $7E27E5

#_80A657: JSR ROUTINE_80BEAC

#_80A65A: LDA.w $7E2331
#_80A65D: CLC
#_80A65E: ADC.w $7E2332
#_80A661: ADC.w $7E2333
#_80A664: ADC.w $7E2334
#_80A667: ADC.w $7E2335
#_80A66A: ADC.w $7E2336
#_80A66D: ADC.w $7E2337
#_80A670: ADC.w $7E2338
#_80A673: ADC.w $7E27E0
#_80A676: STA.w $7E27E0
#_80A679: LDA.w $7E2339
#_80A67C: CLC
#_80A67D: ADC.w $7E233A
#_80A680: ADC.w $7E233B
#_80A683: ADC.w $7E233C
#_80A686: ADC.w $7E233D
#_80A689: ADC.w $7E233E
#_80A68C: ADC.w $7E233F
#_80A68F: ADC.w $7E2340
#_80A692: ADC.w $7E27E1
#_80A695: STA.w $7E27E1
#_80A698: LDA.w $7E2341
#_80A69B: CLC
#_80A69C: ADC.w $7E2342
#_80A69F: ADC.w $7E2343
#_80A6A2: ADC.w $7E2344
#_80A6A5: ADC.w $7E2345
#_80A6A8: ADC.w $7E2346
#_80A6AB: ADC.w $7E2347
#_80A6AE: ADC.w $7E2348
#_80A6B1: ADC.w $7E27E2
#_80A6B4: STA.w $7E27E2
#_80A6B7: LDA.w $7E2349
#_80A6BA: CLC
#_80A6BB: ADC.w $7E234A
#_80A6BE: ADC.w $7E234B
#_80A6C1: ADC.w $7E234C
#_80A6C4: ADC.w $7E234D
#_80A6C7: ADC.w $7E234E
#_80A6CA: ADC.w $7E234F
#_80A6CD: ADC.w $7E2350
#_80A6D0: ADC.w $7E27E3
#_80A6D3: STA.w $7E27E3
#_80A6D6: LDA.w $7E2351
#_80A6D9: CLC
#_80A6DA: ADC.w $7E2352
#_80A6DD: ADC.w $7E2353
#_80A6E0: ADC.w $7E2354
#_80A6E3: ADC.w $7E2355
#_80A6E6: ADC.w $7E2356
#_80A6E9: ADC.w $7E2357
#_80A6EC: ADC.w $7E2358
#_80A6EF: ADC.w $7E27E4
#_80A6F2: STA.w $7E27E4
#_80A6F5: LDA.w $7E2359
#_80A6F8: CLC
#_80A6F9: ADC.w $7E235A
#_80A6FC: ADC.w $7E235B
#_80A6FF: ADC.w $7E235C
#_80A702: ADC.w $7E235D
#_80A705: ADC.w $7E235E
#_80A708: ADC.w $7E235F
#_80A70B: ADC.w $7E2360
#_80A70E: ADC.w $7E27E5
#_80A711: STA.w $7E27E5
#_80A714: LDX.w $7E27ED
#_80A717: BNE CODE_80A71F
#_80A719: LDA.b #$02
#_80A71B: STA.w $7E27DB
#_80A71E: RTS

CODE_80A71F:
#_80A71F: JSR ROUTINE_80B574
#_80A722: LDA.b #$03
#_80A724: STA.w $7E27DB
#_80A727: RTS

;===================================================================================================

ROUTINE_80A728:
#_80A728: JSR ROUTINE_80ADC7
#_80A72B: BCS CODE_80A72E
#_80A72D: RTS

CODE_80A72E:
#_80A72E: LDA.w $7E27F0
#_80A731: BEQ CODE_80A737
#_80A733: JSR ROUTINE_80A764
#_80A736: RTS

CODE_80A737:
#_80A737: LDX.w $7E27F4
#_80A73A: DEX
#_80A73B: TXA
#_80A73C: ASL A
#_80A73D: ASL A
#_80A73E: ASL A
#_80A73F: ASL A
#_80A740: TAX
#_80A741: LDA.w $7E2361,X
#_80A744: CMP.b #$FF
#_80A746: BNE CODE_80A754
#_80A748: JSR ROUTINE_80AB0E
#_80A74B: BCC CODE_80A74E
#_80A74D: RTS

CODE_80A74E:
#_80A74E: LDA.b #$00
#_80A750: STA.w $7E27DB
#_80A753: RTS

CODE_80A754:
#_80A754: INC.w $7E27DB
#_80A757: LDA.b #$00
#_80A759: STA.w $7E27ED
#_80A75C: LDX.w $7E27F4
#_80A75F: DEX
#_80A760: STX.w $7E2751
#_80A763: RTS

;===================================================================================================

ROUTINE_80A764:
#_80A764: LDA.w $7E2751
#_80A767: ASL A
#_80A768: ASL A
#_80A769: ASL A
#_80A76A: ASL A
#_80A76B: TAY
#_80A76C: LDX.b #$00

CODE_80A76E:
#_80A76E: LDA.w $7E2361,Y
#_80A771: STA.w $7E2753,X
#_80A774: CMP.b #$FF
#_80A776: BEQ CODE_80A77C
#_80A778: INX
#_80A779: INY
#_80A77A: BRA CODE_80A76E

CODE_80A77C:
#_80A77C: LDA.b #$30
#_80A77E: STA.w $7E2753,X
#_80A781: LDA.b #$FF
#_80A783: STA.w $7E2754,X
#_80A786: STA.w $7E27DD
#_80A789: LDA.b #$00
#_80A78B: STA.w $7E27DC
#_80A78E: LDA.b #$06
#_80A790: STA.w $7E27DB
#_80A793: RTS

;===================================================================================================

ROUTINE_80A794:
#_80A794: LDX.b #$10
#_80A796: LDY.b #$00

CODE_80A798:
#_80A798: LDA.b #$FF
#_80A79A: STA.w $7E23F1,Y
#_80A79D: LDA.b #$00
#_80A79F: STA.w $7E26F0,X
#_80A7A2: STA.w $7E2700,X
#_80A7A5: STA.w $7E2710,X
#_80A7A8: STA.w $7E2720,X
#_80A7AB: STA.w $7E2730,X
#_80A7AE: STA.w $7E2740,X
#_80A7B1: TYA
#_80A7B2: CLC
#_80A7B3: ADC.b #$10
#_80A7B5: TAY
#_80A7B6: DEX
#_80A7B7: BNE CODE_80A798

#_80A7B9: LDA.w $7E27F5
#_80A7BC: STA.w $7E2752
#_80A7BF: INC.w $7E27DB
#_80A7C2: LDX.w $7E27EE
#_80A7C5: LDA.l UNREACH_80A54E,X
#_80A7C9: LDX.b #$00
#_80A7CB: AND.b #$01
#_80A7CD: BEQ CODE_80A7D1
#_80A7CF: LDX.b #$09

CODE_80A7D1:
#_80A7D1: STX.w $7E27E8
#_80A7D4: LDA.b #$10
#_80A7D6: STA.w $7E27DB
#_80A7D9: LDA.b #$03
#_80A7DB: STA.w $7E27F2
#_80A7DE: RTS

;===================================================================================================

ROUTINE_80A7DF:
#_80A7DF: LDA.w $7E27F2
#_80A7E2: BEQ CODE_80A7E8
#_80A7E4: DEC.w $7E27F2
#_80A7E7: RTS

CODE_80A7E8:
#_80A7E8: LDA.b #$04
#_80A7EA: STA.w $7E27DB
#_80A7ED: RTS

;===================================================================================================

ROUTINE_80A7EE:
#_80A7EE: JSR ROUTINE_80B116
#_80A7F1: BCS CODE_80A7F4
#_80A7F3: RTS

CODE_80A7F4:
#_80A7F4: DEC.w $7E2751
#_80A7F7: BMI CODE_80A80E
#_80A7F9: LDA.w $7E2751
#_80A7FC: ASL A
#_80A7FD: ASL A
#_80A7FE: ASL A
#_80A7FF: ASL A
#_80A800: TAX
#_80A801: LDA.w $7E2361,X
#_80A804: CMP.b #$FF
#_80A806: BEQ CODE_80A80E
#_80A808: LDA.b #$03
#_80A80A: STA.w $7E27DB
#_80A80D: RTS

CODE_80A80E:
#_80A80E: LDA.w $7E27ED
#_80A811: BNE CODE_80A819
#_80A813: JSR ROUTINE_80AB0E
#_80A816: BCC CODE_80A819
#_80A818: RTS

CODE_80A819:
#_80A819: INC.w $7E27DB
#_80A81C: RTS

;===================================================================================================

ROUTINE_80A81D:
#_80A81D: LDX.w $1BB4
#_80A820: LDA.w $7E2751
#_80A823: STA.w $7E3B00,X
#_80A826: LDA.w $7E2752
#_80A829: STA.w $7E3B01,X
#_80A82C: INC.w $1BB4
#_80A82F: LDA.b #$01
#_80A831: STA.w $7E27E9
#_80A834: LDA.b #$00
#_80A836: STA.w $7E2795
#_80A839: STA.w $7E2796
#_80A83C: LDX.w $7E27F4
#_80A83F: DEX
#_80A840: STX.w $7E2751

CODE_80A843:
#_80A843: LDA.w $7E2751
#_80A846: ASL A
#_80A847: ASL A
#_80A848: ASL A
#_80A849: ASL A
#_80A84A: TAX
#_80A84B: LDA.w $7E2361,X
#_80A84E: CMP.b #$FF
#_80A850: BEQ CODE_80A8BB
#_80A852: LDX.w $7E2751
#_80A855: LDA.w $7E26C1,X
#_80A858: CLC
#_80A859: ADC.w $7E2691,X
#_80A85C: STA.w $7E2001
#_80A85F: CMP.w $7E2795
#_80A862: BNE CODE_80A879
#_80A864: LDA.w $7E26C9,X
#_80A867: CLC
#_80A868: ADC.w $7E2699,X
#_80A86B: CMP.w $7E2796
#_80A86E: BEQ CODE_80A872
#_80A870: BCC CODE_80A87D

CODE_80A872:
#_80A872: DEC.w $7E2751
#_80A875: BMI CODE_80A8BB
#_80A877: BRA CODE_80A843

CODE_80A879:
#_80A879: BCS CODE_80A87D
#_80A87B: BCC CODE_80A872

CODE_80A87D:
#_80A87D: LDA.w $7E2001
#_80A880: STA.w $7E2795
#_80A883: LDA.w $7E26C9,X
#_80A886: CLC
#_80A887: ADC.w $7E2699,X
#_80A88A: STA.w $7E2796
#_80A88D: LDA.w $7E2751
#_80A890: ASL A
#_80A891: ASL A
#_80A892: ASL A
#_80A893: ASL A
#_80A894: TAX
#_80A895: LDY.b #$00

CODE_80A897:
#_80A897: LDA.w $7E2361,X
#_80A89A: STA.w $7E2775,Y
#_80A89D: CMP.b #$FF
#_80A89F: BEQ CODE_80A8A5
#_80A8A1: INX
#_80A8A2: INY
#_80A8A3: BRA CODE_80A897

CODE_80A8A5:
#_80A8A5: LDA.w $7E2751
#_80A8A8: ASL A
#_80A8A9: ASL A
#_80A8AA: ASL A
#_80A8AB: ASL A
#_80A8AC: TAX

CODE_80A8AD:
#_80A8AD: LDA.w $7E2511,X
#_80A8B0: STA.w $7E2775,Y
#_80A8B3: CMP.b #$FF
#_80A8B5: BEQ CODE_80A872
#_80A8B7: INX
#_80A8B8: INY
#_80A8B9: BRA CODE_80A8AD

CODE_80A8BB:
#_80A8BB: LDA.w $7E2795
#_80A8BE: SEC
#_80A8BF: SBC.w $7E27E0
#_80A8C2: BEQ CODE_80A8C9
#_80A8C4: BMI CODE_80A8C9
#_80A8C6: JMP.w CODE_80AA8D

CODE_80A8C9:
#_80A8C9: INC.w $7E27E9
#_80A8CC: LDA.b #$00
#_80A8CE: STA.w $7E27B7
#_80A8D1: STA.w $7E27B8
#_80A8D4: LDX.w $7E27F4
#_80A8D7: DEX
#_80A8D8: STX.w $7E2751

CODE_80A8DB:
#_80A8DB: LDA.w $7E2751
#_80A8DE: ASL A
#_80A8DF: ASL A
#_80A8E0: ASL A
#_80A8E1: ASL A
#_80A8E2: TAX
#_80A8E3: LDA.w $7E2361,X
#_80A8E6: CMP.b #$FF
#_80A8E8: BEQ CODE_80A953
#_80A8EA: LDX.w $7E2751
#_80A8ED: LDA.w $7E26D1,X
#_80A8F0: CLC
#_80A8F1: ADC.w $7E26A1,X
#_80A8F4: STA.w $7E2001
#_80A8F7: CMP.w $7E27B7
#_80A8FA: BNE CODE_80A911
#_80A8FC: LDA.w $7E26D9,X
#_80A8FF: CLC
#_80A900: ADC.w $7E26A9,X
#_80A903: CMP.w $7E27B8
#_80A906: BEQ CODE_80A90A
#_80A908: BCC CODE_80A915

CODE_80A90A:
#_80A90A: DEC.w $7E2751
#_80A90D: BMI CODE_80A953
#_80A90F: BRA CODE_80A8DB

CODE_80A911:
#_80A911: BCS CODE_80A915
#_80A913: BCC CODE_80A90A

CODE_80A915:
#_80A915: LDA.w $7E2001
#_80A918: STA.w $7E27B7
#_80A91B: LDA.w $7E26D9,X
#_80A91E: CLC
#_80A91F: ADC.w $7E26A9,X
#_80A922: STA.w $7E27B8
#_80A925: LDA.w $7E2751
#_80A928: ASL A
#_80A929: ASL A
#_80A92A: ASL A
#_80A92B: ASL A
#_80A92C: TAX
#_80A92D: LDY.b #$00

CODE_80A92F:
#_80A92F: LDA.w $7E2361,X
#_80A932: STA.w $7E2797,Y
#_80A935: CMP.b #$FF
#_80A937: BEQ CODE_80A93D
#_80A939: INX
#_80A93A: INY
#_80A93B: BRA CODE_80A92F

CODE_80A93D:
#_80A93D: LDA.w $7E2751
#_80A940: ASL A
#_80A941: ASL A
#_80A942: ASL A
#_80A943: ASL A
#_80A944: TAX

CODE_80A945:
#_80A945: LDA.w $7E2591,X
#_80A948: STA.w $7E2797,Y
#_80A94B: CMP.b #$FF
#_80A94D: BEQ CODE_80A90A
#_80A94F: INX
#_80A950: INY
#_80A951: BRA CODE_80A945

CODE_80A953:
#_80A953: LDA.w $7E27B7
#_80A956: SEC
#_80A957: SBC.w $7E27E2
#_80A95A: BEQ CODE_80A961
#_80A95C: BMI CODE_80A961
#_80A95E: JMP.w CODE_80AA8D

CODE_80A961:
#_80A961: INC.w $7E27E9
#_80A964: LDA.b #$00
#_80A966: STA.w $7E27D9
#_80A969: STA.w $7E27DA
#_80A96C: LDX.w $7E27F4
#_80A96F: DEX
#_80A970: STX.w $7E2751

CODE_80A973:
#_80A973: LDA.w $7E2751
#_80A976: ASL A
#_80A977: ASL A
#_80A978: ASL A
#_80A979: ASL A
#_80A97A: TAX
#_80A97B: LDA.w $7E2361,X
#_80A97E: CMP.b #$FF
#_80A980: BEQ CODE_80A9EB
#_80A982: LDX.w $7E2751
#_80A985: LDA.w $7E26E1,X
#_80A988: CLC
#_80A989: ADC.w $7E26B1,X
#_80A98C: STA.w $7E2001
#_80A98F: CMP.w $7E27D9
#_80A992: BNE CODE_80A9A9
#_80A994: LDA.w $7E26E9,X
#_80A997: CLC
#_80A998: ADC.w $7E26B9,X
#_80A99B: CMP.w $7E27DA
#_80A99E: BEQ CODE_80A9A2
#_80A9A0: BCC CODE_80A9AD

CODE_80A9A2:
#_80A9A2: DEC.w $7E2751
#_80A9A5: BMI CODE_80A9EB
#_80A9A7: BRA CODE_80A973

CODE_80A9A9:
#_80A9A9: BCS CODE_80A9AD
#_80A9AB: BCC CODE_80A9A2

CODE_80A9AD:
#_80A9AD: LDA.w $7E2001
#_80A9B0: STA.w $7E27D9
#_80A9B3: LDA.w $7E26E9,X
#_80A9B6: CLC
#_80A9B7: ADC.w $7E26B9,X
#_80A9BA: STA.w $7E27DA
#_80A9BD: LDA.w $7E2751
#_80A9C0: ASL A
#_80A9C1: ASL A
#_80A9C2: ASL A
#_80A9C3: ASL A
#_80A9C4: TAX
#_80A9C5: LDY.b #$00

CODE_80A9C7:
#_80A9C7: LDA.w $7E2361,X
#_80A9CA: STA.w $7E27B9,Y
#_80A9CD: CMP.b #$FF
#_80A9CF: BEQ CODE_80A9D5
#_80A9D1: INX
#_80A9D2: INY
#_80A9D3: BRA CODE_80A9C7

CODE_80A9D5:
#_80A9D5: LDA.w $7E2751
#_80A9D8: ASL A
#_80A9D9: ASL A
#_80A9DA: ASL A
#_80A9DB: ASL A
#_80A9DC: TAX

CODE_80A9DD:
#_80A9DD: LDA.w $7E2611,X
#_80A9E0: STA.w $7E27B9,Y
#_80A9E3: CMP.b #$FF
#_80A9E5: BEQ CODE_80A9A2
#_80A9E7: INX
#_80A9E8: INY
#_80A9E9: BRA CODE_80A9DD

CODE_80A9EB:
#_80A9EB: LDA.w $7E27D9
#_80A9EE: SEC
#_80A9EF: SBC.w $7E27E4
#_80A9F2: BEQ CODE_80A9F9
#_80A9F4: BMI CODE_80A9F9
#_80A9F6: JMP.w CODE_80AA8D

CODE_80A9F9:
#_80A9F9: LDA.b #$00
#_80A9FB: STA.w $7E27E9
#_80A9FE: LDA.b #$0C
#_80AA00: STA.w $7E27DB
#_80AA03: LDA.w $7E27EE
#_80AA06: BNE CODE_80AA0F
#_80AA08: LDA.w $7E27F3
#_80AA0B: ORA.b #$01
#_80AA0D: BRA CODE_80AA2E

CODE_80AA0F:
#_80AA0F: CMP.b #$01
#_80AA11: BNE CODE_80AA1A
#_80AA13: LDA.w $7E27F3
#_80AA16: ORA.b #$02
#_80AA18: BRA CODE_80AA2E

CODE_80AA1A:
#_80AA1A: CMP.b #$02
#_80AA1C: BNE CODE_80AA25
#_80AA1E: LDA.w $7E27F3
#_80AA21: ORA.b #$04
#_80AA23: BRA CODE_80AA2E

CODE_80AA25:
#_80AA25: CMP.b #$03
#_80AA27: BNE CODE_80AA65
#_80AA29: LDA.w $7E27F3
#_80AA2C: ORA.b #$08

CODE_80AA2E:
#_80AA2E: STA.w $7E27F3
#_80AA31: AND.b #$0F
#_80AA33: CMP.b #$0F
#_80AA35: BEQ CODE_80AA65
#_80AA37: LDA.b #$20
#_80AA39: STA.w $7E27EA
#_80AA3C: INC.w $7E27EE
#_80AA3F: LDA.w $7E27ED
#_80AA42: BNE CODE_80AA57
#_80AA44: LDA.b #$01
#_80AA46: STA.w $7E27DB
#_80AA49: LDY.w $1416
#_80AA4C: LDA.w $0810,Y
#_80AA4F: BEQ CODE_80AA56

CODE_80AA51:
#_80AA51: LDA.b #$00
#_80AA53: STA.w $7E27DB

CODE_80AA56:
#_80AA56: RTS

CODE_80AA57:
#_80AA57: LDA.b #$07
#_80AA59: STA.w $7E27DB
#_80AA5C: LDY.w $1416
#_80AA5F: LDA.w $0810,Y
#_80AA62: BEQ CODE_80AA51
#_80AA64: RTS

CODE_80AA65:
#_80AA65: LDA.b #$00
#_80AA67: STA.w $7E27EE
#_80AA6A: STA.w $7E27F3
#_80AA6D: STA.w $7E27ED
#_80AA70: LDY.w $1416
#_80AA73: LDA.w $0810,Y
#_80AA76: BEQ CODE_80AA82
#_80AA78: CMP.b #$FF
#_80AA7A: BEQ CODE_80AA82
#_80AA7C: LDA.b #$08
#_80AA7E: STA.w $7E27DB
#_80AA81: RTS

CODE_80AA82:
#_80AA82: JSR ROUTINE_80AB0E
#_80AA85: BCS CODE_80AA8C
#_80AA87: LDA.b #$40
#_80AA89: STA.w $7E27EA

CODE_80AA8C:
#_80AA8C: RTS

CODE_80AA8D:
#_80AA8D: JSR ROUTINE_80AAA6
#_80AA90: BCC CODE_80AA95
#_80AA92: JMP.w CODE_80A9F9

CODE_80AA95:
#_80AA95: LDA.b #$00
#_80AA97: STA.w $7E27DC
#_80AA9A: STA.w $7E27EC
#_80AA9D: LDA.b #$FF
#_80AA9F: STA.w $7E27DD
#_80AAA2: INC.w $7E27DB
#_80AAA5: RTS

;===================================================================================================

ROUTINE_80AAA6:
#_80AAA6: LDA.w $7E27E9
#_80AAA9: CMP.b #$03
#_80AAAB: BEQ CODE_80AAF1
#_80AAAD: CMP.b #$02
#_80AAAF: BEQ CODE_80AAD4
#_80AAB1: CMP.b #$01
#_80AAB3: BEQ CODE_80AAB7
#_80AAB5: SEC
#_80AAB6: RTS

CODE_80AAB7:
#_80AAB7: LDA.w $7E2795
#_80AABA: STA.w $7E2773
#_80AABD: LDA.w $7E2796
#_80AAC0: STA.w $7E2774
#_80AAC3: LDX.b #$00

CODE_80AAC5:
#_80AAC5: LDA.w $7E2775,X
#_80AAC8: STA.w $7E2753,X
#_80AACB: CMP.b #$FF
#_80AACD: BEQ CODE_80AAD2
#_80AACF: INX
#_80AAD0: BRA CODE_80AAC5

CODE_80AAD2:
#_80AAD2: CLC
#_80AAD3: RTS

CODE_80AAD4:
#_80AAD4: LDA.w $7E27B7
#_80AAD7: STA.w $7E2773
#_80AADA: LDA.w $7E27B8
#_80AADD: STA.w $7E2774
#_80AAE0: LDX.b #$00

CODE_80AAE2:
#_80AAE2: LDA.w $7E2797,X
#_80AAE5: STA.w $7E2753,X
#_80AAE8: CMP.b #$FF
#_80AAEA: BEQ CODE_80AAEF
#_80AAEC: INX
#_80AAED: BRA CODE_80AAE2

CODE_80AAEF:
#_80AAEF: CLC
#_80AAF0: RTS

CODE_80AAF1:
#_80AAF1: LDA.w $7E27D9
#_80AAF4: STA.w $7E2773
#_80AAF7: LDA.w $7E27DA
#_80AAFA: STA.w $7E2774
#_80AAFD: LDX.b #$00

CODE_80AAFF:
#_80AAFF: LDA.w $7E27B9,X
#_80AB02: STA.w $7E2753,X
#_80AB05: CMP.b #$FF
#_80AB07: BEQ CODE_80AB0C
#_80AB09: INX
#_80AB0A: BRA CODE_80AAFF

CODE_80AB0C:
#_80AB0C: CLC
#_80AB0D: RTS

;===================================================================================================

ROUTINE_80AB0E:
#_80AB0E: LDY.w $1416
#_80AB11: LDA.w $0810,Y
#_80AB14: CMP.b #$FF
#_80AB16: BNE CODE_80AB3C
#_80AB18: LDA.w $0821,Y
#_80AB1B: BEQ CODE_80AB26
#_80AB1D: LDA.w $0822,Y
#_80AB20: BNE CODE_80AB26
#_80AB22: LDX.b #$B0
#_80AB24: BNE CODE_80AB32

CODE_80AB26:
#_80AB26: LDA.w $081F,Y
#_80AB29: BEQ CODE_80AB5D
#_80AB2B: LDA.w $081E,Y
#_80AB2E: BNE CODE_80AB5D
#_80AB30: LDX.b #$A0

CODE_80AB32:
#_80AB32: STX.w $7E27EB
#_80AB35: LDA.b #$0A
#_80AB37: STA.w $7E27DB
#_80AB3A: SEC
#_80AB3B: RTS

CODE_80AB3C:
#_80AB3C: CMP.b #$00
#_80AB3E: BEQ CODE_80AB5D
#_80AB40: LDA.w $7E27ED
#_80AB43: BEQ CODE_80AB4C
#_80AB45: LDA.b #$08
#_80AB47: STA.w $7E27DB
#_80AB4A: SEC
#_80AB4B: RTS

CODE_80AB4C:
#_80AB4C: LDA.b #$07
#_80AB4E: STA.w $7E27DB
#_80AB51: LDA.b #$02
#_80AB53: STA.w $7E27EE
#_80AB56: LDA.b #$03
#_80AB58: STA.w $7E27F3
#_80AB5B: SEC
#_80AB5C: RTS

CODE_80AB5D:
#_80AB5D: CLC
#_80AB5E: RTS

;===================================================================================================

ROUTINE_80AB5F:
#_80AB5F: JSR ROUTINE_80ACA8
#_80AB62: BCC CODE_80AB65
#_80AB64: RTS

CODE_80AB65:
#_80AB65: LDA.w $146D
#_80AB68: BEQ CODE_80AB77
#_80AB6A: CMP.b #$11
#_80AB6C: BEQ CODE_80AB77
#_80AB6E: CMP.b #$04
#_80AB70: BEQ CODE_80AB77
#_80AB72: CMP.b #$0B
#_80AB74: BEQ CODE_80AB77
#_80AB76: RTS

CODE_80AB77:
#_80AB77: LDA.w $1AC0
#_80AB7A: AND.b #$82
#_80AB7C: BEQ CODE_80AB7F
#_80AB7E: RTS

CODE_80AB7F:
#_80AB7F: LDX.w $7E27DC
#_80AB82: LDA.w $7E2753,X
#_80AB85: CMP.b #$FF
#_80AB87: BNE CODE_80AB9D
#_80AB89: LDA.b #$0B
#_80AB8B: STA.w $7E27DB
#_80AB8E: LDA.b #$00
#_80AB90: STA.w $7E27E9
#_80AB93: STA.w $7E27EE
#_80AB96: STA.w $7E27F3
#_80AB99: STA.w $7E27ED
#_80AB9C: RTS

CODE_80AB9D:
#_80AB9D: INC.w $7E27DC
#_80ABA0: AND.b #$03
#_80ABA2: BEQ CODE_80ABBA
#_80ABA4: LDA.w $146D
#_80ABA7: CMP.b #$11
#_80ABA9: BEQ CODE_80ABE5
#_80ABAB: LDA.b #$00
#_80ABAD: STA.b $AF
#_80ABAF: LDA.w $7E2753,X
#_80ABB2: AND.b #$03
#_80ABB4: STA.b $B0
#_80ABB6: STA.w $7E27F1
#_80ABB9: RTS

CODE_80ABBA:
#_80ABBA: LDA.w $7E2753,X
#_80ABBD: CMP.b #$10
#_80ABBF: BNE CODE_80ABE9
#_80ABC1: LDA.w $146D
#_80ABC4: CMP.b #$11
#_80ABC6: BNE CODE_80ABD7
#_80ABC8: LDA.w $7E27F1
#_80ABCB: AND.b #$03
#_80ABCD: BEQ CODE_80ABD7
#_80ABCF: LDY.w $1416
#_80ABD2: LDA.w $0810,Y
#_80ABD5: BEQ CODE_80ABE5

CODE_80ABD7:
#_80ABD7: LDA.b #$80
#_80ABD9: STA.b $AF
#_80ABDB: LDA.b #$00
#_80ABDD: STA.b $B0
#_80ABDF: LDA.b #$10
#_80ABE1: STA.w $7E27F1
#_80ABE4: RTS

CODE_80ABE5:
#_80ABE5: DEC.w $7E27DC
#_80ABE8: RTS

CODE_80ABE9:
#_80ABE9: LDA.w $7E2753,X
#_80ABEC: CMP.b #$20
#_80ABEE: BNE CODE_80AC14
#_80ABF0: LDA.w $146D
#_80ABF3: CMP.b #$11
#_80ABF5: BNE CODE_80AC06
#_80ABF7: LDA.w $7E27F1
#_80ABFA: AND.b #$03
#_80ABFC: BEQ CODE_80ABD7
#_80ABFE: LDY.w $1416
#_80AC01: LDA.w $0810,Y
#_80AC04: BEQ CODE_80ABE5

CODE_80AC06:
#_80AC06: LDA.b #$00
#_80AC08: STA.b $AF
#_80AC0A: LDA.b #$80
#_80AC0C: STA.b $B0
#_80AC0E: LDA.b #$20
#_80AC10: STA.w $7E27F1
#_80AC13: RTS

CODE_80AC14:
#_80AC14: LDA.w $146D
#_80AC17: CMP.b #$11
#_80AC19: BEQ CODE_80ABE5
#_80AC1B: LDA.w $7E2753,X
#_80AC1E: CMP.b #$30
#_80AC20: BNE CODE_80AC2E
#_80AC22: STA.w $7E27F1
#_80AC25: LDA.b #$40
#_80AC27: STA.b $AF
#_80AC29: LDA.b #$00
#_80AC2B: STA.b $B0
#_80AC2D: RTS

CODE_80AC2E:
#_80AC2E: LDA.w $7E2753,X
#_80AC31: CMP.b #$40
#_80AC33: BNE CODE_80AC3F
#_80AC35: STA.w $7E27F1
#_80AC38: LDA.b #$8B
#_80AC3A: STA.w $7E27EC
#_80AC3D: BRA ROUTINE_80ACA8

CODE_80AC3F:
#_80AC3F: LDA.w $7E2753,X
#_80AC42: CMP.b #$50
#_80AC44: BNE CODE_80AC50
#_80AC46: STA.w $7E27F1
#_80AC49: LDA.b #$0B
#_80AC4B: STA.w $7E27EC
#_80AC4E: BRA ROUTINE_80ACA8

CODE_80AC50:
#_80AC50: LDA.w $7E2753,X
#_80AC53: CMP.b #$60
#_80AC55: BNE CODE_80AC61
#_80AC57: STA.w $7E27F1
#_80AC5A: LDA.b #$8B
#_80AC5C: STA.w $7E27EC
#_80AC5F: BRA ROUTINE_80ACA8

CODE_80AC61:
#_80AC61: LDA.w $7E2753,X
#_80AC64: CMP.b #$70
#_80AC66: BNE CODE_80AC72
#_80AC68: STA.w $7E27F1
#_80AC6B: LDA.b #$0B
#_80AC6D: STA.w $7E27EC
#_80AC70: BRA ROUTINE_80ACA8

CODE_80AC72:
#_80AC72: LDA.w $7E2753,X
#_80AC75: CMP.b #$80
#_80AC77: BNE CODE_80AC83
#_80AC79: STA.w $7E27F1
#_80AC7C: LDA.b #$87
#_80AC7E: STA.w $7E27EC
#_80AC81: BRA ROUTINE_80ACA8

CODE_80AC83:
#_80AC83: LDA.w $7E2753,X
#_80AC86: CMP.b #$90
#_80AC88: BNE CODE_80AC94
#_80AC8A: STA.w $7E27F1
#_80AC8D: LDA.b #$07
#_80AC8F: STA.w $7E27EC
#_80AC92: BRA ROUTINE_80ACA8

CODE_80AC94:
#_80AC94: LDA.w $7E2753,X
#_80AC97: CMP.b #$A0
#_80AC99: BEQ CODE_80AC9F
#_80AC9B: CMP.b #$B0
#_80AC9D: BNE CODE_80ACA7

CODE_80AC9F:
#_80AC9F: STA.w $7E27F1
#_80ACA2: LDA.b #$40
#_80ACA4: STA.b $B0
#_80ACA6: RTS

CODE_80ACA7:
#_80ACA7: RTS

;===================================================================================================

ROUTINE_80ACA8:
#_80ACA8: LDA.w $7E27EC
#_80ACAB: AND.b #$7F
#_80ACAD: BNE CODE_80ACB4
#_80ACAF: STA.w $7E27EC
#_80ACB2: CLC
#_80ACB3: RTS

CODE_80ACB4:
#_80ACB4: LDA.b #$FF
#_80ACB6: STA.w $7E27DD
#_80ACB9: DEC.w $7E27EC
#_80ACBC: LDA.w $7E27EC
#_80ACBF: BMI CODE_80ACC7
#_80ACC1: LDA.b #$01
#_80ACC3: STA.b $A8
#_80ACC5: SEC
#_80ACC6: RTS

CODE_80ACC7:
#_80ACC7: LDA.b #$02
#_80ACC9: STA.b $A8
#_80ACCB: SEC
#_80ACCC: RTS

;===================================================================================================

ROUTINE_80ACCD:
#_80ACCD: JSR ROUTINE_80A552
#_80ACD0: LDA.w $1416
#_80ACD3: LDX.w $7E27F4
#_80ACD6: STA.w $7E23E0,X
#_80ACD9: STA.w $7E2000
#_80ACDC: JSR ROUTINE_80AD19
#_80ACDF: BCC CODE_80ACE7
#_80ACE1: LDA.b #$08
#_80ACE3: STA.w $7E27DB
#_80ACE6: RTS

CODE_80ACE7:
#_80ACE7: LDA.b #$1F
#_80ACE9: LDX.w $147D
#_80ACEC: BEQ CODE_80ACF0
#_80ACEE: LDA.b #$2F

CODE_80ACF0:
#_80ACF0: LDX.w $7E27F4
#_80ACF3: STA.w $7E23E8,X
#_80ACF6: DEX
#_80ACF7: TXA
#_80ACF8: ASL A
#_80ACF9: ASL A
#_80ACFA: ASL A
#_80ACFB: ASL A
#_80ACFC: TAX
#_80ACFD: LDA.b #$00
#_80ACFF: STA.w $7E2361,X
#_80AD02: LDA.b #$FF
#_80AD04: STA.w $7E2362,X
#_80AD07: LDA.b #$01
#_80AD09: STA.w $7E27ED
#_80AD0C: LDX.w $7E27F4
#_80AD0F: DEX
#_80AD10: STX.w $7E2751
#_80AD13: LDA.b #$0D
#_80AD15: STA.w $7E27DB
#_80AD18: RTS

;===================================================================================================

ROUTINE_80AD19:
#_80AD19: LDY.w $7E2000

.next:
#_80AD1C: LDA.w $0810,Y
#_80AD1F: BEQ .fail
#_80AD21: CMP.b #$FF
#_80AD23: BEQ .fail
#_80AD25: CMP.b #$01
#_80AD27: BNE .not_this
#_80AD29: LDA.b #$01
#_80AD2B: STA.w $7E27F0
#_80AD2E: SEC
#_80AD2F: RTS

.not_this:
#_80AD30: TYA
#_80AD31: SEC
#_80AD32: SBC.b #$10
#_80AD34: TAY
#_80AD35: BRA .next

.fail:
#_80AD37: CLC
#_80AD38: RTS

;===================================================================================================

ROUTINE_80AD39:
#_80AD39: LDA.b #$00
#_80AD3B: STA.w $7E27DC

#_80AD3E: LDA.b #$30
#_80AD40: STA.w $7E2753

#_80AD43: LDA.b #$FF
#_80AD45: STA.w $7E2754

#_80AD48: LDA.b #$06
#_80AD4A: STA.w $7E27DB

#_80AD4D: RTS

;===================================================================================================

ROUTINE_80AD4E:
#_80AD4E: LDA.b #$00
#_80AD50: STA.w $7E27DC
#_80AD53: LDX.b #$00
#_80AD55: LDA.w $147D
#_80AD58: BEQ CODE_80AD5C
#_80AD5A: LDX.b #$01

CODE_80AD5C:
#_80AD5C: STX.w $7E2753
#_80AD5F: LDA.b #$01
#_80AD61: STA.w $7E2754
#_80AD64: LDA.b #$FF
#_80AD66: STA.w $7E2755
#_80AD69: LDA.b #$06
#_80AD6B: STA.w $7E27DB
#_80AD6E: RTS

;===================================================================================================

ROUTINE_80AD6F:
#_80AD6F: LDA.b #$00
#_80AD71: STA.w $7E27DC
#_80AD74: LDA.w $7E27EB
#_80AD77: BNE CODE_80AD7A
#_80AD79: RTS

CODE_80AD7A:
#_80AD7A: CMP.b #$B0
#_80AD7C: BNE CODE_80AD9B
#_80AD7E: LDX.b #$00
#_80AD80: LDA.w $147D
#_80AD83: BEQ CODE_80AD87
#_80AD85: LDX.b #$01

CODE_80AD87:
#_80AD87: STX.w $7E2753
#_80AD8A: LDA.w $7E27EB
#_80AD8D: STA.w $7E2754
#_80AD90: LDA.b #$FF
#_80AD92: STA.w $7E2755

CODE_80AD95:
#_80AD95: LDA.b #$06
#_80AD97: STA.w $7E27DB
#_80AD9A: RTS

CODE_80AD9B:
#_80AD9B: CMP.b #$A0
#_80AD9D: BNE CODE_80ADB8
#_80AD9F: LDX.b #$00
#_80ADA1: LDA.w $147D
#_80ADA4: BNE CODE_80ADA8
#_80ADA6: LDX.b #$02

CODE_80ADA8:
#_80ADA8: STX.w $7E2753
#_80ADAB: LDA.w $7E27EB
#_80ADAE: STA.w $7E2754
#_80ADB1: LDA.b #$FF
#_80ADB3: STA.w $7E2755
#_80ADB6: BRA CODE_80AD95

CODE_80ADB8:
#_80ADB8: LDA.w $7E27EB
#_80ADBB: STA.w $7E2753
#_80ADBE: LDA.b #$FF
#_80ADC0: STA.w $7E2754
#_80ADC3: BRA CODE_80AD95

;===================================================================================================

Nothing_80ADC5:
#_80ADC5: RTS

;===================================================================================================

Nothing_80ADC6:
#_80ADC6: RTS

;===================================================================================================

ROUTINE_80ADC7:
#_80ADC7: LDA.b #$00
#_80ADC9: STA.w $7E27E6
#_80ADCC: LDA.w $7E27E7
#_80ADCF: ASL A
#_80ADD0: TAX
#_80ADD1: LDA.l PTR16_80ADE0,X
#_80ADD5: STA.b $12
#_80ADD7: LDA.l PTR16_80ADE1,X
#_80ADDB: STA.b $13
#_80ADDD: JMP.w ($0012)

PTR16_80ADE0:
#_80ADE0: dw ROUTINE_80AE10
#_80ADE2: dw ROUTINE_80AE15
#_80ADE4: dw ROUTINE_80AE36
#_80ADE6: dw ROUTINE_80AE5D
#_80ADE8: dw ROUTINE_80AE80
#_80ADEA: dw ROUTINE_80AE8E
#_80ADEC: dw ROUTINE_80AE98
#_80ADEE: dw ROUTINE_80AEB9
#_80ADF0: dw ROUTINE_80AEE0
#_80ADF2: dw ROUTINE_80AF03
#_80ADF4: dw ROUTINE_80AF13
#_80ADF6: dw ROUTINE_80AF18
#_80ADF8: dw ROUTINE_80AF39
#_80ADFA: dw ROUTINE_80AF60
#_80ADFC: dw ROUTINE_80AF83
#_80ADFE: dw ROUTINE_80AF91
#_80AE00: dw ROUTINE_80AF9B
#_80AE02: dw ROUTINE_80AFBC
#_80AE04: dw ROUTINE_80AFE3
#_80AE06: dw ROUTINE_80B006
#_80AE08: dw ROUTINE_80B016
#_80AE0A: dw ROUTINE_80B056
#_80AE0C: dw ROUTINE_80B096
#_80AE0E: dw ROUTINE_80B0D6

;===================================================================================================

ROUTINE_80AE10:
#_80AE10: LDA.b #$02
#_80AE12: JSR ROUTINE_80B9CB

ROUTINE_80AE15:
#_80AE15: LDA.b #$01
#_80AE17: STA.w $7E27E7
#_80AE1A: LDY.w $7E2000
#_80AE1D: LDA.w $081F,Y
#_80AE20: BEQ ROUTINE_80AE36
#_80AE22: CMP.b #$FF
#_80AE24: BEQ ROUTINE_80AE8E
#_80AE26: JSR ROUTINE_80B311
#_80AE29: BCC CODE_80AE2C
#_80AE2B: RTS

CODE_80AE2C:
#_80AE2C: LDA.b #$00
#_80AE2E: STA.w $7E27EF
#_80AE31: JSR ROUTINE_80B84B
#_80AE34: BRA ROUTINE_80AE5D

;===================================================================================================

ROUTINE_80AE36:
#_80AE36: LDA.b #$02
#_80AE38: STA.w $7E27E7
#_80AE3B: LDY.w $7E2000
#_80AE3E: LDA.w $082F,Y
#_80AE41: BEQ CODE_80AE4D
#_80AE43: CMP.b #$FF
#_80AE45: BEQ CODE_80AE4D
#_80AE47: JSR ROUTINE_80B311
#_80AE4A: BCC CODE_80AE4D
#_80AE4C: RTS

CODE_80AE4D:
#_80AE4D: JSR ROUTINE_80B894
#_80AE50: LDA.w $7E27EF
#_80AE53: BEQ ROUTINE_80AE15
#_80AE55: LDA.b #$00
#_80AE57: STA.w $7E27EF
#_80AE5A: JMP.w ROUTINE_80B016

;===================================================================================================

ROUTINE_80AE5D:
#_80AE5D: LDA.b #$03
#_80AE5F: STA.w $7E27E7
#_80AE62: LDY.w $7E2000
#_80AE65: LDA.w $0810,Y
#_80AE68: BNE ROUTINE_80AE8E
#_80AE6A: JSR ROUTINE_80B7EF
#_80AE6D: LDY.w $7E2000
#_80AE70: LDA.w $081F,Y
#_80AE73: BEQ CODE_80AE7B
#_80AE75: CMP.b #$FF
#_80AE77: BEQ ROUTINE_80AE8E
#_80AE79: BNE ROUTINE_80AE80

CODE_80AE7B:
#_80AE7B: JSR ROUTINE_80B793
#_80AE7E: BRA ROUTINE_80AE15

;===================================================================================================

ROUTINE_80AE80:
#_80AE80: LDA.b #$04
#_80AE82: STA.w $7E27E7
#_80AE85: LDY.w $7E2000
#_80AE88: JSR ROUTINE_80B311
#_80AE8B: BCC ROUTINE_80AE5D
#_80AE8D: RTS

;===================================================================================================

ROUTINE_80AE8E:
#_80AE8E: LDA.b #$05
#_80AE90: STA.w $7E27E7
#_80AE93: LDA.b #$01
#_80AE95: JSR ROUTINE_80B9CB

ROUTINE_80AE98:
#_80AE98: LDA.b #$06
#_80AE9A: STA.w $7E27E7
#_80AE9D: LDY.w $7E2000
#_80AEA0: LDA.w $0821,Y
#_80AEA3: BEQ ROUTINE_80AEB9
#_80AEA5: CMP.b #$FF
#_80AEA7: BEQ CODE_80AF11
#_80AEA9: JSR ROUTINE_80B3E2
#_80AEAC: BCC CODE_80AEAF
#_80AEAE: RTS

CODE_80AEAF:
#_80AEAF: LDA.b #$00
#_80AEB1: STA.w $7E27EF
#_80AEB4: JSR ROUTINE_80B866
#_80AEB7: BRA ROUTINE_80AEE0

;===================================================================================================

ROUTINE_80AEB9:
#_80AEB9: LDA.b #$07
#_80AEBB: STA.w $7E27E7
#_80AEBE: LDY.w $7E2000
#_80AEC1: LDA.w $0831,Y
#_80AEC4: BEQ CODE_80AED0
#_80AEC6: CMP.b #$FF
#_80AEC8: BEQ CODE_80AED0
#_80AECA: JSR ROUTINE_80B3E2
#_80AECD: BCC CODE_80AED0
#_80AECF: RTS

CODE_80AED0:
#_80AED0: JSR ROUTINE_80B939
#_80AED3: LDA.w $7E27EF
#_80AED6: BEQ ROUTINE_80AE98
#_80AED8: LDA.b #$00
#_80AEDA: STA.w $7E27EF
#_80AEDD: JMP.w ROUTINE_80B056

;===================================================================================================

ROUTINE_80AEE0:
#_80AEE0: LDA.b #$08
#_80AEE2: STA.w $7E27E7
#_80AEE5: LDY.w $7E2000
#_80AEE8: LDA.w $0810,Y
#_80AEEB: BNE CODE_80AF11
#_80AEED: JSR ROUTINE_80B81D
#_80AEF0: LDY.w $7E2000
#_80AEF3: LDA.w $0821,Y
#_80AEF6: BEQ CODE_80AEFE
#_80AEF8: CMP.b #$FF
#_80AEFA: BEQ CODE_80AF11
#_80AEFC: BNE ROUTINE_80AF03

CODE_80AEFE:
#_80AEFE: JSR ROUTINE_80B7C1
#_80AF01: BRA ROUTINE_80AE98

;===================================================================================================

ROUTINE_80AF03:
#_80AF03: LDA.b #$09
#_80AF05: STA.w $7E27E7
#_80AF08: LDY.w $7E2000
#_80AF0B: JSR ROUTINE_80B3E2
#_80AF0E: BCC ROUTINE_80AEE0
#_80AF10: RTS

CODE_80AF11:
#_80AF11: SEC
#_80AF12: RTS

;===================================================================================================

ROUTINE_80AF13:
#_80AF13: LDA.b #$01
#_80AF15: JSR ROUTINE_80B9CB

ROUTINE_80AF18:
#_80AF18: LDA.b #$0B
#_80AF1A: STA.w $7E27E7
#_80AF1D: LDY.w $7E2000
#_80AF20: LDA.w $0821,Y
#_80AF23: BEQ ROUTINE_80AF39
#_80AF25: CMP.b #$FF
#_80AF27: BEQ ROUTINE_80AF91
#_80AF29: JSR ROUTINE_80B3E2
#_80AF2C: BCC CODE_80AF2F
#_80AF2E: RTS

CODE_80AF2F:
#_80AF2F: LDA.b #$00
#_80AF31: STA.w $7E27EF
#_80AF34: JSR ROUTINE_80B866
#_80AF37: BRA ROUTINE_80AF60

;===================================================================================================

ROUTINE_80AF39:
#_80AF39: LDA.b #$0C
#_80AF3B: STA.w $7E27E7
#_80AF3E: LDY.w $7E2000
#_80AF41: LDA.w $0831,Y
#_80AF44: BEQ CODE_80AF50
#_80AF46: CMP.b #$FF
#_80AF48: BEQ CODE_80AF50
#_80AF4A: JSR ROUTINE_80B3E2
#_80AF4D: BCC CODE_80AF50
#_80AF4F: RTS

CODE_80AF50:
#_80AF50: JSR ROUTINE_80B939
#_80AF53: LDA.w $7E27EF
#_80AF56: BEQ ROUTINE_80AF18
#_80AF58: LDA.b #$00
#_80AF5A: STA.w $7E27EF
#_80AF5D: JMP.w ROUTINE_80B096

;===================================================================================================

ROUTINE_80AF60:
#_80AF60: LDA.b #$0D
#_80AF62: STA.w $7E27E7
#_80AF65: LDY.w $7E2000
#_80AF68: LDA.w $0810,Y
#_80AF6B: BNE ROUTINE_80AF91
#_80AF6D: JSR ROUTINE_80B81D
#_80AF70: LDY.w $7E2000
#_80AF73: LDA.w $0821,Y
#_80AF76: BEQ CODE_80AF7E
#_80AF78: CMP.b #$FF
#_80AF7A: BEQ ROUTINE_80AF91
#_80AF7C: BNE ROUTINE_80AF83

CODE_80AF7E:
#_80AF7E: JSR ROUTINE_80B7C1
#_80AF81: BRA ROUTINE_80AF18

;===================================================================================================

ROUTINE_80AF83:
#_80AF83: LDA.b #$0E
#_80AF85: STA.w $7E27E7
#_80AF88: LDY.w $7E2000
#_80AF8B: JSR ROUTINE_80B3E2
#_80AF8E: BCC ROUTINE_80AF60
#_80AF90: RTS

;===================================================================================================

ROUTINE_80AF91:
#_80AF91: LDA.b #$0F
#_80AF93: STA.w $7E27E7
#_80AF96: LDA.b #$02
#_80AF98: JSR ROUTINE_80B9CB

ROUTINE_80AF9B:
#_80AF9B: LDA.b #$10
#_80AF9D: STA.w $7E27E7
#_80AFA0: LDY.w $7E2000
#_80AFA3: LDA.w $081F,Y
#_80AFA6: BEQ ROUTINE_80AFBC
#_80AFA8: CMP.b #$FF
#_80AFAA: BEQ CODE_80B014
#_80AFAC: JSR ROUTINE_80B311
#_80AFAF: BCC CODE_80AFB2
#_80AFB1: RTS

CODE_80AFB2:
#_80AFB2: LDA.b #$00
#_80AFB4: STA.w $7E27EF
#_80AFB7: JSR ROUTINE_80B84B
#_80AFBA: BRA ROUTINE_80AFE3

;===================================================================================================

ROUTINE_80AFBC:
#_80AFBC: LDA.b #$11
#_80AFBE: STA.w $7E27E7
#_80AFC1: LDY.w $7E2000
#_80AFC4: LDA.w $082F,Y
#_80AFC7: BEQ CODE_80AFD3
#_80AFC9: CMP.b #$FF
#_80AFCB: BEQ CODE_80AFD3
#_80AFCD: JSR ROUTINE_80B311
#_80AFD0: BCC CODE_80AFD3
#_80AFD2: RTS

CODE_80AFD3:
#_80AFD3: JSR ROUTINE_80B894
#_80AFD6: LDA.w $7E27EF
#_80AFD9: BEQ ROUTINE_80AF9B
#_80AFDB: LDA.b #$00
#_80AFDD: STA.w $7E27EF
#_80AFE0: JMP.w ROUTINE_80B0D6

;===================================================================================================

ROUTINE_80AFE3:
#_80AFE3: LDA.b #$12
#_80AFE5: STA.w $7E27E7
#_80AFE8: LDY.w $7E2000
#_80AFEB: LDA.w $0810,Y
#_80AFEE: BNE CODE_80B014
#_80AFF0: JSR ROUTINE_80B7EF
#_80AFF3: LDY.w $7E2000
#_80AFF6: LDA.w $081F,Y
#_80AFF9: BEQ CODE_80B001
#_80AFFB: CMP.b #$FF
#_80AFFD: BEQ CODE_80B014
#_80AFFF: BNE ROUTINE_80B006

CODE_80B001:
#_80B001: JSR ROUTINE_80B793
#_80B004: BRA ROUTINE_80AF9B

;===================================================================================================

ROUTINE_80B006:
#_80B006: LDA.b #$13
#_80B008: STA.w $7E27E7
#_80B00B: LDY.w $7E2000
#_80B00E: JSR ROUTINE_80B311
#_80B011: BCC ROUTINE_80AFE3
#_80B013: RTS

CODE_80B014:
#_80B014: SEC
#_80B015: RTS

;===================================================================================================

ROUTINE_80B016:
#_80B016: LDA.b #$14
#_80B018: STA.w $7E27E7
#_80B01B: LDY.w $7E2000
#_80B01E: LDA.w $7E2121,Y
#_80B021: BEQ CODE_80B029
#_80B023: CMP.b #$FF
#_80B025: BEQ CODE_80B053
#_80B027: BNE CODE_80B032

CODE_80B029:
#_80B029: LDA.w $7E2131,Y
#_80B02C: BEQ CODE_80B053
#_80B02E: CMP.b #$FF
#_80B030: BEQ CODE_80B053

CODE_80B032:
#_80B032: LDX.w $7E2320
#_80B035: LDA.b #$01
#_80B037: STA.w $7E2321,X
#_80B03A: LDA.b #$FF
#_80B03C: STA.w $7E2322,X
#_80B03F: INC.w $7E2320
#_80B042: JSR ROUTINE_80B3E2
#_80B045: BCC CODE_80B048
#_80B047: RTS

CODE_80B048:
#_80B048: DEC.w $7E2320
#_80B04B: LDX.w $7E2320
#_80B04E: LDA.b #$FF
#_80B050: STA.w $7E2321,X

CODE_80B053:
#_80B053: JMP.w ROUTINE_80AE15

;===================================================================================================

ROUTINE_80B056:
#_80B056: LDA.b #$15
#_80B058: STA.w $7E27E7
#_80B05B: LDY.w $7E2000
#_80B05E: LDA.w $7E211F,Y
#_80B061: BEQ CODE_80B069
#_80B063: CMP.b #$FF
#_80B065: BEQ CODE_80B093
#_80B067: BNE CODE_80B072

CODE_80B069:
#_80B069: LDA.w $7E212F,Y
#_80B06C: BEQ CODE_80B093
#_80B06E: CMP.b #$FF
#_80B070: BEQ CODE_80B093

CODE_80B072:
#_80B072: LDX.w $7E2320
#_80B075: LDA.b #$02
#_80B077: STA.w $7E2321,X
#_80B07A: LDA.b #$FF
#_80B07C: STA.w $7E2322,X
#_80B07F: INC.w $7E2320
#_80B082: JSR ROUTINE_80B311
#_80B085: BCC CODE_80B088
#_80B087: RTS

CODE_80B088:
#_80B088: DEC.w $7E2320
#_80B08B: LDX.w $7E2320
#_80B08E: LDA.b #$FF
#_80B090: STA.w $7E2321,X

CODE_80B093:
#_80B093: JMP.w ROUTINE_80AE98

;===================================================================================================

ROUTINE_80B096:
#_80B096: LDA.b #$16
#_80B098: STA.w $7E27E7
#_80B09B: LDY.w $7E2000
#_80B09E: LDA.w $7E211F,Y
#_80B0A1: BEQ CODE_80B0A9
#_80B0A3: CMP.b #$FF
#_80B0A5: BEQ CODE_80B0D3
#_80B0A7: BNE CODE_80B0B2

CODE_80B0A9:
#_80B0A9: LDA.w $7E212F,Y
#_80B0AC: BEQ CODE_80B0D3
#_80B0AE: CMP.b #$FF
#_80B0B0: BEQ CODE_80B0D3

CODE_80B0B2:
#_80B0B2: LDX.w $7E2320
#_80B0B5: LDA.b #$02
#_80B0B7: STA.w $7E2321,X
#_80B0BA: LDA.b #$FF
#_80B0BC: STA.w $7E2322,X
#_80B0BF: INC.w $7E2320
#_80B0C2: JSR ROUTINE_80B311
#_80B0C5: BCC CODE_80B0C8
#_80B0C7: RTS

CODE_80B0C8:
#_80B0C8: DEC.w $7E2320
#_80B0CB: LDX.w $7E2320
#_80B0CE: LDA.b #$FF
#_80B0D0: STA.w $7E2321,X

CODE_80B0D3:
#_80B0D3: JMP.w ROUTINE_80AF18

;===================================================================================================

ROUTINE_80B0D6:
#_80B0D6: LDA.b #$17
#_80B0D8: STA.w $7E27E7
#_80B0DB: LDY.w $7E2000
#_80B0DE: LDA.w $7E2121,Y
#_80B0E1: BEQ CODE_80B0E9
#_80B0E3: CMP.b #$FF
#_80B0E5: BEQ CODE_80B113
#_80B0E7: BNE CODE_80B0F2

CODE_80B0E9:
#_80B0E9: LDA.w $7E2131,Y
#_80B0EC: BEQ CODE_80B113
#_80B0EE: CMP.b #$FF
#_80B0F0: BEQ CODE_80B113

CODE_80B0F2:
#_80B0F2: LDX.w $7E2320
#_80B0F5: LDA.b #$01
#_80B0F7: STA.w $7E2321,X
#_80B0FA: LDA.b #$FF
#_80B0FC: STA.w $7E2322,X
#_80B0FF: INC.w $7E2320
#_80B102: JSR ROUTINE_80B3E2
#_80B105: BCC CODE_80B108
#_80B107: RTS

CODE_80B108:
#_80B108: DEC.w $7E2320
#_80B10B: LDX.w $7E2320
#_80B10E: LDA.b #$FF
#_80B110: STA.w $7E2321,X

CODE_80B113:
#_80B113: JMP.w ROUTINE_80AF9B

;===================================================================================================

ROUTINE_80B116:
#_80B116: LDA.b #$00
#_80B118: STA.w $7E27E6
#_80B11B: LDA.w $7E27E8
#_80B11E: ASL A
#_80B11F: TAX
#_80B120: LDA.l PTR16_80B12F,X
#_80B124: STA.b $12
#_80B126: LDA.l PTR16_80B130,X
#_80B12A: STA.b $13
#_80B12C: JMP.w ($0012)

PTR16_80B12F:
#_80B12F: dw ROUTINE_80B153
#_80B131: dw ROUTINE_80B158
#_80B133: dw ROUTINE_80B17B
#_80B135: dw ROUTINE_80B19B
#_80B137: dw ROUTINE_80B1BB
#_80B139: dw ROUTINE_80B1C0
#_80B13B: dw ROUTINE_80B1E3
#_80B13D: dw ROUTINE_80B203
#_80B13F: dw ROUTINE_80B223
#_80B141: dw ROUTINE_80B232
#_80B143: dw ROUTINE_80B237
#_80B145: dw ROUTINE_80B25A
#_80B147: dw ROUTINE_80B27A
#_80B149: dw ROUTINE_80B29A
#_80B14B: dw ROUTINE_80B29F
#_80B14D: dw ROUTINE_80B2C2
#_80B14F: dw ROUTINE_80B2E2
#_80B151: dw ROUTINE_80B302

;===================================================================================================

ROUTINE_80B153:
#_80B153: LDA.b #$02
#_80B155: JSR ROUTINE_80BA18

ROUTINE_80B158:
#_80B158: LDA.b #$01
#_80B15A: STA.w $7E27E8
#_80B15D: LDY.w $7E2000
#_80B160: LDA.w $7E211F,Y
#_80B163: BEQ CODE_80B16B
#_80B165: CMP.b #$FF
#_80B167: BEQ ROUTINE_80B1BB
#_80B169: BNE ROUTINE_80B17B

CODE_80B16B:
#_80B16B: LDA.w $7E2320
#_80B16E: BEQ CODE_80B176
#_80B170: JSR ROUTINE_80B4D3
#_80B173: BCC CODE_80B176
#_80B175: RTS

CODE_80B176:
#_80B176: JSR ROUTINE_80B8CC
#_80B179: BRA ROUTINE_80B158

;===================================================================================================

ROUTINE_80B17B:
#_80B17B: LDA.b #$02
#_80B17D: STA.w $7E27E8
#_80B180: LDY.w $7E2000
#_80B183: LDA.w $7E210F,Y
#_80B186: BEQ CODE_80B18E
#_80B188: CMP.b #$FF
#_80B18A: BEQ ROUTINE_80B1BB
#_80B18C: BNE ROUTINE_80B19B

CODE_80B18E:
#_80B18E: LDA.w $7E2320
#_80B191: BEQ CODE_80B199
#_80B193: JSR ROUTINE_80B4D3
#_80B196: BCC CODE_80B199
#_80B198: RTS

CODE_80B199:
#_80B199: BRA ROUTINE_80B1BB

;===================================================================================================

ROUTINE_80B19B:
#_80B19B: LDA.b #$03
#_80B19D: STA.w $7E27E8
#_80B1A0: LDY.w $7E2000
#_80B1A3: LDA.w $7E20FF,Y
#_80B1A6: BEQ CODE_80B1AE
#_80B1A8: CMP.b #$FF
#_80B1AA: BEQ ROUTINE_80B1BB
#_80B1AC: BNE ROUTINE_80B1BB

CODE_80B1AE:
#_80B1AE: LDA.w $7E2320
#_80B1B1: BEQ CODE_80B1B9
#_80B1B3: JSR ROUTINE_80B4D3
#_80B1B6: BCC CODE_80B1B9
#_80B1B8: RTS

CODE_80B1B9:
#_80B1B9: BRA ROUTINE_80B1BB

;===================================================================================================

ROUTINE_80B1BB:
#_80B1BB: LDA.b #$01
#_80B1BD: JSR ROUTINE_80BA18

ROUTINE_80B1C0:
#_80B1C0: LDA.b #$05
#_80B1C2: STA.w $7E27E8
#_80B1C5: LDY.w $7E2000
#_80B1C8: LDA.w $7E2121,Y
#_80B1CB: BEQ CODE_80B1D3
#_80B1CD: CMP.b #$FF
#_80B1CF: BEQ ROUTINE_80B223
#_80B1D1: BNE ROUTINE_80B1E3

CODE_80B1D3:
#_80B1D3: LDA.w $7E2320
#_80B1D6: BEQ CODE_80B1DE
#_80B1D8: JSR ROUTINE_80B50B
#_80B1DB: BCC CODE_80B1DE
#_80B1DD: RTS

CODE_80B1DE:
#_80B1DE: JSR ROUTINE_80B971
#_80B1E1: BRA ROUTINE_80B1C0

;===================================================================================================

ROUTINE_80B1E3:
#_80B1E3: LDA.b #$06
#_80B1E5: STA.w $7E27E8
#_80B1E8: LDY.w $7E2000
#_80B1EB: LDA.w $7E2111,Y
#_80B1EE: BEQ CODE_80B1F6
#_80B1F0: CMP.b #$FF
#_80B1F2: BEQ ROUTINE_80B223
#_80B1F4: BNE ROUTINE_80B203

CODE_80B1F6:
#_80B1F6: LDA.w $7E2320
#_80B1F9: BEQ CODE_80B201
#_80B1FB: JSR ROUTINE_80B50B
#_80B1FE: BCC CODE_80B201
#_80B200: RTS

CODE_80B201:
#_80B201: BRA ROUTINE_80B223

;===================================================================================================

ROUTINE_80B203:
#_80B203: LDA.b #$07
#_80B205: STA.w $7E27E8
#_80B208: LDY.w $7E2000
#_80B20B: LDA.w $7E2101,Y
#_80B20E: BEQ CODE_80B216
#_80B210: CMP.b #$FF
#_80B212: BEQ ROUTINE_80B223
#_80B214: BNE ROUTINE_80B223

CODE_80B216:
#_80B216: LDA.w $7E2320
#_80B219: BEQ CODE_80B221
#_80B21B: JSR ROUTINE_80B50B
#_80B21E: BCC CODE_80B221
#_80B220: RTS

CODE_80B221:
#_80B221: BRA ROUTINE_80B223

;===================================================================================================

ROUTINE_80B223:
#_80B223: LDA.b #$08
#_80B225: STA.w $7E27E8
#_80B228: LDA.b #$00
#_80B22A: JSR ROUTINE_80BA18
#_80B22D: JSR ROUTINE_80B543
#_80B230: SEC
#_80B231: RTS

;===================================================================================================

ROUTINE_80B232:
#_80B232: LDA.b #$01
#_80B234: JSR ROUTINE_80BA18

ROUTINE_80B237:
#_80B237: LDA.b #$0A
#_80B239: STA.w $7E27E8
#_80B23C: LDY.w $7E2000
#_80B23F: LDA.w $7E2121,Y
#_80B242: BEQ CODE_80B24A
#_80B244: CMP.b #$FF
#_80B246: BEQ ROUTINE_80B29A
#_80B248: BNE ROUTINE_80B25A

CODE_80B24A:
#_80B24A: LDA.w $7E2320
#_80B24D: BEQ CODE_80B255
#_80B24F: JSR ROUTINE_80B50B
#_80B252: BCC CODE_80B255
#_80B254: RTS

CODE_80B255:
#_80B255: JSR ROUTINE_80B971
#_80B258: BRA ROUTINE_80B237

;===================================================================================================

ROUTINE_80B25A:
#_80B25A: LDA.b #$0B
#_80B25C: STA.w $7E27E8
#_80B25F: LDY.w $7E2000
#_80B262: LDA.w $7E2111,Y
#_80B265: BEQ CODE_80B26D
#_80B267: CMP.b #$FF
#_80B269: BEQ ROUTINE_80B29A
#_80B26B: BNE ROUTINE_80B27A

CODE_80B26D:
#_80B26D: LDA.w $7E2320
#_80B270: BEQ CODE_80B278
#_80B272: JSR ROUTINE_80B50B
#_80B275: BCC CODE_80B278
#_80B277: RTS

CODE_80B278:
#_80B278: BRA ROUTINE_80B29A

;===================================================================================================

ROUTINE_80B27A:
#_80B27A: LDA.b #$0C
#_80B27C: STA.w $7E27E8
#_80B27F: LDY.w $7E2000
#_80B282: LDA.w $7E2101,Y
#_80B285: BEQ CODE_80B28D
#_80B287: CMP.b #$FF
#_80B289: BEQ ROUTINE_80B29A
#_80B28B: BNE ROUTINE_80B29A

CODE_80B28D:
#_80B28D: LDA.w $7E2320
#_80B290: BEQ CODE_80B298
#_80B292: JSR ROUTINE_80B50B
#_80B295: BCC CODE_80B298
#_80B297: RTS

CODE_80B298:
#_80B298: BRA ROUTINE_80B29A

;===================================================================================================

ROUTINE_80B29A:
#_80B29A: LDA.b #$02
#_80B29C: JSR ROUTINE_80BA18

ROUTINE_80B29F:
#_80B29F: LDA.b #$0E
#_80B2A1: STA.w $7E27E8
#_80B2A4: LDY.w $7E2000
#_80B2A7: LDA.w $7E211F,Y
#_80B2AA: BEQ CODE_80B2B2
#_80B2AC: CMP.b #$FF
#_80B2AE: BEQ ROUTINE_80B302
#_80B2B0: BNE ROUTINE_80B2C2

CODE_80B2B2:
#_80B2B2: LDA.w $7E2320
#_80B2B5: BEQ CODE_80B2BD
#_80B2B7: JSR ROUTINE_80B4D3
#_80B2BA: BCC CODE_80B2BD
#_80B2BC: RTS

CODE_80B2BD:
#_80B2BD: JSR ROUTINE_80B8CC
#_80B2C0: BRA ROUTINE_80B29F

;===================================================================================================

ROUTINE_80B2C2:
#_80B2C2: LDA.b #$0F
#_80B2C4: STA.w $7E27E8
#_80B2C7: LDY.w $7E2000
#_80B2CA: LDA.w $7E210F,Y
#_80B2CD: BEQ CODE_80B2D5
#_80B2CF: CMP.b #$FF
#_80B2D1: BEQ ROUTINE_80B302
#_80B2D3: BNE ROUTINE_80B2E2

CODE_80B2D5:
#_80B2D5: LDA.w $7E2320
#_80B2D8: BEQ CODE_80B2E0
#_80B2DA: JSR ROUTINE_80B4D3
#_80B2DD: BCC CODE_80B2E0
#_80B2DF: RTS

CODE_80B2E0:
#_80B2E0: BRA ROUTINE_80B302

;===================================================================================================

ROUTINE_80B2E2:
#_80B2E2: LDA.b #$10
#_80B2E4: STA.w $7E27E8
#_80B2E7: LDY.w $7E2000
#_80B2EA: LDA.w $7E20FF,Y
#_80B2ED: BEQ CODE_80B2F5
#_80B2EF: CMP.b #$FF
#_80B2F1: BEQ ROUTINE_80B302
#_80B2F3: BNE ROUTINE_80B302

CODE_80B2F5:
#_80B2F5: LDA.w $7E2320
#_80B2F8: BEQ CODE_80B300
#_80B2FA: JSR ROUTINE_80B4D3
#_80B2FD: BCC CODE_80B300
#_80B2FF: RTS

CODE_80B300:
#_80B300: BRA ROUTINE_80B302

;===================================================================================================

ROUTINE_80B302:
#_80B302: LDA.b #$11
#_80B304: STA.w $7E27E8
#_80B307: LDA.b #$00
#_80B309: JSR ROUTINE_80BA18
#_80B30C: JSR ROUTINE_80B543
#_80B30F: SEC
#_80B310: RTS

;===================================================================================================

ROUTINE_80B311:
#_80B311: LDY.w $7E2000
#_80B314: LDA.w $081F,Y
#_80B317: BNE CODE_80B31C
#_80B319: JMP.w CODE_80B382

CODE_80B31C:
#_80B31C: LDA.w $080F,Y
#_80B31F: BNE CODE_80B324
#_80B321: JMP.w CODE_80B382

CODE_80B324:
#_80B324: LDA.b #$00
#_80B326: STA.w $7E27F0
#_80B329: LDX.b #$02
#_80B32B: JSR ROUTINE_80BB71
#_80B32E: BCC CODE_80B382
#_80B330: LDA.b #$10
#_80B332: JSR ROUTINE_80BAE4
#_80B335: BCC CODE_80B338
#_80B337: RTS

CODE_80B338:
#_80B338: LDX.w $7E2751
#_80B33B: LDA.w $7E2000
#_80B33E: STA.w $7E23E1,X
#_80B341: LDA.b #$20
#_80B343: STA.w $7E23E9,X
#_80B346: INC.w $7E27E6
#_80B349: JSR ROUTINE_80BD2E
#_80B34C: LDY.w $1416
#_80B34F: LDA.b #$00
#_80B351: STA.w $7E2120,Y
#_80B354: LDY.w $7E2000
#_80B357: LDA.b #$07
#_80B359: STA.w $7E2120,Y
#_80B35C: LDX.b #$02
#_80B35E: LDA.b #$00
#_80B360: JSR ROUTINE_80BD69
#_80B363: JSR ROUTINE_80B4B3
#_80B366: BCC CODE_80B369
#_80B368: RTS

CODE_80B369:
#_80B369: JSR ROUTINE_80BEAC
#_80B36C: JSR ROUTINE_80B574
#_80B36F: JSR ROUTINE_80BD2E
#_80B372: LDY.w $1416
#_80B375: LDA.b #$00
#_80B377: STA.w $7E2120,Y
#_80B37A: LDY.w $7E2000
#_80B37D: LDA.b #$07
#_80B37F: STA.w $7E2120,Y

CODE_80B382:
#_80B382: LDA.b #$00
#_80B384: STA.w $7E27F0
#_80B387: LDX.b #$02
#_80B389: JSR ROUTINE_80BBC0
#_80B38C: BCC CODE_80B3E0
#_80B38E: LDA.b #$20
#_80B390: JSR ROUTINE_80BAE4
#_80B393: BCC CODE_80B396
#_80B395: RTS

CODE_80B396:
#_80B396: LDX.w $7E2751
#_80B399: LDA.w $7E2000
#_80B39C: STA.w $7E23E1,X
#_80B39F: LDA.b #$21
#_80B3A1: STA.w $7E23E9,X
#_80B3A4: INC.w $7E27E6
#_80B3A7: JSR ROUTINE_80BD2E
#_80B3AA: LDY.w $1416
#_80B3AD: LDA.b #$00
#_80B3AF: STA.w $7E2120,Y
#_80B3B2: LDY.w $7E2000
#_80B3B5: LDA.b #$07
#_80B3B7: STA.w $7E2120,Y
#_80B3BA: LDX.b #$02
#_80B3BC: LDA.b #$01
#_80B3BE: JSR ROUTINE_80BD69
#_80B3C1: JSR ROUTINE_80B4B3
#_80B3C4: BCC CODE_80B3C7
#_80B3C6: RTS

CODE_80B3C7:
#_80B3C7: JSR ROUTINE_80BEAC
#_80B3CA: JSR ROUTINE_80B574
#_80B3CD: JSR ROUTINE_80BD2E
#_80B3D0: LDY.w $1416
#_80B3D3: LDA.b #$00
#_80B3D5: STA.w $7E2120,Y
#_80B3D8: LDY.w $7E2000
#_80B3DB: LDA.b #$07
#_80B3DD: STA.w $7E2120,Y

CODE_80B3E0:
#_80B3E0: CLC
#_80B3E1: RTS

;===================================================================================================

ROUTINE_80B3E2:
#_80B3E2: LDY.w $7E2000
#_80B3E5: LDA.w $0821,Y
#_80B3E8: BNE CODE_80B3ED
#_80B3EA: JMP.w CODE_80B453

CODE_80B3ED:
#_80B3ED: LDA.w $0811,Y
#_80B3F0: BNE CODE_80B3F5
#_80B3F2: JMP.w CODE_80B453

CODE_80B3F5:
#_80B3F5: LDA.b #$00
#_80B3F7: STA.w $7E27F0
#_80B3FA: LDX.b #$01
#_80B3FC: JSR ROUTINE_80BB71
#_80B3FF: BCC CODE_80B453
#_80B401: LDA.b #$10
#_80B403: JSR ROUTINE_80BAE4
#_80B406: BCC CODE_80B409
#_80B408: RTS

CODE_80B409:
#_80B409: LDX.w $7E2751
#_80B40C: LDA.w $7E2000
#_80B40F: STA.w $7E23E1,X
#_80B412: LDA.b #$10
#_80B414: STA.w $7E23E9,X
#_80B417: INC.w $7E27E6
#_80B41A: JSR ROUTINE_80BD2E
#_80B41D: LDY.w $1416
#_80B420: LDA.b #$00
#_80B422: STA.w $7E2120,Y
#_80B425: LDY.w $7E2000
#_80B428: LDA.b #$07
#_80B42A: STA.w $7E2120,Y
#_80B42D: LDX.b #$01
#_80B42F: LDA.b #$00
#_80B431: JSR ROUTINE_80BD69
#_80B434: JSR ROUTINE_80B4B3
#_80B437: BCC CODE_80B43A
#_80B439: RTS

CODE_80B43A:
#_80B43A: JSR ROUTINE_80BEAC
#_80B43D: JSR ROUTINE_80B574
#_80B440: JSR ROUTINE_80BD2E
#_80B443: LDY.w $1416
#_80B446: LDA.b #$00
#_80B448: STA.w $7E2120,Y
#_80B44B: LDY.w $7E2000
#_80B44E: LDA.b #$07
#_80B450: STA.w $7E2120,Y

CODE_80B453:
#_80B453: LDA.b #$00
#_80B455: STA.w $7E27F0
#_80B458: LDX.b #$01
#_80B45A: JSR ROUTINE_80BBC0
#_80B45D: BCC CODE_80B4B1
#_80B45F: LDA.b #$20
#_80B461: JSR ROUTINE_80BAE4
#_80B464: BCC CODE_80B467
#_80B466: RTS

CODE_80B467:
#_80B467: LDX.w $7E2751
#_80B46A: LDA.w $7E2000
#_80B46D: STA.w $7E23E1,X
#_80B470: LDA.b #$11
#_80B472: STA.w $7E23E9,X
#_80B475: INC.w $7E27E6
#_80B478: JSR ROUTINE_80BD2E
#_80B47B: LDY.w $1416
#_80B47E: LDA.b #$00
#_80B480: STA.w $7E2120,Y
#_80B483: LDY.w $7E2000
#_80B486: LDA.b #$07
#_80B488: STA.w $7E2120,Y
#_80B48B: LDX.b #$01
#_80B48D: LDA.b #$01
#_80B48F: JSR ROUTINE_80BD69
#_80B492: JSR ROUTINE_80B4B3
#_80B495: BCC CODE_80B498
#_80B497: RTS

CODE_80B498:
#_80B498: JSR ROUTINE_80BEAC
#_80B49B: JSR ROUTINE_80B574
#_80B49E: JSR ROUTINE_80BD2E
#_80B4A1: LDY.w $1416
#_80B4A4: LDA.b #$00
#_80B4A6: STA.w $7E2120,Y
#_80B4A9: LDY.w $7E2000
#_80B4AC: LDA.b #$07
#_80B4AE: STA.w $7E2120,Y

CODE_80B4B1:
#_80B4B1: CLC
#_80B4B2: RTS

;===================================================================================================

ROUTINE_80B4B3:
#_80B4B3: LDY.w $7E2000

CODE_80B4B6:
#_80B4B6: LDA.w $7E2110,Y
#_80B4B9: BEQ CODE_80B4D1
#_80B4BB: CMP.b #$FF
#_80B4BD: BEQ CODE_80B4D1
#_80B4BF: CMP.b #$01
#_80B4C1: BNE CODE_80B4CA
#_80B4C3: LDA.b #$01
#_80B4C5: STA.w $7E27F0
#_80B4C8: SEC
#_80B4C9: RTS

CODE_80B4CA:
#_80B4CA: TYA
#_80B4CB: SEC
#_80B4CC: SBC.b #$10
#_80B4CE: TAY
#_80B4CF: BRA CODE_80B4B6

CODE_80B4D1:
#_80B4D1: CLC
#_80B4D2: RTS

;===================================================================================================

ROUTINE_80B4D3:
#_80B4D3: LDX.b #$02
#_80B4D5: JSR ROUTINE_80BBED
#_80B4D8: BCC CODE_80B509
#_80B4DA: LDA.b #$10
#_80B4DC: JSR ROUTINE_80BB3E
#_80B4DF: BCC CODE_80B4E2
#_80B4E1: RTS

CODE_80B4E2:
#_80B4E2: LDX.w $7E2752
#_80B4E5: LDA.w $7E2000
#_80B4E8: STA.w $7E24F1,X
#_80B4EB: LDA.b #$22
#_80B4ED: STA.w $7E2501,X
#_80B4F0: INC.w $7E27E6
#_80B4F3: JSR ROUTINE_80C39C
#_80B4F6: LDX.b #$02
#_80B4F8: LDA.b #$02
#_80B4FA: LDY.w $7E2000
#_80B4FD: JSR ROUTINE_80C3CB
#_80B500: JSR ROUTINE_80C4C4
#_80B503: JSR ROUTINE_80C500
#_80B506: JSR ROUTINE_80B622

CODE_80B509:
#_80B509: CLC
#_80B50A: RTS

;===================================================================================================

ROUTINE_80B50B:
#_80B50B: LDX.b #$01
#_80B50D: JSR ROUTINE_80BBED
#_80B510: BCC CODE_80B541
#_80B512: LDA.b #$10
#_80B514: JSR ROUTINE_80BB3E
#_80B517: BCC CODE_80B51A
#_80B519: RTS

CODE_80B51A:
#_80B51A: LDX.w $7E2752
#_80B51D: LDA.w $7E2000
#_80B520: STA.w $7E24F1,X
#_80B523: LDA.b #$12
#_80B525: STA.w $7E2501,X
#_80B528: INC.w $7E27E6
#_80B52B: JSR ROUTINE_80C39C
#_80B52E: LDX.b #$01
#_80B530: LDA.b #$02
#_80B532: LDY.w $7E2000
#_80B535: JSR ROUTINE_80C3CB
#_80B538: JSR ROUTINE_80C4C4
#_80B53B: JSR ROUTINE_80C500
#_80B53E: JSR ROUTINE_80B622

CODE_80B541:
#_80B541: CLC
#_80B542: RTS

;===================================================================================================

ROUTINE_80B543:
#_80B543: LDA.b #$30
#_80B545: JSR ROUTINE_80BB3E
#_80B548: BCC CODE_80B54B
#_80B54A: RTS

CODE_80B54B:
#_80B54B: LDX.w $7E2752
#_80B54E: LDA.w $7E2000
#_80B551: STA.w $7E24F1,X
#_80B554: LDA.b #$03
#_80B556: STA.w $7E2501,X
#_80B559: INC.w $7E27E6
#_80B55C: JSR ROUTINE_80C39C
#_80B55F: LDX.b #$02
#_80B561: LDA.b #$03
#_80B563: LDY.w $7E2000
#_80B566: JSR ROUTINE_80C3CB
#_80B569: JSR ROUTINE_80C4C4
#_80B56C: JSR ROUTINE_80C500
#_80B56F: JSR ROUTINE_80B622
#_80B572: CLC
#_80B573: RTS

;===================================================================================================

ROUTINE_80B574:
#_80B574: PHY
#_80B575: LDY.w $7E2751
#_80B578: LDA.w $7E2331
#_80B57B: CLC
#_80B57C: ADC.w $7E2332
#_80B57F: ADC.w $7E2333
#_80B582: ADC.w $7E2334
#_80B585: ADC.w $7E2335
#_80B588: ADC.w $7E2336
#_80B58B: ADC.w $7E2337
#_80B58E: ADC.w $7E2338
#_80B591: STA.w $7E26C1,Y
#_80B594: LDA.w $7E2339
#_80B597: CLC
#_80B598: ADC.w $7E233A
#_80B59B: ADC.w $7E233B
#_80B59E: ADC.w $7E233C
#_80B5A1: ADC.w $7E233D
#_80B5A4: ADC.w $7E233E
#_80B5A7: ADC.w $7E233F
#_80B5AA: ADC.w $7E2340
#_80B5AD: STA.w $7E26C9,Y
#_80B5B0: LDA.w $7E2341
#_80B5B3: CLC
#_80B5B4: ADC.w $7E2342
#_80B5B7: ADC.w $7E2343
#_80B5BA: ADC.w $7E2344
#_80B5BD: ADC.w $7E2345
#_80B5C0: ADC.w $7E2346
#_80B5C3: ADC.w $7E2347
#_80B5C6: ADC.w $7E2348
#_80B5C9: STA.w $7E26D1,Y
#_80B5CC: LDA.w $7E2349
#_80B5CF: CLC
#_80B5D0: ADC.w $7E234A
#_80B5D3: ADC.w $7E234B
#_80B5D6: ADC.w $7E234C
#_80B5D9: ADC.w $7E234D
#_80B5DC: ADC.w $7E234E
#_80B5DF: ADC.w $7E234F
#_80B5E2: ADC.w $7E2350
#_80B5E5: STA.w $7E26D9,Y
#_80B5E8: LDA.w $7E2351
#_80B5EB: CLC
#_80B5EC: ADC.w $7E2352
#_80B5EF: ADC.w $7E2353
#_80B5F2: ADC.w $7E2354
#_80B5F5: ADC.w $7E2355
#_80B5F8: ADC.w $7E2356
#_80B5FB: ADC.w $7E2357
#_80B5FE: ADC.w $7E2358
#_80B601: STA.w $7E26E1,Y
#_80B604: LDA.w $7E2359
#_80B607: CLC
#_80B608: ADC.w $7E235A
#_80B60B: ADC.w $7E235B
#_80B60E: ADC.w $7E235C
#_80B611: ADC.w $7E235D
#_80B614: ADC.w $7E235E
#_80B617: ADC.w $7E235F
#_80B61A: ADC.w $7E2360
#_80B61D: STA.w $7E26E9,Y
#_80B620: PLY
#_80B621: RTS

;===================================================================================================

ROUTINE_80B622:
#_80B622: PHY
#_80B623: LDX.w $7E2751
#_80B626: LDY.w $7E2752
#_80B629: LDA.w $7E2331
#_80B62C: CLC
#_80B62D: ADC.w $7E2332
#_80B630: ADC.w $7E2333
#_80B633: ADC.w $7E2334
#_80B636: ADC.w $7E2335
#_80B639: ADC.w $7E2336
#_80B63C: ADC.w $7E2337
#_80B63F: ADC.w $7E2338
#_80B642: STA.w $7E26F1,Y
#_80B645: LDA.w $7E2339
#_80B648: CLC
#_80B649: ADC.w $7E233A
#_80B64C: ADC.w $7E233B
#_80B64F: ADC.w $7E233C
#_80B652: ADC.w $7E233D
#_80B655: ADC.w $7E233E
#_80B658: ADC.w $7E233F
#_80B65B: ADC.w $7E2340
#_80B65E: STA.w $7E2721,Y
#_80B661: LDA.w $7E26F1,Y
#_80B664: CMP.w $7E2691,X
#_80B667: BNE CODE_80B675
#_80B669: LDA.w $7E2721,Y
#_80B66C: CMP.w $7E2699,X
#_80B66F: BEQ CODE_80B69D
#_80B671: BCC CODE_80B677
#_80B673: BCS CODE_80B69D

CODE_80B675:
#_80B675: BCC CODE_80B69D

CODE_80B677:
#_80B677: LDA.w $7E26F1,Y
#_80B67A: STA.w $7E2691,X
#_80B67D: LDA.w $7E2721,Y
#_80B680: STA.w $7E2699,X
#_80B683: TXA
#_80B684: ASL A
#_80B685: ASL A
#_80B686: ASL A
#_80B687: ASL A
#_80B688: TAX
#_80B689: TYA
#_80B68A: ASL A
#_80B68B: ASL A
#_80B68C: ASL A
#_80B68D: ASL A
#_80B68E: TAY

CODE_80B68F:
#_80B68F: LDA.w $7E23F1,Y
#_80B692: STA.w $7E2511,X
#_80B695: CMP.b #$FF
#_80B697: BEQ CODE_80B69D
#_80B699: INX
#_80B69A: INY
#_80B69B: BRA CODE_80B68F

CODE_80B69D:
#_80B69D: LDX.w $7E2751
#_80B6A0: LDY.w $7E2752
#_80B6A3: LDA.w $7E2341
#_80B6A6: CLC
#_80B6A7: ADC.w $7E2342
#_80B6AA: ADC.w $7E2343
#_80B6AD: ADC.w $7E2344
#_80B6B0: ADC.w $7E2345
#_80B6B3: ADC.w $7E2346
#_80B6B6: ADC.w $7E2347
#_80B6B9: ADC.w $7E2348
#_80B6BC: STA.w $7E2701,Y
#_80B6BF: LDA.w $7E2349
#_80B6C2: CLC
#_80B6C3: ADC.w $7E234A
#_80B6C6: ADC.w $7E234B
#_80B6C9: ADC.w $7E234C
#_80B6CC: ADC.w $7E234D
#_80B6CF: ADC.w $7E234E
#_80B6D2: ADC.w $7E234F
#_80B6D5: ADC.w $7E2350
#_80B6D8: STA.w $7E2731,Y
#_80B6DB: LDA.w $7E2701,Y
#_80B6DE: CMP.w $7E26A1,X
#_80B6E1: BNE CODE_80B6EF
#_80B6E3: LDA.w $7E2731,Y
#_80B6E6: CMP.w $7E26A9,X
#_80B6E9: BEQ CODE_80B717
#_80B6EB: BCC CODE_80B6F1
#_80B6ED: BCS CODE_80B717

CODE_80B6EF:
#_80B6EF: BCC CODE_80B717

CODE_80B6F1:
#_80B6F1: LDA.w $7E2701,Y
#_80B6F4: STA.w $7E26A1,X
#_80B6F7: LDA.w $7E2731,Y
#_80B6FA: STA.w $7E26A9,X
#_80B6FD: TXA
#_80B6FE: ASL A
#_80B6FF: ASL A
#_80B700: ASL A
#_80B701: ASL A
#_80B702: TAX
#_80B703: TYA
#_80B704: ASL A
#_80B705: ASL A
#_80B706: ASL A
#_80B707: ASL A
#_80B708: TAY

CODE_80B709:
#_80B709: LDA.w $7E23F1,Y
#_80B70C: STA.w $7E2591,X
#_80B70F: CMP.b #$FF
#_80B711: BEQ CODE_80B717
#_80B713: INX
#_80B714: INY
#_80B715: BRA CODE_80B709

CODE_80B717:
#_80B717: LDX.w $7E2751
#_80B71A: LDY.w $7E2752
#_80B71D: LDA.w $7E2351
#_80B720: CLC
#_80B721: ADC.w $7E2352
#_80B724: ADC.w $7E2353
#_80B727: ADC.w $7E2354
#_80B72A: ADC.w $7E2355
#_80B72D: ADC.w $7E2356
#_80B730: ADC.w $7E2357
#_80B733: ADC.w $7E2358
#_80B736: STA.w $7E2711,Y
#_80B739: LDA.w $7E2359
#_80B73C: CLC
#_80B73D: ADC.w $7E235A
#_80B740: ADC.w $7E235B
#_80B743: ADC.w $7E235C
#_80B746: ADC.w $7E235D
#_80B749: ADC.w $7E235E
#_80B74C: ADC.w $7E235F
#_80B74F: ADC.w $7E2360
#_80B752: STA.w $7E2741,Y
#_80B755: LDA.w $7E2711,Y
#_80B758: CMP.w $7E26B1,X
#_80B75B: BNE CODE_80B769
#_80B75D: LDA.w $7E2741,Y
#_80B760: CMP.w $7E26B9,X
#_80B763: BEQ CODE_80B791
#_80B765: BCC CODE_80B76B
#_80B767: BCS CODE_80B791

CODE_80B769:
#_80B769: BCC CODE_80B791

CODE_80B76B:
#_80B76B: LDA.w $7E2711,Y
#_80B76E: STA.w $7E26B1,X
#_80B771: LDA.w $7E2741,Y
#_80B774: STA.w $7E26B9,X
#_80B777: TXA
#_80B778: ASL A
#_80B779: ASL A
#_80B77A: ASL A
#_80B77B: ASL A
#_80B77C: TAX
#_80B77D: TYA
#_80B77E: ASL A
#_80B77F: ASL A
#_80B780: ASL A
#_80B781: ASL A
#_80B782: TAY

CODE_80B783:
#_80B783: LDA.w $7E23F1,Y
#_80B786: STA.w $7E2611,X
#_80B789: CMP.b #$FF
#_80B78B: BEQ CODE_80B791
#_80B78D: INX
#_80B78E: INY
#_80B78F: BRA CODE_80B783

CODE_80B791:
#_80B791: PLY
#_80B792: RTS

;===================================================================================================

ROUTINE_80B793:
#_80B793: PHX
#_80B794: PHY
#_80B795: LDY.w $7E2000
#_80B798: LDA.w $7E2120,Y
#_80B79B: STA.w $7E211F,Y
#_80B79E: LDA.b #$00
#_80B7A0: STA.w $7E2120,Y
#_80B7A3: LDY.w $7E2000
#_80B7A6: TYA
#_80B7A7: SEC
#_80B7A8: SBC.b #$01
#_80B7AA: TAY
#_80B7AB: STY.w $7E2000
#_80B7AE: LDX.w $7E2320
#_80B7B1: LDA.b #$60
#_80B7B3: STA.w $7E2321,X
#_80B7B6: LDA.b #$FF
#_80B7B8: STA.w $7E2322,X
#_80B7BB: INC.w $7E2320
#_80B7BE: PLY
#_80B7BF: PLX
#_80B7C0: RTS

;===================================================================================================

ROUTINE_80B7C1:
#_80B7C1: PHX
#_80B7C2: PHY
#_80B7C3: LDY.w $7E2000
#_80B7C6: LDA.w $7E2120,Y
#_80B7C9: STA.w $7E2121,Y
#_80B7CC: LDA.b #$00
#_80B7CE: STA.w $7E2120,Y
#_80B7D1: LDY.w $7E2000
#_80B7D4: TYA
#_80B7D5: CLC
#_80B7D6: ADC.b #$01
#_80B7D8: TAY
#_80B7D9: STY.w $7E2000
#_80B7DC: LDX.w $7E2320
#_80B7DF: LDA.b #$70
#_80B7E1: STA.w $7E2321,X
#_80B7E4: LDA.b #$FF
#_80B7E6: STA.w $7E2322,X
#_80B7E9: INC.w $7E2320
#_80B7EC: PLY
#_80B7ED: PLX
#_80B7EE: RTS

;===================================================================================================

ROUTINE_80B7EF:
#_80B7EF: PHX
#_80B7F0: PHY
#_80B7F1: LDY.w $7E2000
#_80B7F4: LDA.w $7E2120,Y
#_80B7F7: STA.w $7E2110,Y
#_80B7FA: LDA.b #$00
#_80B7FC: STA.w $7E2120,Y
#_80B7FF: LDY.w $7E2000
#_80B802: TYA
#_80B803: SEC
#_80B804: SBC.b #$10
#_80B806: TAY
#_80B807: STY.w $7E2000
#_80B80A: LDX.w $7E2320
#_80B80D: LDA.b #$40
#_80B80F: STA.w $7E2321,X
#_80B812: LDA.b #$FF
#_80B814: STA.w $7E2322,X
#_80B817: INC.w $7E2320
#_80B81A: PLY
#_80B81B: PLX
#_80B81C: RTS

;===================================================================================================

ROUTINE_80B81D:
#_80B81D: PHX
#_80B81E: PHY
#_80B81F: LDY.w $7E2000
#_80B822: LDA.w $7E2120,Y
#_80B825: STA.w $7E2110,Y
#_80B828: LDA.b #$00
#_80B82A: STA.w $7E2120,Y
#_80B82D: LDY.w $7E2000
#_80B830: TYA
#_80B831: SEC
#_80B832: SBC.b #$10
#_80B834: TAY
#_80B835: STY.w $7E2000
#_80B838: LDX.w $7E2320
#_80B83B: LDA.b #$50
#_80B83D: STA.w $7E2321,X
#_80B840: LDA.b #$FF
#_80B842: STA.w $7E2322,X
#_80B845: INC.w $7E2320
#_80B848: PLY
#_80B849: PLX
#_80B84A: RTS

;===================================================================================================

ROUTINE_80B84B:
#_80B84B: PHX
#_80B84C: LDX.w $7E2320
#_80B84F: LDA.b #$00
#_80B851: STA.w $7E2321,X
#_80B854: LDA.b #$80
#_80B856: STA.w $7E2322,X
#_80B859: LDA.b #$FF
#_80B85B: STA.w $7E2323,X
#_80B85E: INC.w $7E2320
#_80B861: INC.w $7E2320
#_80B864: PLX
#_80B865: RTS

;===================================================================================================

ROUTINE_80B866:
#_80B866: PHX
#_80B867: LDX.w $7E2320
#_80B86A: LDA.b #$00
#_80B86C: STA.w $7E2321,X
#_80B86F: LDA.b #$90
#_80B871: STA.w $7E2322,X
#_80B874: LDA.b #$FF
#_80B876: STA.w $7E2323,X
#_80B879: INC.w $7E2320
#_80B87C: INC.w $7E2320
#_80B87F: PLX
#_80B880: RTS

CODE_80B881:
#_80B881: PHX
#_80B882: LDX.w $7E2320
#_80B885: LDA.b #$02
#_80B887: STA.w $7E2321,X
#_80B88A: LDA.b #$FF
#_80B88C: STA.w $7E2322,X
#_80B88F: INC.w $7E2320
#_80B892: PLX
#_80B893: RTS

;===================================================================================================

ROUTINE_80B894:
#_80B894: PHX
#_80B895: PHY
#_80B896: LDY.w $7E2000
#_80B899: LDA.w $7E2120,Y
#_80B89C: STA.w $7E211F,Y
#_80B89F: LDA.b #$00
#_80B8A1: STA.w $7E2120,Y
#_80B8A4: DEC.w $7E2000
#_80B8A7: LDY.w $7E2000

CODE_80B8AA:
#_80B8AA: LDA.w $7E2130,Y
#_80B8AD: BNE CODE_80B8C8
#_80B8AF: LDA.w $7E2000
#_80B8B2: CLC
#_80B8B3: ADC.b #$10
#_80B8B5: STA.w $7E2000
#_80B8B8: LDY.w $7E2000
#_80B8BB: LDA.w $7E2110,Y
#_80B8BE: STA.w $7E2120,Y
#_80B8C1: LDA.b #$00
#_80B8C3: STA.w $7E2110,Y
#_80B8C6: BRA CODE_80B8AA

CODE_80B8C8:
#_80B8C8: PLY
#_80B8C9: PLX
#_80B8CA: BRA CODE_80B881

;===================================================================================================

ROUTINE_80B8CC:
#_80B8CC: PHX
#_80B8CD: PHY
#_80B8CE: LDY.w $7E2000

CODE_80B8D1:
#_80B8D1: LDA.w $7E2120,Y
#_80B8D4: BEQ CODE_80B8ED
#_80B8D6: LDA.w $7E211F,Y
#_80B8D9: BNE CODE_80B8ED
#_80B8DB: LDA.w $7E2120,Y
#_80B8DE: STA.w $7E211F,Y
#_80B8E1: LDA.b #$00
#_80B8E3: STA.w $7E2120,Y
#_80B8E6: TYA
#_80B8E7: SEC
#_80B8E8: SBC.b #$10
#_80B8EA: TAY
#_80B8EB: BRA CODE_80B8D1

CODE_80B8ED:
#_80B8ED: DEC.w $7E2000
#_80B8F0: LDY.w $7E2000

CODE_80B8F3:
#_80B8F3: LDA.w $7E2130,Y
#_80B8F6: BNE CODE_80B921
#_80B8F8: LDA.w $7E2000
#_80B8FB: CLC
#_80B8FC: ADC.b #$10
#_80B8FE: STA.w $7E2000
#_80B901: LDY.w $7E2000

CODE_80B904:
#_80B904: LDA.w $7E2110,Y
#_80B907: BEQ CODE_80B91C
#_80B909: CMP.b #$FF
#_80B90B: BEQ CODE_80B91C
#_80B90D: STA.w $7E2120,Y
#_80B910: LDA.b #$00
#_80B912: STA.w $7E2110,Y
#_80B915: TYA
#_80B916: SEC
#_80B917: SBC.b #$10
#_80B919: TAY
#_80B91A: BRA CODE_80B904

CODE_80B91C:
#_80B91C: LDY.w $7E2000
#_80B91F: BRA CODE_80B8F3

CODE_80B921:
#_80B921: PLY
#_80B922: PLX
#_80B923: JMP.w CODE_80B881

CODE_80B926:
#_80B926: PHX
#_80B927: LDX.w $7E2320
#_80B92A: LDA.b #$01
#_80B92C: STA.w $7E2321,X
#_80B92F: LDA.b #$FF
#_80B931: STA.w $7E2322,X
#_80B934: INC.w $7E2320
#_80B937: PLX
#_80B938: RTS

;===================================================================================================

ROUTINE_80B939:
#_80B939: PHX
#_80B93A: PHY
#_80B93B: LDY.w $7E2000
#_80B93E: LDA.w $7E2120,Y
#_80B941: STA.w $7E2121,Y
#_80B944: LDA.b #$00
#_80B946: STA.w $7E2120,Y
#_80B949: INC.w $7E2000
#_80B94C: LDY.w $7E2000

CODE_80B94F:
#_80B94F: LDA.w $7E2130,Y
#_80B952: BNE CODE_80B96D
#_80B954: LDA.w $7E2000
#_80B957: CLC
#_80B958: ADC.b #$10
#_80B95A: STA.w $7E2000
#_80B95D: LDY.w $7E2000
#_80B960: LDA.w $7E2110,Y
#_80B963: STA.w $7E2120,Y
#_80B966: LDA.b #$00
#_80B968: STA.w $7E2110,Y
#_80B96B: BRA CODE_80B94F

CODE_80B96D:
#_80B96D: PLY
#_80B96E: PLX
#_80B96F: BRA CODE_80B926

;===================================================================================================

ROUTINE_80B971:
#_80B971: PHX
#_80B972: PHY
#_80B973: LDY.w $7E2000

CODE_80B976:
#_80B976: LDA.w $7E2120,Y
#_80B979: BEQ CODE_80B992
#_80B97B: LDA.w $7E2121,Y
#_80B97E: BNE CODE_80B992
#_80B980: LDA.w $7E2120,Y
#_80B983: STA.w $7E2121,Y
#_80B986: LDA.b #$00
#_80B988: STA.w $7E2120,Y
#_80B98B: TYA
#_80B98C: SEC
#_80B98D: SBC.b #$10
#_80B98F: TAY
#_80B990: BRA CODE_80B976

CODE_80B992:
#_80B992: INC.w $7E2000
#_80B995: LDY.w $7E2000

CODE_80B998:
#_80B998: LDA.w $7E2130,Y
#_80B99B: BNE CODE_80B9C6
#_80B99D: LDA.w $7E2000
#_80B9A0: CLC
#_80B9A1: ADC.b #$10
#_80B9A3: STA.w $7E2000
#_80B9A6: LDY.w $7E2000

CODE_80B9A9:
#_80B9A9: LDA.w $7E2110,Y
#_80B9AC: BEQ CODE_80B9C1
#_80B9AE: CMP.b #$FF
#_80B9B0: BEQ CODE_80B9C1
#_80B9B2: STA.w $7E2120,Y
#_80B9B5: LDA.b #$00
#_80B9B7: STA.w $7E2110,Y
#_80B9BA: TYA
#_80B9BB: SEC
#_80B9BC: SBC.b #$10
#_80B9BE: TAY
#_80B9BF: BRA CODE_80B9A9

CODE_80B9C1:
#_80B9C1: LDY.w $7E2000
#_80B9C4: BRA CODE_80B998

CODE_80B9C6:
#_80B9C6: PLY
#_80B9C7: PLX
#_80B9C8: JMP.w CODE_80B926

;===================================================================================================

ROUTINE_80B9CB:
#_80B9CB: CMP.b #$01
#_80B9CD: BEQ CODE_80B9E7
#_80B9CF: LDA.w $7E27DE
#_80B9D2: CMP.b #$01
#_80B9D4: BNE CODE_80B9FF
#_80B9D6: LDA.b #$02
#_80B9D8: STA.w $7E2321
#_80B9DB: LDA.b #$FF
#_80B9DD: STA.w $7E2322
#_80B9E0: LDA.b #$01
#_80B9E2: STA.w $7E2320
#_80B9E5: BRA CODE_80BA09

CODE_80B9E7:
#_80B9E7: LDA.w $7E27DE
#_80B9EA: CMP.b #$02
#_80B9EC: BNE CODE_80B9FF
#_80B9EE: LDA.b #$01
#_80B9F0: STA.w $7E2321
#_80B9F3: LDA.b #$FF
#_80B9F5: STA.w $7E2322
#_80B9F8: LDA.b #$01
#_80B9FA: STA.w $7E2320
#_80B9FD: BRA CODE_80BA09

CODE_80B9FF:
#_80B9FF: LDA.b #$00
#_80BA01: STA.w $7E2320
#_80BA04: LDA.b #$FF
#_80BA06: STA.w $7E2321

CODE_80BA09:
#_80BA09: JSR ROUTINE_80BD2E
#_80BA0C: LDA.w $1416
#_80BA0F: STA.w $7E2000
#_80BA12: LDA.b #$01
#_80BA14: STA.w $7E27EF
#_80BA17: RTS

;===================================================================================================

ROUTINE_80BA18:
#_80BA18: PHA
#_80BA19: LDX.w $7E2751
#_80BA1C: LDA.w $7E23E9,X
#_80BA1F: LSR A
#_80BA20: LSR A
#_80BA21: LSR A
#_80BA22: LSR A
#_80BA23: AND.b #$0F
#_80BA25: STA.w $7E27DE
#_80BA28: PLA
#_80BA29: JSR ROUTINE_80BA81
#_80BA2C: LDX.w $7E2751
#_80BA2F: LDA.w $7E23E1,X
#_80BA32: STA.w $7E2000
#_80BA35: LDY.w $1416
#_80BA38: LDA.b #$00
#_80BA3A: STA.w $7E2120,Y
#_80BA3D: LDY.w $7E2000
#_80BA40: LDA.b #$07
#_80BA42: STA.w $7E2120,Y
#_80BA45: LDA.w $7E23E9,X
#_80BA48: PHA
#_80BA49: LSR A
#_80BA4A: LSR A
#_80BA4B: LSR A
#_80BA4C: LSR A
#_80BA4D: AND.b #$0F
#_80BA4F: TAX
#_80BA50: PLA
#_80BA51: AND.b #$0F
#_80BA53: LDY.w $7E2000
#_80BA56: JSR ROUTINE_80BD69
#_80BA59: LDY.w $7E2000

CODE_80BA5C:
#_80BA5C: LDA.w $7E2130,Y
#_80BA5F: BNE CODE_80BA7A
#_80BA61: LDA.w $7E2000
#_80BA64: CLC
#_80BA65: ADC.b #$10
#_80BA67: STA.w $7E2000
#_80BA6A: LDY.w $7E2000
#_80BA6D: LDA.w $7E2110,Y
#_80BA70: STA.w $7E2120,Y
#_80BA73: LDA.b #$00
#_80BA75: STA.w $7E2110,Y
#_80BA78: BRA CODE_80BA5C

CODE_80BA7A:
#_80BA7A: JSR ROUTINE_80BC79
#_80BA7D: JSR ROUTINE_80BE70
#_80BA80: RTS

;===================================================================================================

ROUTINE_80BA81:
#_80BA81: CMP.b #$01
#_80BA83: BEQ CODE_80BA9D
#_80BA85: LDA.w $7E27DE
#_80BA88: CMP.b #$01
#_80BA8A: BNE CODE_80BAB5
#_80BA8C: LDA.b #$02
#_80BA8E: STA.w $7E2321
#_80BA91: LDA.b #$FF
#_80BA93: STA.w $7E2322
#_80BA96: LDA.b #$01
#_80BA98: STA.w $7E2320
#_80BA9B: BRA CODE_80BAD5

CODE_80BA9D:
#_80BA9D: LDA.w $7E27DE
#_80BAA0: CMP.b #$02
#_80BAA2: BNE CODE_80BAB5
#_80BAA4: LDA.b #$01
#_80BAA6: STA.w $7E2321
#_80BAA9: LDA.b #$FF
#_80BAAB: STA.w $7E2322
#_80BAAE: LDA.b #$01
#_80BAB0: STA.w $7E2320
#_80BAB3: BRA CODE_80BAD5

CODE_80BAB5:
#_80BAB5: LDA.w $7E27ED
#_80BAB8: BEQ CODE_80BACB
#_80BABA: LDA.b #$00
#_80BABC: STA.w $7E2321
#_80BABF: LDA.b #$FF
#_80BAC1: STA.w $7E2322
#_80BAC4: LDA.b #$01
#_80BAC6: STA.w $7E2320
#_80BAC9: BRA CODE_80BAD5

CODE_80BACB:
#_80BACB: LDA.b #$00
#_80BACD: STA.w $7E2320
#_80BAD0: LDA.b #$FF
#_80BAD2: STA.w $7E2321

CODE_80BAD5:
#_80BAD5: JSR ROUTINE_80BD2E
#_80BAD8: LDA.w $1416
#_80BADB: STA.w $7E2000
#_80BADE: LDA.b #$01
#_80BAE0: STA.w $7E27EF
#_80BAE3: RTS

;===================================================================================================

ROUTINE_80BAE4:
#_80BAE4: DEC.w $7E2751
#_80BAE7: BMI CODE_80BB2D
#_80BAE9: STA.w $7E2001
#_80BAEC: PHX
#_80BAED: PHY
#_80BAEE: LDA.w $7E2751
#_80BAF1: ASL A
#_80BAF2: ASL A
#_80BAF3: ASL A
#_80BAF4: ASL A
#_80BAF5: TAY
#_80BAF6: LDX.b #$00

.next:
#_80BAF8: LDA.w $7E2321,X
#_80BAFB: CMP.b #$FF
#_80BAFD: BEQ CODE_80BB06
#_80BAFF: STA.w $7E2361,Y
#_80BB02: INX
#_80BB03: INY
#_80BB04: BRA .next

CODE_80BB06:
#_80BB06: LDA.w $7E27E7
#_80BB09: CMP.b #$04
#_80BB0B: BEQ CODE_80BB2F
#_80BB0D: CMP.b #$09
#_80BB0F: BEQ CODE_80BB2F
#_80BB11: CMP.b #$0E
#_80BB13: BEQ CODE_80BB2F
#_80BB15: CMP.b #$13
#_80BB17: BEQ CODE_80BB2F
#_80BB19: LDA.b #$00
#_80BB1B: STA.w $7E2361,Y
#_80BB1E: LDA.w $7E2001
#_80BB21: STA.w $7E2362,Y
#_80BB24: LDA.b #$FF
#_80BB26: STA.w $7E2363,Y
#_80BB29: PLY
#_80BB2A: PLX
#_80BB2B: CLC
#_80BB2C: RTS

CODE_80BB2D:
#_80BB2D: SEC
#_80BB2E: RTS

CODE_80BB2F:
#_80BB2F: LDA.w $7E2001
#_80BB32: STA.w $7E2361,Y
#_80BB35: LDA.b #$FF
#_80BB37: STA.w $7E2362,Y
#_80BB3A: PLY
#_80BB3B: PLX
#_80BB3C: CLC
#_80BB3D: RTS

;===================================================================================================

ROUTINE_80BB3E:
#_80BB3E: DEC.w $7E2752
#_80BB41: BMI CODE_80BB6F
#_80BB43: STA.w $7E2001
#_80BB46: PHX
#_80BB47: PHY
#_80BB48: LDA.w $7E2752
#_80BB4B: ASL A
#_80BB4C: ASL A
#_80BB4D: ASL A
#_80BB4E: ASL A
#_80BB4F: TAY
#_80BB50: LDX.b #$00

.next:
#_80BB52: LDA.w $7E2321,X
#_80BB55: CMP.b #$FF
#_80BB57: BEQ CODE_80BB60
#_80BB59: STA.w $7E23F1,Y
#_80BB5C: INX
#_80BB5D: INY
#_80BB5E: BRA .next

CODE_80BB60:
#_80BB60: LDA.w $7E2001
#_80BB63: STA.w $7E23F1,Y
#_80BB66: LDA.b #$FF
#_80BB68: STA.w $7E23F2,Y
#_80BB6B: PLY
#_80BB6C: PLX
#_80BB6D: CLC
#_80BB6E: RTS

CODE_80BB6F:
#_80BB6F: SEC
#_80BB70: RTS

;===================================================================================================

ROUTINE_80BB71:
#_80BB71: LDY.w $7E2000
#_80BB74: CPX.b #$01
#_80BB76: BNE CODE_80BB9A
#_80BB78: LDA.w $7E2121,Y
#_80BB7B: BNE CODE_80BB84
#_80BB7D: LDA.w $0810,Y
#_80BB80: BEQ CODE_80BBBE
#_80BB82: BNE CODE_80BBBC

CODE_80BB84:
#_80BB84: LDA.w $7E2121,Y
#_80BB87: BEQ CODE_80BBBE
#_80BB89: CMP.b #$FF
#_80BB8B: BEQ CODE_80BBBC
#_80BB8D: LDA.w $0810,Y
#_80BB90: BNE CODE_80BBBC
#_80BB92: INX
#_80BB93: TYA
#_80BB94: SEC
#_80BB95: SBC.b #$10
#_80BB97: TAY
#_80BB98: BRA CODE_80BB84

CODE_80BB9A:
#_80BB9A: LDA.w $7E211F,Y
#_80BB9D: BNE CODE_80BBA6
#_80BB9F: LDA.w $0810,Y
#_80BBA2: BEQ CODE_80BBBE
#_80BBA4: BNE CODE_80BBBC

CODE_80BBA6:
#_80BBA6: LDA.w $7E211F,Y
#_80BBA9: BEQ CODE_80BBBE
#_80BBAB: CMP.b #$FF
#_80BBAD: BEQ CODE_80BBBC
#_80BBAF: LDA.w $0810,Y
#_80BBB2: BNE CODE_80BBBC
#_80BBB4: INX
#_80BBB5: TYA
#_80BBB6: SEC
#_80BBB7: SBC.b #$10
#_80BBB9: TAY
#_80BBBA: BRA CODE_80BBA6

CODE_80BBBC:
#_80BBBC: CLC
#_80BBBD: RTS

CODE_80BBBE:
#_80BBBE: SEC
#_80BBBF: RTS

;===================================================================================================

ROUTINE_80BBC0:
#_80BBC0: LDY.w $7E2000
#_80BBC3: CPX.b #$01
#_80BBC5: BNE CODE_80BBD7
#_80BBC7: LDA.w $7E2121,Y
#_80BBCA: BEQ CODE_80BBD0
#_80BBCC: CMP.b #$FF
#_80BBCE: BEQ CODE_80BBE7

CODE_80BBD0:
#_80BBD0: LDA.w $0810,Y
#_80BBD3: BNE CODE_80BBE7
#_80BBD5: BEQ CODE_80BBE9

CODE_80BBD7:
#_80BBD7: LDA.w $7E211F,Y
#_80BBDA: BEQ CODE_80BBE0
#_80BBDC: CMP.b #$FF
#_80BBDE: BEQ CODE_80BBE7

CODE_80BBE0:
#_80BBE0: LDA.w $0810,Y
#_80BBE3: BNE CODE_80BBE7
#_80BBE5: BEQ CODE_80BBE9

CODE_80BBE7:
#_80BBE7: CLC
#_80BBE8: RTS

CODE_80BBE9:
#_80BBE9: SEC
#_80BBEA: RTS

;===================================================================================================

ROUTINE_80BBEB:
#_80BBEB: BRA ROUTINE_80BBC0

;===================================================================================================

ROUTINE_80BBED:
#_80BBED: CPX.b #$01
#_80BBEF: BNE CODE_80BC35
#_80BBF1: TYA
#_80BBF2: TAX
#_80BBF3: LDA.w $7E2110,Y
#_80BBF6: BEQ CODE_80BC33
#_80BBF8: CMP.b #$FF
#_80BBFA: BEQ CODE_80BC31
#_80BBFC: LDA.w $7E2121,Y
#_80BBFF: BEQ CODE_80BC17
#_80BC01: LDA.w $7E2111,Y
#_80BC04: BNE CODE_80BC0D
#_80BC06: TXA
#_80BC07: SEC
#_80BC08: SBC.b #$10
#_80BC0A: TAX
#_80BC0B: BRA CODE_80BC17

CODE_80BC0D:
#_80BC0D: LDA.w $7E2101,Y
#_80BC10: BNE CODE_80BC31
#_80BC12: TXA
#_80BC13: SEC
#_80BC14: SBC.b #$20
#_80BC16: TAX

CODE_80BC17:
#_80BC17: LDA.w $7E2110,Y
#_80BC1A: BEQ CODE_80BC33
#_80BC1C: CMP.b #$FF
#_80BC1E: BEQ CODE_80BC33
#_80BC20: LDA.w $7E2121,X
#_80BC23: BNE CODE_80BC31
#_80BC25: TYA
#_80BC26: SEC
#_80BC27: SBC.b #$10
#_80BC29: TAY
#_80BC2A: TXA
#_80BC2B: SEC
#_80BC2C: SBC.b #$10
#_80BC2E: TAX
#_80BC2F: BRA CODE_80BC17

CODE_80BC31:
#_80BC31: CLC
#_80BC32: RTS

CODE_80BC33:
#_80BC33: SEC
#_80BC34: RTS

CODE_80BC35:
#_80BC35: TYA
#_80BC36: TAX
#_80BC37: LDA.w $7E2110,Y
#_80BC3A: BEQ CODE_80BC77
#_80BC3C: CMP.b #$FF
#_80BC3E: BEQ CODE_80BC75
#_80BC40: LDA.w $7E211F,Y
#_80BC43: BEQ CODE_80BC5B
#_80BC45: LDA.w $7E210F,Y
#_80BC48: BNE CODE_80BC51
#_80BC4A: TXA
#_80BC4B: SEC
#_80BC4C: SBC.b #$10
#_80BC4E: TAX
#_80BC4F: BRA CODE_80BC5B

CODE_80BC51:
#_80BC51: LDA.w $7E20FF,Y
#_80BC54: BNE CODE_80BC75
#_80BC56: TXA
#_80BC57: SEC
#_80BC58: SBC.b #$20
#_80BC5A: TAX

CODE_80BC5B:
#_80BC5B: LDA.w $7E2110,Y
#_80BC5E: BEQ CODE_80BC77
#_80BC60: CMP.b #$FF
#_80BC62: BEQ CODE_80BC77
#_80BC64: LDA.w $7E211F,X
#_80BC67: BNE CODE_80BC75
#_80BC69: TYA
#_80BC6A: SEC
#_80BC6B: SBC.b #$10
#_80BC6D: TAY
#_80BC6E: TXA
#_80BC6F: SEC
#_80BC70: SBC.b #$10
#_80BC72: TAX
#_80BC73: BRA CODE_80BC5B

CODE_80BC75:
#_80BC75: CLC
#_80BC76: RTS

CODE_80BC77:
#_80BC77: SEC
#_80BC78: RTS

;===================================================================================================

ROUTINE_80BC79:
#_80BC79: LDY.b #$0F

CODE_80BC7B:
#_80BC7B: PHY
#_80BC7C: LDA.w $0AE2,Y
#_80BC7F: CMP.b #$81
#_80BC81: BEQ CODE_80BC88

CODE_80BC83:
#_80BC83: PLY
#_80BC84: DEY
#_80BC85: BPL CODE_80BC7B
#_80BC87: RTS

CODE_80BC88:
#_80BC88: LDA.w $7E0AF2,Y
#_80BC8B: TAX
#_80BC8C: LDA.l UNREACH_80CCCD,X
#_80BC90: ORA.w $7E0B02,Y
#_80BC93: TAX
#_80BC94: LDA.b #$00
#_80BC96: STA.w $7E2120,X
#_80BC99: BEQ CODE_80BC83

ROUTINE_80BC9B:
#_80BC9B: LDA.b #$00
#_80BC9D: STA.w $7E2331
#_80BCA0: STA.w $7E2332
#_80BCA3: STA.w $7E2333
#_80BCA6: STA.w $7E2334
#_80BCA9: STA.w $7E2335
#_80BCAC: STA.w $7E2336
#_80BCAF: STA.w $7E2337
#_80BCB2: STA.w $7E2338
#_80BCB5: STA.w $7E2339
#_80BCB8: STA.w $7E233A
#_80BCBB: STA.w $7E233B
#_80BCBE: STA.w $7E233C
#_80BCC1: STA.w $7E233D
#_80BCC4: STA.w $7E233E
#_80BCC7: STA.w $7E233F
#_80BCCA: STA.w $7E2340
#_80BCCD: STA.w $7E2341
#_80BCD0: STA.w $7E2342
#_80BCD3: STA.w $7E2343
#_80BCD6: STA.w $7E2344
#_80BCD9: STA.w $7E2345
#_80BCDC: STA.w $7E2346
#_80BCDF: STA.w $7E2347
#_80BCE2: STA.w $7E2348
#_80BCE5: STA.w $7E2349
#_80BCE8: STA.w $7E234A
#_80BCEB: STA.w $7E234B
#_80BCEE: STA.w $7E234C
#_80BCF1: STA.w $7E234D
#_80BCF4: STA.w $7E234E
#_80BCF7: STA.w $7E234F
#_80BCFA: STA.w $7E2350
#_80BCFD: STA.w $7E2351
#_80BD00: STA.w $7E2352
#_80BD03: STA.w $7E2353
#_80BD06: STA.w $7E2354
#_80BD09: STA.w $7E2355
#_80BD0C: STA.w $7E2356
#_80BD0F: STA.w $7E2357
#_80BD12: STA.w $7E2358
#_80BD15: STA.w $7E2359
#_80BD18: STA.w $7E235A
#_80BD1B: STA.w $7E235B
#_80BD1E: STA.w $7E235C
#_80BD21: STA.w $7E235D
#_80BD24: STA.w $7E235E
#_80BD27: STA.w $7E235F
#_80BD2A: STA.w $7E2360
#_80BD2D: RTS

;===================================================================================================

ROUTINE_80BD2E:
#_80BD2E: PHX
#_80BD2F: PHY
#_80BD30: LDA.b #$00
#_80BD32: TAY
#_80BD33: TAX

.next:
#_80BD34: LDA.l DATA8_80BD51,X
#_80BD38: CMP.b #$FF
#_80BD3A: BEQ CODE_80BD4E
#_80BD3C: PHX
#_80BD3D: TAX
#_80BD3E: LDY.b #$06

CODE_80BD40:
#_80BD40: LDA.w $7E0820,X
#_80BD43: STA.w $7E2120,X
#_80BD46: INX
#_80BD47: DEY
#_80BD48: BNE CODE_80BD40
#_80BD4A: PLX
#_80BD4B: INX
#_80BD4C: BRA .next

CODE_80BD4E:
#_80BD4E: PLY
#_80BD4F: PLX
#_80BD50: RTS

DATA8_80BD51:
#_80BD51: db $29,$39,$49,$59,$69,$79,$89,$99
#_80BD59: db $A9,$B9,$C9,$FF

;===================================================================================================

ROUTINE_80BD5D:
#_80BD5D: LDX.b #$F0

CODE_80BD5F:
#_80BD5F: LDA.w $7E081F,X
#_80BD62: STA.w $7E211F,X
#_80BD65: DEX
#_80BD66: BNE CODE_80BD5F
#_80BD68: RTS

;===================================================================================================

ROUTINE_80BD69:
#_80BD69: CMP.b #$00
#_80BD6B: BNE CODE_80BDCC
#_80BD6D: CPX.b #$01
#_80BD6F: BNE CODE_80BD9E
#_80BD71: LDA.w $7E2121,Y
#_80BD74: BNE CODE_80BD83
#_80BD76: LDA.w $0831,Y
#_80BD79: STA.w $7E2110,Y
#_80BD7C: LDA.b #$00
#_80BD7E: STA.w $7E2131,Y
#_80BD81: BRA CODE_80BDCB

CODE_80BD83:
#_80BD83: LDA.w $7E2121,Y
#_80BD86: BEQ CODE_80BDCB
#_80BD88: CMP.b #$FF
#_80BD8A: BEQ CODE_80BDCB
#_80BD8C: LDA.w $7E2121,Y
#_80BD8F: STA.w $7E2110,Y
#_80BD92: LDA.b #$00
#_80BD94: STA.w $7E2121,Y
#_80BD97: TYA
#_80BD98: SEC
#_80BD99: SBC.b #$10
#_80BD9B: TAY
#_80BD9C: BRA CODE_80BD83

CODE_80BD9E:
#_80BD9E: LDA.w $7E211F,Y
#_80BDA1: BNE CODE_80BDB0
#_80BDA3: LDA.w $082F,Y
#_80BDA6: STA.w $7E2110,Y
#_80BDA9: LDA.b #$00
#_80BDAB: STA.w $7E212F,Y
#_80BDAE: BRA CODE_80BDCB

CODE_80BDB0:
#_80BDB0: LDA.w $7E211F,Y
#_80BDB3: BEQ CODE_80BDCB
#_80BDB5: CMP.b #$FF
#_80BDB7: BEQ CODE_80BDCB
#_80BDB9: LDA.w $7E211F,Y
#_80BDBC: STA.w $7E2110,Y
#_80BDBF: LDA.b #$00
#_80BDC1: STA.w $7E211F,Y
#_80BDC4: TYA
#_80BDC5: SEC
#_80BDC6: SBC.b #$10
#_80BDC8: TAY
#_80BDC9: BRA CODE_80BDB0

CODE_80BDCB:
#_80BDCB: RTS

CODE_80BDCC:
#_80BDCC: CMP.b #$01
#_80BDCE: BNE CODE_80BE08
#_80BDD0: CPX.b #$01
#_80BDD2: BNE CODE_80BDEE
#_80BDD4: LDA.w $7E2121,Y
#_80BDD7: BNE CODE_80BDE5
#_80BDD9: LDA.w $0831,Y
#_80BDDC: STA.w $7E2110,Y
#_80BDDF: LDA.b #$00
#_80BDE1: STA.w $7E2131,Y
#_80BDE4: RTS

CODE_80BDE5:
#_80BDE5: STA.w $7E2110,Y
#_80BDE8: LDA.b #$00
#_80BDEA: STA.w $7E2121,Y
#_80BDED: RTS

CODE_80BDEE:
#_80BDEE: LDA.w $7E211F,Y
#_80BDF1: BNE CODE_80BDFF
#_80BDF3: LDA.w $082F,Y
#_80BDF6: STA.w $7E2110,Y
#_80BDF9: LDA.b #$00
#_80BDFB: STA.w $7E212F,Y
#_80BDFE: RTS

CODE_80BDFF:
#_80BDFF: STA.w $7E2110,Y
#_80BE02: LDA.b #$00
#_80BE04: STA.w $7E211F,Y
#_80BE07: RTS

CODE_80BE08:
#_80BE08: CMP.b #$02
#_80BE0A: BNE CODE_80BE66
#_80BE0C: CPX.b #$01
#_80BE0E: BNE CODE_80BE3B
#_80BE10: TYA
#_80BE11: TAX

CODE_80BE12:
#_80BE12: LDA.w $0810,Y
#_80BE15: BEQ CODE_80BE23
#_80BE17: LDA.w $0821,X
#_80BE1A: BEQ CODE_80BE24
#_80BE1C: TXA
#_80BE1D: SEC
#_80BE1E: SBC.b #$10
#_80BE20: TAX
#_80BE21: BRA CODE_80BE12

CODE_80BE23:
#_80BE23: RTS

CODE_80BE24:
#_80BE24: LDA.w $0810,Y
#_80BE27: STA.w $7E2121,X
#_80BE2A: LDA.b #$00
#_80BE2C: STA.w $7E2110,Y
#_80BE2F: TXA
#_80BE30: SEC
#_80BE31: SBC.b #$10
#_80BE33: TAX
#_80BE34: TYA
#_80BE35: SEC
#_80BE36: SBC.b #$10
#_80BE38: TAY
#_80BE39: BRA CODE_80BE12

CODE_80BE3B:
#_80BE3B: TYA
#_80BE3C: TAX

CODE_80BE3D:
#_80BE3D: LDA.w $0810,Y
#_80BE40: BEQ CODE_80BE65
#_80BE42: LDA.w $081F,X
#_80BE45: BEQ CODE_80BE4E
#_80BE47: TXA
#_80BE48: SEC
#_80BE49: SBC.b #$10
#_80BE4B: TAX
#_80BE4C: BRA CODE_80BE3D

CODE_80BE4E:
#_80BE4E: LDA.w $0810,Y
#_80BE51: STA.w $7E211F,X
#_80BE54: LDA.b #$00
#_80BE56: STA.w $7E2110,Y
#_80BE59: TXA
#_80BE5A: SEC
#_80BE5B: SBC.b #$10
#_80BE5D: TAX
#_80BE5E: TYA
#_80BE5F: SEC
#_80BE60: SBC.b #$10
#_80BE62: TAY
#_80BE63: BRA CODE_80BE3D

CODE_80BE65:
#_80BE65: RTS

CODE_80BE66:
#_80BE66: CMP.b #$03
#_80BE68: BNE CODE_80BE6F
#_80BE6A: LDA.b #$00
#_80BE6C: STA.w $7E2120,Y

CODE_80BE6F:
#_80BE6F: RTS

;===================================================================================================

ROUTINE_80BE70:
#_80BE70: LDY.b #$C9
#_80BE72: STY.w $7E2001

CODE_80BE75:
#_80BE75: LDX.b #$00
#_80BE77: LDY.w $7E2001

CODE_80BE7A:
#_80BE7A: LDA.w $7E2120,Y
#_80BE7D: BEQ CODE_80BE94
#_80BE7F: CMP.b #$FF
#_80BE81: BEQ CODE_80BE9B
#_80BE83: LDA.w $7E2130,Y
#_80BE86: BNE CODE_80BE94
#_80BE88: LDA.w $7E2120,Y
#_80BE8B: STA.w $7E2130,Y
#_80BE8E: LDA.b #$00
#_80BE90: STA.w $7E2120,Y
#_80BE93: INX

CODE_80BE94:
#_80BE94: TYA
#_80BE95: SEC
#_80BE96: SBC.b #$10
#_80BE98: TAY
#_80BE99: BNE CODE_80BE7A

CODE_80BE9B:
#_80BE9B: TXA
#_80BE9C: BNE CODE_80BE75
#_80BE9E: INC.w $7E2001
#_80BEA1: LDY.w $7E2001
#_80BEA4: LDA.w $7E2120,Y
#_80BEA7: CMP.b #$FF
#_80BEA9: BNE CODE_80BE75
#_80BEAB: RTS

;===================================================================================================

ROUTINE_80BEAC:
#_80BEAC: JSR ROUTINE_80BC9B
#_80BEAF: LDY.b #$D9
#_80BEB1: STY.w $7E2001

CODE_80BEB4:
#_80BEB4: LDA.b #$00
#_80BEB6: STA.w $7E2004
#_80BEB9: LDX.b #$00

CODE_80BEBB:
#_80BEBB: TYA
#_80BEBC: SEC
#_80BEBD: SBC.b #$10
#_80BEBF: TAY

CODE_80BEC0:
#_80BEC0: LDA.w $7E2120,Y
#_80BEC3: BEQ CODE_80BEBB
#_80BEC5: CMP.b #$FF
#_80BEC7: BEQ CODE_80BF1C
#_80BEC9: AND.b #$07
#_80BECB: STA.w $7E2002
#_80BECE: LDA.w $7E2110,Y
#_80BED1: AND.b #$07
#_80BED3: CMP.w $7E2002
#_80BED6: BNE CODE_80BEBB
#_80BED8: LDA.w $7E2120,Y
#_80BEDB: BIT.b #$10
#_80BEDD: BEQ CODE_80BEBB
#_80BEDF: BIT.b #$80
#_80BEE1: BNE CODE_80BEE6
#_80BEE3: INC.w $7E2004

CODE_80BEE6:
#_80BEE6: AND.b #$07
#_80BEE8: STA.w $7E2002
#_80BEEB: INX

CODE_80BEEC:
#_80BEEC: TYA
#_80BEED: SEC
#_80BEEE: SBC.b #$10
#_80BEF0: TAY
#_80BEF1: LDA.w $7E2120,Y
#_80BEF4: BEQ CODE_80BF10
#_80BEF6: BIT.b #$10
#_80BEF8: BEQ CODE_80BF10
#_80BEFA: CMP.b #$FF
#_80BEFC: BEQ CODE_80BF1C
#_80BEFE: AND.b #$07
#_80BF00: CMP.w $7E2002
#_80BF03: BNE CODE_80BF10
#_80BF05: LDA.w $7E2120,Y
#_80BF08: BMI CODE_80BF0D
#_80BF0A: INC.w $7E2004

CODE_80BF0D:
#_80BF0D: INX
#_80BF0E: BRA CODE_80BEEC

CODE_80BF10:
#_80BF10: JSR ROUTINE_80C0C6
#_80BF13: LDA.b #$00
#_80BF15: STA.w $7E2004
#_80BF18: LDX.b #$00
#_80BF1A: BRA CODE_80BEC0

CODE_80BF1C:
#_80BF1C: JSR ROUTINE_80C0C6
#_80BF1F: INC.w $7E2001
#_80BF22: LDY.w $7E2001
#_80BF25: LDA.w $7E2110,Y
#_80BF28: CMP.b #$FF
#_80BF2A: BEQ CODE_80BF2F
#_80BF2C: JMP.w CODE_80BEB4

CODE_80BF2F:
#_80BF2F: LDY.b #$C8
#_80BF31: STY.w $7E2001

CODE_80BF34:
#_80BF34: LDA.b #$00
#_80BF36: STA.w $7E2004
#_80BF39: LDX.b #$00

CODE_80BF3B:
#_80BF3B: INY

CODE_80BF3C:
#_80BF3C: LDA.w $7E2120,Y
#_80BF3F: BEQ CODE_80BF3B
#_80BF41: CMP.b #$FF
#_80BF43: BEQ CODE_80BF94
#_80BF45: AND.b #$07
#_80BF47: STA.w $7E2002
#_80BF4A: LDA.w $7E2121,Y
#_80BF4D: AND.b #$07
#_80BF4F: CMP.w $7E2002
#_80BF52: BNE CODE_80BF3B
#_80BF54: LDA.w $7E2120,Y
#_80BF57: BIT.b #$10
#_80BF59: BEQ CODE_80BF3B
#_80BF5B: BIT.b #$80
#_80BF5D: BNE CODE_80BF62
#_80BF5F: INC.w $7E2004

CODE_80BF62:
#_80BF62: AND.b #$07
#_80BF64: STA.w $7E2002
#_80BF67: INX

CODE_80BF68:
#_80BF68: INY
#_80BF69: LDA.w $7E2120,Y
#_80BF6C: BEQ CODE_80BF88
#_80BF6E: BIT.b #$10
#_80BF70: BEQ CODE_80BF88
#_80BF72: CMP.b #$FF
#_80BF74: BEQ CODE_80BF94
#_80BF76: AND.b #$07
#_80BF78: CMP.w $7E2002
#_80BF7B: BNE CODE_80BF88
#_80BF7D: LDA.w $7E2120,Y
#_80BF80: BMI CODE_80BF85
#_80BF82: INC.w $7E2004

CODE_80BF85:
#_80BF85: INX
#_80BF86: BRA CODE_80BF68

CODE_80BF88:
#_80BF88: JSR ROUTINE_80C161
#_80BF8B: LDA.b #$00
#_80BF8D: STA.w $7E2004
#_80BF90: LDX.b #$00
#_80BF92: BRA CODE_80BF3C

CODE_80BF94:
#_80BF94: JSR ROUTINE_80C161
#_80BF97: LDA.w $7E2001
#_80BF9A: SEC
#_80BF9B: SBC.b #$10
#_80BF9D: STA.w $7E2001
#_80BFA0: LDY.w $7E2001
#_80BFA3: LDA.w $7E2121,Y
#_80BFA6: CMP.b #$FF
#_80BFA8: BEQ CODE_80BFAD
#_80BFAA: JMP.w CODE_80BF34

CODE_80BFAD:
#_80BFAD: LDY.b #$00
#_80BFAF: STY.w $7E2005
#_80BFB2: LDY.b #$DF
#_80BFB4: STY.w $7E2001

CODE_80BFB7:
#_80BFB7: LDA.b #$00
#_80BFB9: STA.w $7E2004
#_80BFBC: LDX.b #$00

CODE_80BFBE:
#_80BFBE: TYA
#_80BFBF: SEC
#_80BFC0: SBC.b #$11
#_80BFC2: TAY

CODE_80BFC3:
#_80BFC3: LDA.w $7E2120,Y
#_80BFC6: BEQ CODE_80BFBE
#_80BFC8: CMP.b #$FF
#_80BFCA: BEQ CODE_80C01F
#_80BFCC: AND.b #$07
#_80BFCE: STA.w $7E2002
#_80BFD1: LDA.w $7E210F,Y
#_80BFD4: AND.b #$07
#_80BFD6: CMP.w $7E2002
#_80BFD9: BNE CODE_80BFBE
#_80BFDB: LDA.w $7E2120,Y
#_80BFDE: BIT.b #$10
#_80BFE0: BEQ CODE_80BFBE
#_80BFE2: BIT.b #$80
#_80BFE4: BNE CODE_80BFE9
#_80BFE6: INC.w $7E2004

CODE_80BFE9:
#_80BFE9: AND.b #$07
#_80BFEB: STA.w $7E2002
#_80BFEE: INX

CODE_80BFEF:
#_80BFEF: TYA
#_80BFF0: SEC
#_80BFF1: SBC.b #$11
#_80BFF3: TAY
#_80BFF4: LDA.w $7E2120,Y
#_80BFF7: BEQ CODE_80C013
#_80BFF9: BIT.b #$10
#_80BFFB: BEQ CODE_80C013
#_80BFFD: CMP.b #$FF
#_80BFFF: BEQ CODE_80C01F
#_80C001: AND.b #$07
#_80C003: CMP.w $7E2002
#_80C006: BNE CODE_80C013
#_80C008: LDA.w $7E2120,Y
#_80C00B: BMI CODE_80C010
#_80C00D: INC.w $7E2004

CODE_80C010:
#_80C010: INX
#_80C011: BRA CODE_80BFEF

CODE_80C013:
#_80C013: JSR ROUTINE_80C201
#_80C016: LDA.b #$00
#_80C018: STA.w $7E2004
#_80C01B: LDX.b #$00
#_80C01D: BRA CODE_80BFC3

CODE_80C01F:
#_80C01F: JSR ROUTINE_80C201
#_80C022: INC.w $7E2005
#_80C025: LDX.w $7E2005
#_80C028: LDA.l UNREACH_80CCA3,X
#_80C02C: CMP.b #$FF
#_80C02E: BEQ CODE_80C039
#_80C030: STA.w $7E2001
#_80C033: LDY.w $7E2001
#_80C036: JMP.w CODE_80BFB7

CODE_80C039:
#_80C039: LDY.b #$00
#_80C03B: STY.w $7E2005
#_80C03E: LDY.b #$D8
#_80C040: STY.w $7E2001

CODE_80C043:
#_80C043: LDA.b #$00
#_80C045: STA.w $7E2004
#_80C048: LDX.b #$00

CODE_80C04A:
#_80C04A: TYA
#_80C04B: SEC
#_80C04C: SBC.b #$0F
#_80C04E: TAY

CODE_80C04F:
#_80C04F: LDA.w $7E2120,Y
#_80C052: BEQ CODE_80C04A
#_80C054: CMP.b #$FF
#_80C056: BEQ CODE_80C0AB
#_80C058: AND.b #$07
#_80C05A: STA.w $7E2002
#_80C05D: LDA.w $7E2111,Y
#_80C060: AND.b #$07
#_80C062: CMP.w $7E2002
#_80C065: BNE CODE_80C04A
#_80C067: LDA.w $7E2120,Y
#_80C06A: BIT.b #$10
#_80C06C: BEQ CODE_80C04A
#_80C06E: BIT.b #$80
#_80C070: BNE CODE_80C075
#_80C072: INC.w $7E2004

CODE_80C075:
#_80C075: AND.b #$07
#_80C077: STA.w $7E2002
#_80C07A: INX

CODE_80C07B:
#_80C07B: TYA
#_80C07C: SEC
#_80C07D: SBC.b #$0F
#_80C07F: TAY
#_80C080: LDA.w $7E2120,Y
#_80C083: BEQ CODE_80C09F
#_80C085: BIT.b #$10
#_80C087: BEQ CODE_80C09F
#_80C089: CMP.b #$FF
#_80C08B: BEQ CODE_80C0AB
#_80C08D: AND.b #$07
#_80C08F: CMP.w $7E2002
#_80C092: BNE CODE_80C09F
#_80C094: LDA.w $7E2120,Y
#_80C097: BMI CODE_80C09C
#_80C099: INC.w $7E2004

CODE_80C09C:
#_80C09C: INX
#_80C09D: BRA CODE_80C07B

CODE_80C09F:
#_80C09F: JSR ROUTINE_80C2A1
#_80C0A2: LDA.b #$00
#_80C0A4: STA.w $7E2004
#_80C0A7: LDX.b #$00
#_80C0A9: BRA CODE_80C04F

CODE_80C0AB:
#_80C0AB: JSR ROUTINE_80C2A1
#_80C0AE: INC.w $7E2005
#_80C0B1: LDX.w $7E2005
#_80C0B4: LDA.l UNREACH_80CCB0,X
#_80C0B8: CMP.b #$FF
#_80C0BA: BEQ CODE_80C0C5
#_80C0BC: STA.w $7E2001
#_80C0BF: LDY.w $7E2001
#_80C0C2: JMP.w CODE_80C043

CODE_80C0C5:
#_80C0C5: RTS

;===================================================================================================

ROUTINE_80C0C6:
#_80C0C6: STX.w $7E2003
#_80C0C9: CPX.w $7E27F6
#_80C0CC: BCC CODE_80C0F5
#_80C0CE: LDA.w $7E2004
#_80C0D1: BEQ CODE_80C0F5
#_80C0D3: LDA.l UNREACH_80C341,X
#_80C0D7: CLC
#_80C0D8: ADC.w $7E2003
#_80C0DB: STA.w $7E2006
#_80C0DE: LDX.w $7E2002
#_80C0E1: LDA.w $7E2006
#_80C0E4: CLC
#_80C0E5: ADC.w $7E2331,X
#_80C0E8: STA.w $7E2331,X
#_80C0EB: LDA.w $7E2339,X
#_80C0EE: CLC
#_80C0EF: ADC.w $7E2004
#_80C0F2: STA.w $7E2339,X

CODE_80C0F5:
#_80C0F5: LDA.w $7E27FC
#_80C0F8: BEQ CODE_80C129
#_80C0FA: LDX.w $7E2003
#_80C0FD: CPX.w $7E27FB
#_80C100: BCC CODE_80C129
#_80C102: LDA.w $7E2004
#_80C105: BEQ CODE_80C129
#_80C107: LDA.l UNREACH_80C341,X
#_80C10B: CLC
#_80C10C: ADC.w $7E2003
#_80C10F: STA.w $7E2006
#_80C112: LDX.w $7E2002
#_80C115: LDA.w $7E2006
#_80C118: CLC
#_80C119: ADC.w $7E2341,X
#_80C11C: STA.w $7E2341,X
#_80C11F: LDA.w $7E2349,X
#_80C122: CLC
#_80C123: ADC.w $7E2004
#_80C126: STA.w $7E2349,X

CODE_80C129:
#_80C129: LDA.w $7E2801
#_80C12C: BEQ CODE_80C15D
#_80C12E: LDX.w $7E2003
#_80C131: CPX.w $7E2800
#_80C134: BCC CODE_80C15D
#_80C136: LDA.w $7E2004
#_80C139: BEQ CODE_80C15D
#_80C13B: LDA.l UNREACH_80C341,X
#_80C13F: CLC
#_80C140: ADC.w $7E2003
#_80C143: STA.w $7E2006
#_80C146: LDX.w $7E2002
#_80C149: LDA.w $7E2006
#_80C14C: CLC
#_80C14D: ADC.w $7E2351,X
#_80C150: STA.w $7E2351,X
#_80C153: LDA.w $7E2359,X
#_80C156: CLC
#_80C157: ADC.w $7E2004
#_80C15A: STA.w $7E2359,X

CODE_80C15D:
#_80C15D: LDX.w $7E2003
#_80C160: RTS

;===================================================================================================

ROUTINE_80C161:
#_80C161: STX.w $7E2003
#_80C164: CPX.w $7E27F6
#_80C167: BCC CODE_80C195
#_80C169: LDA.w $7E2004
#_80C16C: BEQ CODE_80C195
#_80C16E: LDA.w $7E2004
#_80C171: BEQ CODE_80C195
#_80C173: LDA.l UNREACH_80C34D,X
#_80C177: CLC
#_80C178: ADC.w $7E2003
#_80C17B: STA.w $7E2006
#_80C17E: LDX.w $7E2002
#_80C181: LDA.w $7E2006
#_80C184: CLC
#_80C185: ADC.w $7E2331,X
#_80C188: STA.w $7E2331,X
#_80C18B: LDA.w $7E2339,X
#_80C18E: CLC
#_80C18F: ADC.w $7E2004
#_80C192: STA.w $7E2339,X

CODE_80C195:
#_80C195: LDA.w $7E27FD
#_80C198: BEQ CODE_80C1C9
#_80C19A: LDX.w $7E2003
#_80C19D: CPX.w $7E27FB
#_80C1A0: BCC CODE_80C1C9
#_80C1A2: LDA.w $7E2004
#_80C1A5: BEQ CODE_80C1C9
#_80C1A7: LDA.l UNREACH_80C34D,X
#_80C1AB: CLC
#_80C1AC: ADC.w $7E2003
#_80C1AF: STA.w $7E2006
#_80C1B2: LDX.w $7E2002
#_80C1B5: LDA.w $7E2006
#_80C1B8: CLC
#_80C1B9: ADC.w $7E2341,X
#_80C1BC: STA.w $7E2341,X
#_80C1BF: LDA.w $7E2349,X
#_80C1C2: CLC
#_80C1C3: ADC.w $7E2004
#_80C1C6: STA.w $7E2349,X

CODE_80C1C9:
#_80C1C9: LDA.w $7E2802
#_80C1CC: BEQ CODE_80C1FD
#_80C1CE: LDX.w $7E2003
#_80C1D1: CPX.w $7E2800
#_80C1D4: BCC CODE_80C1FD
#_80C1D6: LDA.w $7E2004
#_80C1D9: BEQ CODE_80C1FD
#_80C1DB: LDA.l UNREACH_80C34D,X
#_80C1DF: CLC
#_80C1E0: ADC.w $7E2003
#_80C1E3: STA.w $7E2006
#_80C1E6: LDX.w $7E2002
#_80C1E9: LDA.w $7E2006
#_80C1EC: CLC
#_80C1ED: ADC.w $7E2351,X
#_80C1F0: STA.w $7E2351,X
#_80C1F3: LDA.w $7E2359,X
#_80C1F6: CLC
#_80C1F7: ADC.w $7E2004
#_80C1FA: STA.w $7E2359,X

CODE_80C1FD:
#_80C1FD: LDX.w $7E2003
#_80C200: RTS

;===================================================================================================

ROUTINE_80C201:
#_80C201: STX.w $7E2003
#_80C204: CPX.w $7E27F6
#_80C207: BCC CODE_80C235
#_80C209: LDA.w $7E2004
#_80C20C: BEQ CODE_80C235
#_80C20E: LDA.w $7E2004
#_80C211: BEQ CODE_80C235
#_80C213: LDA.l UNREACH_80C34D,X
#_80C217: CLC
#_80C218: ADC.w $7E2003
#_80C21B: STA.w $7E2006
#_80C21E: LDX.w $7E2002
#_80C221: LDA.w $7E2006
#_80C224: CLC
#_80C225: ADC.w $7E2331,X
#_80C228: STA.w $7E2331,X
#_80C22B: LDA.w $7E2339,X
#_80C22E: CLC
#_80C22F: ADC.w $7E2004
#_80C232: STA.w $7E2339,X

CODE_80C235:
#_80C235: LDA.w $7E27FE
#_80C238: BEQ CODE_80C269
#_80C23A: LDX.w $7E2003
#_80C23D: CPX.w $7E27FB
#_80C240: BCC CODE_80C269
#_80C242: LDA.w $7E2004
#_80C245: BEQ CODE_80C269
#_80C247: LDA.l UNREACH_80C34D,X
#_80C24B: CLC
#_80C24C: ADC.w $7E2003
#_80C24F: STA.w $7E2006
#_80C252: LDX.w $7E2002
#_80C255: LDA.w $7E2006
#_80C258: CLC
#_80C259: ADC.w $7E2341,X
#_80C25C: STA.w $7E2341,X
#_80C25F: LDA.w $7E2349,X
#_80C262: CLC
#_80C263: ADC.w $7E2004
#_80C266: STA.w $7E2349,X

CODE_80C269:
#_80C269: LDA.w $7E2803
#_80C26C: BEQ CODE_80C29D
#_80C26E: LDX.w $7E2003
#_80C271: CPX.w $7E2800
#_80C274: BCC CODE_80C29D
#_80C276: LDA.w $7E2004
#_80C279: BEQ CODE_80C29D
#_80C27B: LDA.l UNREACH_80C34D,X
#_80C27F: CLC
#_80C280: ADC.w $7E2003
#_80C283: STA.w $7E2006
#_80C286: LDX.w $7E2002
#_80C289: LDA.w $7E2006
#_80C28C: CLC
#_80C28D: ADC.w $7E2351,X
#_80C290: STA.w $7E2351,X
#_80C293: LDA.w $7E2359,X
#_80C296: CLC
#_80C297: ADC.w $7E2004
#_80C29A: STA.w $7E2359,X

CODE_80C29D:
#_80C29D: LDX.w $7E2003
#_80C2A0: RTS

;===================================================================================================

ROUTINE_80C2A1:
#_80C2A1: STX.w $7E2003
#_80C2A4: CPX.w $7E27F6
#_80C2A7: BCC CODE_80C2D5
#_80C2A9: LDA.w $7E2004
#_80C2AC: BEQ CODE_80C2D5
#_80C2AE: LDA.w $7E2004
#_80C2B1: BEQ CODE_80C2D5
#_80C2B3: LDA.l UNREACH_80C34D,X
#_80C2B7: CLC
#_80C2B8: ADC.w $7E2003
#_80C2BB: STA.w $7E2006
#_80C2BE: LDX.w $7E2002
#_80C2C1: LDA.w $7E2006
#_80C2C4: CLC
#_80C2C5: ADC.w $7E2331,X
#_80C2C8: STA.w $7E2331,X
#_80C2CB: LDA.w $7E2339,X
#_80C2CE: CLC
#_80C2CF: ADC.w $7E2004
#_80C2D2: STA.w $7E2339,X

CODE_80C2D5:
#_80C2D5: LDA.w $7E27FF
#_80C2D8: BEQ CODE_80C309
#_80C2DA: LDX.w $7E2003
#_80C2DD: CPX.w $7E27FB
#_80C2E0: BCC CODE_80C309
#_80C2E2: LDA.w $7E2004
#_80C2E5: BEQ CODE_80C309
#_80C2E7: LDA.l UNREACH_80C34D,X
#_80C2EB: CLC
#_80C2EC: ADC.w $7E2003
#_80C2EF: STA.w $7E2006
#_80C2F2: LDX.w $7E2002
#_80C2F5: LDA.w $7E2006
#_80C2F8: CLC
#_80C2F9: ADC.w $7E2341,X
#_80C2FC: STA.w $7E2341,X
#_80C2FF: LDA.w $7E2349,X
#_80C302: CLC
#_80C303: ADC.w $7E2004
#_80C306: STA.w $7E2349,X

CODE_80C309:
#_80C309: LDA.w $7E2804
#_80C30C: BEQ CODE_80C33D
#_80C30E: LDX.w $7E2003
#_80C311: CPX.w $7E2800
#_80C314: BCC CODE_80C33D
#_80C316: LDA.w $7E2004
#_80C319: BEQ CODE_80C33D
#_80C31B: LDA.l UNREACH_80C34D,X
#_80C31F: CLC
#_80C320: ADC.w $7E2003
#_80C323: STA.w $7E2006
#_80C326: LDX.w $7E2002
#_80C329: LDA.w $7E2006
#_80C32C: CLC
#_80C32D: ADC.w $7E2351,X
#_80C330: STA.w $7E2351,X
#_80C333: LDA.w $7E2359,X
#_80C336: CLC
#_80C337: ADC.w $7E2004
#_80C33A: STA.w $7E2359,X

CODE_80C33D:
#_80C33D: LDX.w $7E2003
#_80C340: RTS

UNREACH_80C341:
#_80C341: db $00,$00,$00,$02,$07,$0C,$11,$16
#_80C349: db $1B,$20,$00,$00

UNREACH_80C34D:
#_80C34D: db $00,$00,$00,$02,$07,$0C,$00

;===================================================================================================

ROUTINE_80C354:
#_80C354: LDX.w $7E2002
#_80C357: LDA.w $7E2006
#_80C35A: CLC
#_80C35B: ADC.w $7E2331,X
#_80C35E: STA.w $7E2331,X
#_80C361: LDA.w $7E2339,X
#_80C364: CLC
#_80C365: ADC.w $7E2004
#_80C368: STA.w $7E2339,X
#_80C36B: RTS

;===================================================================================================

ROUTINE_80C36C:
#_80C36C: LDX.w $7E2002
#_80C36F: LDA.w $7E2006
#_80C372: CLC
#_80C373: ADC.w $7E2341,X
#_80C376: STA.w $7E2341,X
#_80C379: LDA.w $7E2349,X
#_80C37C: CLC
#_80C37D: ADC.w $7E2004
#_80C380: STA.w $7E2349,X
#_80C383: RTS

;===================================================================================================

ROUTINE_80C384:
#_80C384: LDX.w $7E2002
#_80C387: LDA.w $7E2006
#_80C38A: CLC
#_80C38B: ADC.w $7E2351,X
#_80C38E: STA.w $7E2351,X
#_80C391: LDA.w $7E2359,X
#_80C394: CLC
#_80C395: ADC.w $7E2004
#_80C398: STA.w $7E2359,X
#_80C39B: RTS

;===================================================================================================

ROUTINE_80C39C:
#_80C39C: PHX
#_80C39D: PHY
#_80C39E: LDA.b #$00
#_80C3A0: TAY
#_80C3A1: TAX

CODE_80C3A2:
#_80C3A2: LDA.l DATA8_80BD51,X
#_80C3A6: CMP.b #$FF
#_80C3A8: BEQ CODE_80C3BC
#_80C3AA: PHX
#_80C3AB: TAX
#_80C3AC: LDY.b #$06

CODE_80C3AE:
#_80C3AE: LDA.w $7E2120,X
#_80C3B1: STA.w $7E2220,X
#_80C3B4: INX
#_80C3B5: DEY
#_80C3B6: BNE CODE_80C3AE
#_80C3B8: PLX
#_80C3B9: INX
#_80C3BA: BRA CODE_80C3A2

CODE_80C3BC:
#_80C3BC: PLY
#_80C3BD: PLX
#_80C3BE: RTS

;===================================================================================================

ROUTINE_80C3BF:
#_80C3BF: LDX.b #$F0

CODE_80C3C1:
#_80C3C1: LDA.w $7E211F,X
#_80C3C4: STA.w $7E221F,X
#_80C3C7: DEX
#_80C3C8: BNE CODE_80C3C1
#_80C3CA: RTS

;===================================================================================================

ROUTINE_80C3CB:
#_80C3CB: CMP.b #$00
#_80C3CD: BEQ CODE_80C3D1
#_80C3CF: BRA CODE_80C40C

CODE_80C3D1:
#_80C3D1: CPX.b #$01
#_80C3D3: BNE CODE_80C3F0

CODE_80C3D5:
#_80C3D5: LDA.w $7E2221,Y
#_80C3D8: BEQ CODE_80C40B
#_80C3DA: CMP.b #$FF
#_80C3DC: BEQ CODE_80C40B
#_80C3DE: LDA.w $7E2221,Y
#_80C3E1: STA.w $7E2210,Y
#_80C3E4: LDA.b #$00
#_80C3E6: STA.w $7E2221,Y
#_80C3E9: TYA
#_80C3EA: SEC
#_80C3EB: SBC.b #$10
#_80C3ED: TAY
#_80C3EE: BRA CODE_80C3D5

CODE_80C3F0:
#_80C3F0: LDA.w $7E221F,Y
#_80C3F3: BEQ CODE_80C40B
#_80C3F5: CMP.b #$FF
#_80C3F7: BEQ CODE_80C40B
#_80C3F9: LDA.w $7E221F,Y
#_80C3FC: STA.w $7E2210,Y
#_80C3FF: LDA.b #$00
#_80C401: STA.w $7E221F,Y
#_80C404: TYA
#_80C405: SEC
#_80C406: SBC.b #$10
#_80C408: TAY
#_80C409: BRA CODE_80C3F0

CODE_80C40B:
#_80C40B: RTS

CODE_80C40C:
#_80C40C: CMP.b #$01
#_80C40E: BNE CODE_80C448
#_80C410: CPX.b #$01
#_80C412: BNE CODE_80C42E
#_80C414: LDA.w $7E2221,Y
#_80C417: BNE CODE_80C425
#_80C419: LDA.w $7E2231,Y
#_80C41C: STA.w $7E2210,Y
#_80C41F: LDA.b #$00
#_80C421: STA.w $7E2231,Y
#_80C424: RTS

CODE_80C425:
#_80C425: STA.w $7E2210,Y
#_80C428: LDA.b #$00
#_80C42A: STA.w $7E2221,Y
#_80C42D: RTS

CODE_80C42E:
#_80C42E: LDA.w $7E221F,Y
#_80C431: BNE CODE_80C43F
#_80C433: LDA.w $7E212F,Y
#_80C436: STA.w $7E2110,Y
#_80C439: LDA.b #$00
#_80C43B: STA.w $7E212F,Y
#_80C43E: RTS

CODE_80C43F:
#_80C43F: STA.w $7E2210,Y
#_80C442: LDA.b #$00
#_80C444: STA.w $7E221F,Y
#_80C447: RTS

CODE_80C448:
#_80C448: CMP.b #$02
#_80C44A: BEQ CODE_80C44E
#_80C44C: BRA CODE_80C4BA

CODE_80C44E:
#_80C44E: CPX.b #$01
#_80C450: BNE CODE_80C486
#_80C452: TYA
#_80C453: TAX

CODE_80C454:
#_80C454: LDA.w $7E2110,Y
#_80C457: BEQ CODE_80C469
#_80C459: CMP.b #$FF
#_80C45B: BEQ CODE_80C469
#_80C45D: LDA.w $7E2121,X
#_80C460: BEQ CODE_80C46A
#_80C462: TXA
#_80C463: SEC
#_80C464: SBC.b #$10
#_80C466: TAX
#_80C467: BRA CODE_80C454

CODE_80C469:
#_80C469: RTS

CODE_80C46A:
#_80C46A: LDA.w $7E2221,X
#_80C46D: BNE CODE_80C469
#_80C46F: LDA.w $7E2210,Y
#_80C472: STA.w $7E2221,X
#_80C475: LDA.b #$00
#_80C477: STA.w $7E2210,Y
#_80C47A: TXA
#_80C47B: SEC
#_80C47C: SBC.b #$10
#_80C47E: TAX
#_80C47F: TYA
#_80C480: SEC
#_80C481: SBC.b #$10
#_80C483: TAY
#_80C484: BRA CODE_80C454

CODE_80C486:
#_80C486: TYA
#_80C487: TAX

CODE_80C488:
#_80C488: LDA.w $7E2110,Y
#_80C48B: BEQ CODE_80C4B9
#_80C48D: CMP.b #$FF
#_80C48F: BEQ CODE_80C4B9
#_80C491: LDA.w $7E211F,X
#_80C494: BEQ CODE_80C49D
#_80C496: TXA
#_80C497: SEC
#_80C498: SBC.b #$10
#_80C49A: TAX
#_80C49B: BRA CODE_80C488

CODE_80C49D:
#_80C49D: LDA.w $7E221F,X
#_80C4A0: BNE CODE_80C4B9
#_80C4A2: LDA.w $7E2210,Y
#_80C4A5: STA.w $7E221F,X
#_80C4A8: LDA.b #$00
#_80C4AA: STA.w $7E2210,Y
#_80C4AD: TXA
#_80C4AE: SEC
#_80C4AF: SBC.b #$10
#_80C4B1: TAX
#_80C4B2: TYA
#_80C4B3: SEC
#_80C4B4: SBC.b #$10
#_80C4B6: TAY
#_80C4B7: BRA CODE_80C488

CODE_80C4B9:
#_80C4B9: RTS

CODE_80C4BA:
#_80C4BA: CMP.b #$03
#_80C4BC: BNE CODE_80C4C3
#_80C4BE: LDA.b #$00
#_80C4C0: STA.w $7E2220,Y

CODE_80C4C3:
#_80C4C3: RTS

;===================================================================================================

ROUTINE_80C4C4:
#_80C4C4: LDY.b #$C9
#_80C4C6: STY.w $7E2001

CODE_80C4C9:
#_80C4C9: LDX.b #$00
#_80C4CB: LDY.w $7E2001

CODE_80C4CE:
#_80C4CE: LDA.w $7E2220,Y
#_80C4D1: BEQ CODE_80C4E8
#_80C4D3: CMP.b #$FF
#_80C4D5: BEQ CODE_80C4EF
#_80C4D7: LDA.w $7E2230,Y
#_80C4DA: BNE CODE_80C4E8
#_80C4DC: LDA.w $7E2220,Y
#_80C4DF: STA.w $7E2230,Y
#_80C4E2: LDA.b #$00
#_80C4E4: STA.w $7E2220,Y
#_80C4E7: INX

CODE_80C4E8:
#_80C4E8: TYA
#_80C4E9: SEC
#_80C4EA: SBC.b #$10
#_80C4EC: TAY
#_80C4ED: BNE CODE_80C4CE

CODE_80C4EF:
#_80C4EF: TXA
#_80C4F0: BNE CODE_80C4C9
#_80C4F2: INC.w $7E2001
#_80C4F5: LDY.w $7E2001
#_80C4F8: LDA.w $7E2220,Y
#_80C4FB: CMP.b #$FF
#_80C4FD: BNE CODE_80C4C9
#_80C4FF: RTS

;===================================================================================================

ROUTINE_80C500:
#_80C500: JSR ROUTINE_80BC9B
#_80C503: LDY.b #$D9
#_80C505: STY.w $7E2001

CODE_80C508:
#_80C508: LDA.b #$00
#_80C50A: STA.w $7E2004
#_80C50D: LDX.b #$00

CODE_80C50F:
#_80C50F: TYA
#_80C510: SEC
#_80C511: SBC.b #$10
#_80C513: TAY

CODE_80C514:
#_80C514: LDA.w $7E2220,Y
#_80C517: BEQ CODE_80C50F
#_80C519: CMP.b #$FF
#_80C51B: BEQ CODE_80C570
#_80C51D: AND.b #$07
#_80C51F: STA.w $7E2002
#_80C522: LDA.w $7E2210,Y
#_80C525: AND.b #$07
#_80C527: CMP.w $7E2002
#_80C52A: BNE CODE_80C50F
#_80C52C: LDA.w $7E2220,Y
#_80C52F: BIT.b #$10
#_80C531: BEQ CODE_80C50F
#_80C533: BIT.b #$80
#_80C535: BNE CODE_80C53A
#_80C537: INC.w $7E2004

CODE_80C53A:
#_80C53A: AND.b #$07
#_80C53C: STA.w $7E2002
#_80C53F: INX

CODE_80C540:
#_80C540: TYA
#_80C541: SEC
#_80C542: SBC.b #$10
#_80C544: TAY
#_80C545: LDA.w $7E2220,Y
#_80C548: BEQ CODE_80C564
#_80C54A: BIT.b #$10
#_80C54C: BEQ CODE_80C564
#_80C54E: CMP.b #$FF
#_80C550: BEQ CODE_80C570
#_80C552: AND.b #$07
#_80C554: CMP.w $7E2002
#_80C557: BNE CODE_80C564
#_80C559: LDA.w $7E2220,Y
#_80C55C: BMI CODE_80C561
#_80C55E: INC.w $7E2004

CODE_80C561:
#_80C561: INX
#_80C562: BRA CODE_80C540

CODE_80C564:
#_80C564: JSR ROUTINE_80C71A
#_80C567: LDA.b #$00
#_80C569: STA.w $7E2004
#_80C56C: LDX.b #$00
#_80C56E: BRA CODE_80C514

CODE_80C570:
#_80C570: JSR ROUTINE_80C71A
#_80C573: INC.w $7E2001
#_80C576: LDY.w $7E2001
#_80C579: LDA.w $7E2210,Y
#_80C57C: CMP.b #$FF
#_80C57E: BEQ CODE_80C583
#_80C580: JMP.w CODE_80C508

CODE_80C583:
#_80C583: LDY.b #$C8
#_80C585: STY.w $7E2001

CODE_80C588:
#_80C588: LDA.b #$00
#_80C58A: STA.w $7E2004
#_80C58D: LDX.b #$00

CODE_80C58F:
#_80C58F: INY

CODE_80C590:
#_80C590: LDA.w $7E2220,Y
#_80C593: BEQ CODE_80C58F
#_80C595: CMP.b #$FF
#_80C597: BEQ CODE_80C5E8
#_80C599: AND.b #$07
#_80C59B: STA.w $7E2002
#_80C59E: LDA.w $7E2221,Y
#_80C5A1: AND.b #$07
#_80C5A3: CMP.w $7E2002
#_80C5A6: BNE CODE_80C58F
#_80C5A8: LDA.w $7E2220,Y
#_80C5AB: BIT.b #$10
#_80C5AD: BEQ CODE_80C58F
#_80C5AF: BIT.b #$80
#_80C5B1: BNE CODE_80C5B6
#_80C5B3: INC.w $7E2004

CODE_80C5B6:
#_80C5B6: AND.b #$07
#_80C5B8: STA.w $7E2002
#_80C5BB: INX

CODE_80C5BC:
#_80C5BC: INY
#_80C5BD: LDA.w $7E2220,Y
#_80C5C0: BEQ CODE_80C5DC
#_80C5C2: BIT.b #$10
#_80C5C4: BEQ CODE_80C5DC
#_80C5C6: CMP.b #$FF
#_80C5C8: BEQ CODE_80C5E8
#_80C5CA: AND.b #$07
#_80C5CC: CMP.w $7E2002
#_80C5CF: BNE CODE_80C5DC
#_80C5D1: LDA.w $7E2220,Y
#_80C5D4: BMI CODE_80C5D9
#_80C5D6: INC.w $7E2004

CODE_80C5D9:
#_80C5D9: INX
#_80C5DA: BRA CODE_80C5BC

CODE_80C5DC:
#_80C5DC: JSR ROUTINE_80C7AB
#_80C5DF: LDA.b #$00
#_80C5E1: STA.w $7E2004
#_80C5E4: LDX.b #$00
#_80C5E6: BRA CODE_80C590

CODE_80C5E8:
#_80C5E8: JSR ROUTINE_80C7AB
#_80C5EB: LDA.w $7E2001
#_80C5EE: SEC
#_80C5EF: SBC.b #$10
#_80C5F1: STA.w $7E2001
#_80C5F4: LDY.w $7E2001
#_80C5F7: LDA.w $7E2221,Y
#_80C5FA: CMP.b #$FF
#_80C5FC: BEQ CODE_80C601
#_80C5FE: JMP.w CODE_80C588

CODE_80C601:
#_80C601: LDY.b #$00
#_80C603: STY.w $7E2005
#_80C606: LDY.b #$DF
#_80C608: STY.w $7E2001

CODE_80C60B:
#_80C60B: LDA.b #$00
#_80C60D: STA.w $7E2004
#_80C610: LDX.b #$00

CODE_80C612:
#_80C612: TYA
#_80C613: SEC
#_80C614: SBC.b #$11
#_80C616: TAY

CODE_80C617:
#_80C617: LDA.w $7E2220,Y
#_80C61A: BEQ CODE_80C612
#_80C61C: CMP.b #$FF
#_80C61E: BEQ CODE_80C673
#_80C620: AND.b #$07
#_80C622: STA.w $7E2002
#_80C625: LDA.w $7E220F,Y
#_80C628: AND.b #$07
#_80C62A: CMP.w $7E2002
#_80C62D: BNE CODE_80C612
#_80C62F: LDA.w $7E2220,Y
#_80C632: BIT.b #$10
#_80C634: BEQ CODE_80C612
#_80C636: BIT.b #$80
#_80C638: BNE CODE_80C63D
#_80C63A: INC.w $7E2004

CODE_80C63D:
#_80C63D: AND.b #$07
#_80C63F: STA.w $7E2002
#_80C642: INX

CODE_80C643:
#_80C643: TYA
#_80C644: SEC
#_80C645: SBC.b #$11
#_80C647: TAY
#_80C648: LDA.w $7E2220,Y
#_80C64B: BEQ CODE_80C667
#_80C64D: BIT.b #$10
#_80C64F: BEQ CODE_80C667
#_80C651: CMP.b #$FF
#_80C653: BEQ CODE_80C673
#_80C655: AND.b #$07
#_80C657: CMP.w $7E2002
#_80C65A: BNE CODE_80C667
#_80C65C: LDA.w $7E2220,Y
#_80C65F: BMI CODE_80C664
#_80C661: INC.w $7E2004

CODE_80C664:
#_80C664: INX
#_80C665: BRA CODE_80C643

CODE_80C667:
#_80C667: JSR ROUTINE_80C83C
#_80C66A: LDA.b #$00
#_80C66C: STA.w $7E2004
#_80C66F: LDX.b #$00
#_80C671: BRA CODE_80C617

CODE_80C673:
#_80C673: JSR ROUTINE_80C83C
#_80C676: INC.w $7E2005
#_80C679: LDX.w $7E2005
#_80C67C: LDA.l UNREACH_80CCA3,X
#_80C680: CMP.b #$FF
#_80C682: BEQ CODE_80C68D
#_80C684: STA.w $7E2001
#_80C687: LDY.w $7E2001
#_80C68A: JMP.w CODE_80C60B

CODE_80C68D:
#_80C68D: LDY.b #$00
#_80C68F: STY.w $7E2005
#_80C692: LDY.b #$D8
#_80C694: STY.w $7E2001

CODE_80C697:
#_80C697: LDA.b #$00
#_80C699: STA.w $7E2004
#_80C69C: LDX.b #$00

CODE_80C69E:
#_80C69E: TYA
#_80C69F: SEC
#_80C6A0: SBC.b #$0F
#_80C6A2: TAY

CODE_80C6A3:
#_80C6A3: LDA.w $7E2220,Y
#_80C6A6: BEQ CODE_80C69E
#_80C6A8: CMP.b #$FF
#_80C6AA: BEQ CODE_80C6FF
#_80C6AC: AND.b #$07
#_80C6AE: STA.w $7E2002
#_80C6B1: LDA.w $7E2211,Y
#_80C6B4: AND.b #$07
#_80C6B6: CMP.w $7E2002
#_80C6B9: BNE CODE_80C69E
#_80C6BB: LDA.w $7E2220,Y
#_80C6BE: BIT.b #$10
#_80C6C0: BEQ CODE_80C69E
#_80C6C2: BIT.b #$80
#_80C6C4: BNE CODE_80C6C9
#_80C6C6: INC.w $7E2004

CODE_80C6C9:
#_80C6C9: AND.b #$07
#_80C6CB: STA.w $7E2002
#_80C6CE: INX

CODE_80C6CF:
#_80C6CF: TYA
#_80C6D0: SEC
#_80C6D1: SBC.b #$0F
#_80C6D3: TAY
#_80C6D4: LDA.w $7E2220,Y
#_80C6D7: BEQ CODE_80C6F3
#_80C6D9: BIT.b #$10
#_80C6DB: BEQ CODE_80C6F3
#_80C6DD: CMP.b #$FF
#_80C6DF: BEQ CODE_80C6FF
#_80C6E1: AND.b #$07
#_80C6E3: CMP.w $7E2002
#_80C6E6: BNE CODE_80C6F3
#_80C6E8: LDA.w $7E2220,Y
#_80C6EB: BMI CODE_80C6F0
#_80C6ED: INC.w $7E2004

CODE_80C6F0:
#_80C6F0: INX
#_80C6F1: BRA CODE_80C6CF

CODE_80C6F3:
#_80C6F3: JSR ROUTINE_80C8CD
#_80C6F6: LDA.b #$00
#_80C6F8: STA.w $7E2004
#_80C6FB: LDX.b #$00
#_80C6FD: BRA CODE_80C6A3

CODE_80C6FF:
#_80C6FF: JSR ROUTINE_80C8CD
#_80C702: INC.w $7E2005
#_80C705: LDX.w $7E2005
#_80C708: LDA.l UNREACH_80CCB0,X
#_80C70C: CMP.b #$FF
#_80C70E: BEQ CODE_80C719
#_80C710: STA.w $7E2001
#_80C713: LDY.w $7E2001
#_80C716: JMP.w CODE_80C697

CODE_80C719:
#_80C719: RTS

;===================================================================================================

ROUTINE_80C71A:
#_80C71A: STX.w $7E2003
#_80C71D: CPX.w $7E2805
#_80C720: BCC CODE_80C749
#_80C722: LDA.w $7E2004
#_80C725: BEQ CODE_80C749
#_80C727: LDA.l UNREACH_80C341,X
#_80C72B: CLC
#_80C72C: ADC.w $7E2003
#_80C72F: STA.w $7E2006
#_80C732: LDX.w $7E2002
#_80C735: LDA.w $7E2006
#_80C738: CLC
#_80C739: ADC.w $7E2331,X
#_80C73C: STA.w $7E2331,X
#_80C73F: LDA.w $7E2339,X
#_80C742: CLC
#_80C743: ADC.w $7E2004
#_80C746: STA.w $7E2339,X

CODE_80C749:
#_80C749: LDA.w $7E280B
#_80C74C: BEQ CODE_80C778
#_80C74E: LDX.w $7E2003
#_80C751: CPX.w $7E280A
#_80C754: BCC CODE_80C778
#_80C756: LDA.l UNREACH_80C341,X
#_80C75A: CLC
#_80C75B: ADC.w $7E2003
#_80C75E: STA.w $7E2006
#_80C761: LDX.w $7E2002
#_80C764: LDA.w $7E2006
#_80C767: CLC
#_80C768: ADC.w $7E2341,X
#_80C76B: STA.w $7E2341,X
#_80C76E: LDA.w $7E2349,X
#_80C771: CLC
#_80C772: ADC.w $7E2004
#_80C775: STA.w $7E2349,X

CODE_80C778:
#_80C778: LDA.w $7E2810
#_80C77B: BEQ CODE_80C7A7
#_80C77D: LDX.w $7E2003
#_80C780: CPX.w $7E280F
#_80C783: BCC CODE_80C7A7
#_80C785: LDA.l UNREACH_80C341,X
#_80C789: CLC
#_80C78A: ADC.w $7E2003
#_80C78D: STA.w $7E2006
#_80C790: LDX.w $7E2002
#_80C793: LDA.w $7E2006
#_80C796: CLC
#_80C797: ADC.w $7E2351,X
#_80C79A: STA.w $7E2351,X
#_80C79D: LDA.w $7E2359,X
#_80C7A0: CLC
#_80C7A1: ADC.w $7E2004
#_80C7A4: STA.w $7E2359,X

CODE_80C7A7:
#_80C7A7: LDX.w $7E2003
#_80C7AA: RTS

;===================================================================================================

ROUTINE_80C7AB:
#_80C7AB: STX.w $7E2003
#_80C7AE: CPX.w $7E2805
#_80C7B1: BCC CODE_80C7DA
#_80C7B3: LDA.w $7E2004
#_80C7B6: BEQ CODE_80C7DA
#_80C7B8: LDA.l UNREACH_80C34D,X
#_80C7BC: CLC
#_80C7BD: ADC.w $7E2003
#_80C7C0: STA.w $7E2006
#_80C7C3: LDX.w $7E2002
#_80C7C6: LDA.w $7E2006
#_80C7C9: CLC
#_80C7CA: ADC.w $7E2331,X
#_80C7CD: STA.w $7E2331,X
#_80C7D0: LDA.w $7E2339,X
#_80C7D3: CLC
#_80C7D4: ADC.w $7E2004
#_80C7D7: STA.w $7E2339,X

CODE_80C7DA:
#_80C7DA: LDA.w $7E280C
#_80C7DD: BEQ CODE_80C809
#_80C7DF: LDX.w $7E2003
#_80C7E2: CPX.w $7E280A
#_80C7E5: BCC CODE_80C809
#_80C7E7: LDA.l UNREACH_80C34D,X
#_80C7EB: CLC
#_80C7EC: ADC.w $7E2003
#_80C7EF: STA.w $7E2006
#_80C7F2: LDX.w $7E2002
#_80C7F5: LDA.w $7E2006
#_80C7F8: CLC
#_80C7F9: ADC.w $7E2341,X
#_80C7FC: STA.w $7E2341,X
#_80C7FF: LDA.w $7E2349,X
#_80C802: CLC
#_80C803: ADC.w $7E2004
#_80C806: STA.w $7E2349,X

CODE_80C809:
#_80C809: LDA.w $7E2811
#_80C80C: BEQ CODE_80C838
#_80C80E: LDX.w $7E2003
#_80C811: CPX.w $7E280F
#_80C814: BCC CODE_80C838
#_80C816: LDA.l UNREACH_80C34D,X
#_80C81A: CLC
#_80C81B: ADC.w $7E2003
#_80C81E: STA.w $7E2006
#_80C821: LDX.w $7E2002
#_80C824: LDA.w $7E2006
#_80C827: CLC
#_80C828: ADC.w $7E2351,X
#_80C82B: STA.w $7E2351,X
#_80C82E: LDA.w $7E2359,X
#_80C831: CLC
#_80C832: ADC.w $7E2004
#_80C835: STA.w $7E2359,X

CODE_80C838:
#_80C838: LDX.w $7E2003
#_80C83B: RTS

;===================================================================================================

ROUTINE_80C83C:
#_80C83C: STX.w $7E2003
#_80C83F: CPX.w $7E2805
#_80C842: BCC CODE_80C86B
#_80C844: LDA.w $7E2004
#_80C847: BEQ CODE_80C86B
#_80C849: LDA.l UNREACH_80C34D,X
#_80C84D: CLC
#_80C84E: ADC.w $7E2003
#_80C851: STA.w $7E2006
#_80C854: LDX.w $7E2002
#_80C857: LDA.w $7E2006
#_80C85A: CLC
#_80C85B: ADC.w $7E2331,X
#_80C85E: STA.w $7E2331,X
#_80C861: LDA.w $7E2339,X
#_80C864: CLC
#_80C865: ADC.w $7E2004
#_80C868: STA.w $7E2339,X

CODE_80C86B:
#_80C86B: LDA.w $7E280D
#_80C86E: BEQ CODE_80C89A
#_80C870: LDX.w $7E2003
#_80C873: CPX.w $7E280A
#_80C876: BCC CODE_80C89A
#_80C878: LDA.l UNREACH_80C34D,X
#_80C87C: CLC
#_80C87D: ADC.w $7E2003
#_80C880: STA.w $7E2006
#_80C883: LDX.w $7E2002
#_80C886: LDA.w $7E2006
#_80C889: CLC
#_80C88A: ADC.w $7E2341,X
#_80C88D: STA.w $7E2341,X
#_80C890: LDA.w $7E2349,X
#_80C893: CLC
#_80C894: ADC.w $7E2004
#_80C897: STA.w $7E2349,X

CODE_80C89A:
#_80C89A: LDA.w $7E2812
#_80C89D: BEQ CODE_80C8C9
#_80C89F: LDX.w $7E2003
#_80C8A2: CPX.w $7E280F
#_80C8A5: BCC CODE_80C8C9
#_80C8A7: LDA.l UNREACH_80C34D,X
#_80C8AB: CLC
#_80C8AC: ADC.w $7E2003
#_80C8AF: STA.w $7E2006
#_80C8B2: LDX.w $7E2002
#_80C8B5: LDA.w $7E2006
#_80C8B8: CLC
#_80C8B9: ADC.w $7E2351,X
#_80C8BC: STA.w $7E2351,X
#_80C8BF: LDA.w $7E2359,X
#_80C8C2: CLC
#_80C8C3: ADC.w $7E2004
#_80C8C6: STA.w $7E2359,X

CODE_80C8C9:
#_80C8C9: LDX.w $7E2003
#_80C8CC: RTS

;===================================================================================================

ROUTINE_80C8CD:
#_80C8CD: STX.w $7E2003
#_80C8D0: CPX.w $7E2805
#_80C8D3: BCC CODE_80C8FC
#_80C8D5: LDA.w $7E2004
#_80C8D8: BEQ CODE_80C8FC
#_80C8DA: LDA.l UNREACH_80C34D,X
#_80C8DE: CLC
#_80C8DF: ADC.w $7E2003
#_80C8E2: STA.w $7E2006
#_80C8E5: LDX.w $7E2002
#_80C8E8: LDA.w $7E2006
#_80C8EB: CLC
#_80C8EC: ADC.w $7E2331,X
#_80C8EF: STA.w $7E2331,X
#_80C8F2: LDA.w $7E2339,X
#_80C8F5: CLC
#_80C8F6: ADC.w $7E2004
#_80C8F9: STA.w $7E2339,X

CODE_80C8FC:
#_80C8FC: LDA.w $7E280E
#_80C8FF: BEQ CODE_80C92B
#_80C901: LDX.w $7E2003
#_80C904: CPX.w $7E280A
#_80C907: BCC CODE_80C92B
#_80C909: LDA.l UNREACH_80C34D,X
#_80C90D: CLC
#_80C90E: ADC.w $7E2003
#_80C911: STA.w $7E2006
#_80C914: LDX.w $7E2002
#_80C917: LDA.w $7E2006
#_80C91A: CLC
#_80C91B: ADC.w $7E2341,X
#_80C91E: STA.w $7E2341,X
#_80C921: LDA.w $7E2349,X
#_80C924: CLC
#_80C925: ADC.w $7E2004
#_80C928: STA.w $7E2349,X

CODE_80C92B:
#_80C92B: LDA.w $7E2813
#_80C92E: BEQ CODE_80C95A
#_80C930: LDX.w $7E2003
#_80C933: CPX.w $7E280F
#_80C936: BCC CODE_80C95A
#_80C938: LDA.l UNREACH_80C34D,X
#_80C93C: CLC
#_80C93D: ADC.w $7E2003
#_80C940: STA.w $7E2006
#_80C943: LDX.w $7E2002
#_80C946: LDA.w $7E2006
#_80C949: CLC
#_80C94A: ADC.w $7E2351,X
#_80C94D: STA.w $7E2351,X
#_80C950: LDA.w $7E2359,X
#_80C953: CLC
#_80C954: ADC.w $7E2004
#_80C957: STA.w $7E2359,X

CODE_80C95A:
#_80C95A: LDX.w $7E2003
#_80C95D: RTS

;===================================================================================================

ROUTINE_80C95E:
#_80C95E: LDX.w $7E2002
#_80C961: LDA.w $7E2006
#_80C964: CLC
#_80C965: ADC.w $7E2331,X
#_80C968: STA.w $7E2331,X
#_80C96B: LDA.w $7E2339,X
#_80C96E: CLC
#_80C96F: ADC.w $7E2004
#_80C972: STA.w $7E2339,X
#_80C975: RTS

;===================================================================================================

ROUTINE_80C976:
#_80C976: LDX.w $7E2002
#_80C979: LDA.w $7E2006
#_80C97C: CLC
#_80C97D: ADC.w $7E2341,X
#_80C980: STA.w $7E2341,X
#_80C983: LDA.w $7E2349,X
#_80C986: CLC
#_80C987: ADC.w $7E2004
#_80C98A: STA.w $7E2349,X
#_80C98D: RTS

;===================================================================================================

ROUTINE_80C98E:
#_80C98E: LDX.w $7E2002
#_80C991: LDA.w $7E2006
#_80C994: CLC
#_80C995: ADC.w $7E2351,X
#_80C998: STA.w $7E2351,X
#_80C99B: LDA.w $7E2359,X
#_80C99E: CLC
#_80C99F: ADC.w $7E2004
#_80C9A2: STA.w $7E2359,X
#_80C9A5: RTS

;===================================================================================================

ROUTINE_80C9A6:
#_80C9A6: PHP
#_80C9A7: PHB
#_80C9A8: PHK
#_80C9A9: PLB
#_80C9AA: LDX.w $1373
#_80C9AD: CPX.b #$12
#_80C9AF: BCS CODE_80C9E6
#_80C9B1: LDA.w $1377
#_80C9B4: BEQ CODE_80C9BC
#_80C9B6: LDA.l UNREACH_80C9FB,X
#_80C9BA: BRA CODE_80C9C0

CODE_80C9BC:
#_80C9BC: LDA.l UNREACH_80C9E9,X

CODE_80C9C0:
#_80C9C0: STA.w $1BB1
#_80C9C3: LDA.w $1BB1
#_80C9C6: ASL A
#_80C9C7: TAX
#_80C9C8: LDA.l PTR16_80CA0D,X
#_80C9CC: STA.b $12
#_80C9CE: LDA.l PTR16_80CA0E,X
#_80C9D2: STA.b $13
#_80C9D4: LDX.b #$00
#_80C9D6: LDY.b #$00

CODE_80C9D8:
#_80C9D8: LDA.b ($12),Y
#_80C9DA: CMP.b #$FF
#_80C9DC: BEQ CODE_80C9E6
#_80C9DE: STA.l $7E27F4,X
#_80C9E2: INX
#_80C9E3: INY
#_80C9E4: BRA CODE_80C9D8

CODE_80C9E6:
#_80C9E6: PLB
#_80C9E7: PLP
#_80C9E8: RTS

UNREACH_80C9E9:
#_80C9E9: db $03,$03,$03,$03,$03,$03,$03,$03
#_80C9F1: db $03,$03,$03,$03,$03,$03,$03,$03
#_80C9F9: db $03,$03

UNREACH_80C9FB:
#_80C9FB: db $04,$04,$04,$04,$04,$04,$04,$04
#_80CA03: db $05,$05,$05,$05,$05,$05,$05,$05
#_80CA0B: db $06,$06

PTR16_80CA0D:
#_80CA0D: dw UNREACH_00CA2D
#_80CA0F: dw UNREACH_00CA4E
#_80CA11: dw UNREACH_00CA6F
#_80CA13: dw UNREACH_00CA90
#_80CA15: dw UNREACH_00CAB1
#_80CA17: dw UNREACH_00CAD2
#_80CA19: dw UNREACH_00CAF3
#_80CA1B: dw UNREACH_00CB14
#_80CA1D: dw UNREACH_00CB35
#_80CA1F: dw UNREACH_00CB56
#_80CA21: dw UNREACH_00CB77
#_80CA23: dw UNREACH_00CB98
#_80CA25: dw UNREACH_00CBB9
#_80CA27: dw UNREACH_00CBDA
#_80CA29: dw UNREACH_00CBFB
#_80CA2B: dw UNREACH_00CC1C
#_80CA2D: db $01,$01,$03,$01,$01,$01,$01,$03
#_80CA35: db $01,$01,$00,$00,$03,$00,$00,$01
#_80CA3D: db $01,$03,$01,$01,$01,$01,$02,$01
#_80CA45: db $01,$00,$00,$02,$00,$00,$01,$01
#_80CA4D: db $FF,$02,$02,$03,$01,$01,$01,$01
#_80CA55: db $03,$01,$01,$00,$00,$03,$00,$00
#_80CA5D: db $01,$01,$03,$01,$01,$01,$01,$02
#_80CA65: db $01,$01,$00,$00,$02,$00,$00,$01
#_80CA6D: db $01,$FF,$03,$03,$03,$01,$01,$01
#_80CA75: db $01,$03,$01,$01,$00,$00,$03,$00
#_80CA7D: db $00,$01,$01,$03,$01,$01,$01,$01
#_80CA85: db $02,$01,$01,$00,$00,$02,$00,$00
#_80CA8D: db $01,$01,$FF,$04,$04,$03,$01,$01
#_80CA95: db $01,$01,$03,$01,$01,$01,$01,$03
#_80CA9D: db $00,$00,$01,$01,$03,$01,$01,$01
#_80CAA5: db $01,$02,$01,$01,$01,$01,$02,$00
#_80CAAD: db $00,$01,$01,$FF,$05,$05,$03,$01
#_80CAB5: db $01,$01,$01,$03,$01,$01,$01,$01
#_80CABD: db $03,$00,$00,$01,$01,$03,$01,$01
#_80CAC5: db $01,$01,$02,$01,$01,$01,$01,$02
#_80CACD: db $00,$00,$01,$01,$FF,$06,$06,$03
#_80CAD5: db $01,$01,$01,$01,$03,$01,$01,$01
#_80CADD: db $01,$03,$00,$00,$01,$01,$03,$01
#_80CAE5: db $01,$01,$01,$02,$01,$01,$01,$01
#_80CAED: db $02,$00,$00,$01,$01,$FF,$07,$07
#_80CAF5: db $03,$01,$01,$01,$01,$03,$01,$01
#_80CAFD: db $01,$01,$03,$00,$00,$01,$01,$03
#_80CB05: db $01,$01,$01,$01,$02,$01,$01,$01
#_80CB0D: db $01,$02,$00,$00,$01,$01,$FF,$08
#_80CB15: db $08,$03,$01,$01,$01,$01,$03,$01
#_80CB1D: db $01,$00,$00,$03,$00,$00,$01,$01
#_80CB25: db $03,$01,$01,$01,$01,$02,$01,$01
#_80CB2D: db $00,$00,$02,$00,$00,$01,$01,$FF
#_80CB35: db $08,$09,$03,$01,$01,$01,$01,$03
#_80CB3D: db $01,$01,$00,$00,$03,$00,$00,$01
#_80CB45: db $01,$03,$01,$01,$01,$01,$02,$01
#_80CB4D: db $01,$00,$00,$02,$00,$00,$01,$01
#_80CB55: db $FF,$08,$0A,$03,$01,$01,$01,$01
#_80CB5D: db $03,$01,$01,$00,$00,$03,$00,$00
#_80CB65: db $01,$01,$03,$01,$01,$01,$01,$02
#_80CB6D: db $01,$01,$00,$00,$02,$00,$00,$01
#_80CB75: db $01,$FF,$08,$0B,$03,$01,$01,$01
#_80CB7D: db $01,$03,$01,$01,$00,$00,$03,$00
#_80CB85: db $00,$01,$01,$03,$01,$01,$01,$01
#_80CB8D: db $02,$01,$01,$00,$00,$02,$00,$00
#_80CB95: db $01,$01,$FF,$08,$0C,$03,$01,$01
#_80CB9D: db $01,$01,$03,$01,$01,$00,$00,$03
#_80CBA5: db $00,$00,$01,$01,$03,$01,$01,$01
#_80CBAD: db $01,$02,$01,$01,$00,$00,$02,$00
#_80CBB5: db $00,$01,$01,$FF,$08,$0D,$03,$01
#_80CBBD: db $01,$01,$01,$03,$01,$01,$00,$00
#_80CBC5: db $03,$00,$00,$01,$01,$03,$01,$01
#_80CBCD: db $01,$01,$02,$01,$01,$00,$00,$02
#_80CBD5: db $00,$00,$01,$01,$FF,$08,$0E,$03
#_80CBDD: db $01,$01,$01,$01,$03,$01,$01,$00
#_80CBE5: db $00,$03,$00,$00,$01,$01,$03,$01
#_80CBED: db $01,$01,$01,$02,$01,$01,$00,$00
#_80CBF5: db $02,$00,$00,$01,$01,$FF,$08,$0F
#_80CBFD: db $03,$01,$01,$01,$01,$03,$01,$01
#_80CC05: db $00,$00,$03,$00,$00,$01,$01,$03
#_80CC0D: db $01,$01,$01,$01,$02,$01,$01,$00
#_80CC15: db $00,$02,$00,$00,$01,$01,$FF,$08
#_80CC1D: db $10,$03,$01,$01,$01,$01,$03,$01
#_80CC25: db $01,$00,$00,$03,$00,$00,$01,$01
#_80CC2D: db $03,$01,$01,$01,$01,$02,$01,$01
#_80CC35: db $00,$00,$02,$00,$00,$01,$01,$FF
#_80CC3D: PHP
#_80CC3E: PHB
#_80CC3F: PHK
#_80CC40: PLB
#_80CC41: SEP #$30
#_80CC43: LDA.b #$00
#_80CC45: PHA
#_80CC46: PLB
#_80CC47: LDX.w $1BB2
#_80CC4A: LDA.l $001BB3
#_80CC4E: STA.l $7E3A00,X
#_80CC52: LDA.b $E1
#_80CC54: STA.l $7E3A01,X
#_80CC58: INC.w $1BB2
#_80CC5B: INC.w $1BB2
#_80CC5E: PLB
#_80CC5F: PLP
#_80CC60: RTL

;===================================================================================================

ROUTINE_80CC61:
#_80CC61: PHP
#_80CC62: PHB
#_80CC63: PHK
#_80CC64: PLB
#_80CC65: SEP #$30
#_80CC67: LDA.b #$00
#_80CC69: PHA
#_80CC6A: PLB
#_80CC6B: LDA.b #$80
#_80CC6D: STA.w WRIO
#_80CC70: LDA.w SLVH

CODE_80CC73:
#_80CC73: LDA.w STAT78
#_80CC76: AND.b #$40
#_80CC78: BEQ CODE_80CC73
#_80CC7A: LDX.w $1BB0
#_80CC7D: LDA.w OPVCT
#_80CC80: STA.l $7E3800,X
#_80CC84: LDA.w OPVCT
#_80CC87: AND.b #$01
#_80CC89: STA.l $7E3900,X
#_80CC8D: INC.w $1BB0
#_80CC90: PLB
#_80CC91: PLP
#_80CC92: RTL

;===================================================================================================

ROUTINE_80CC93:
#_80CC93: LDA.w $7E27EA
#_80CC96: BNE CODE_80CC9A
#_80CC98: CLC
#_80CC99: RTS

CODE_80CC9A:
#_80CC9A: DEC.w $7E27EA
#_80CC9D: LDA.b #$04
#_80CC9F: STA.b $A8
#_80CCA1: SEC
#_80CCA2: RTS

UNREACH_80CCA3:
#_80CCA3: db $DF,$DE,$DD,$DC,$5F,$6F,$7F,$8F
#_80CCAB: db $9F,$AF,$BF,$CF,$FF

UNREACH_80CCB0:
#_80CCB0: db $D8,$D9,$DA,$DB,$58,$68,$78,$88
#_80CCB8: db $98,$A8,$B8,$C8,$FF

;===================================================================================================

ROUTINE_80CCBD:
#_80CCBD: PHP
#_80CCBE: LDX.w $1411
#_80CCC1: LDA.l UNREACH_80CCCD,X
#_80CCC5: ORA.w $1415
#_80CCC8: STA.w $1416
#_80CCCB: PLP
#_80CCCC: RTS

UNREACH_80CCCD:
#_80CCCD: db $00,$10,$20,$30,$40,$50,$60,$70
#_80CCD5: db $80,$90,$A0,$B0,$C0,$D0,$E0,$00
#_80CCDD: db $00

;===================================================================================================

UNREACH_80CCDE:
#_80CCDE: db $02,$00,$20,$7F,$00,$10,$80
#_80CCE5: db $00,$00

;===================================================================================================

ROUTINE_80CCE7:
#_80CCE7: PHP
#_80CCE8: JSL WaitForNMIWithFBlank
#_80CCEC: SEP #$30
#_80CCEE: STZ.w TM
#_80CCF1: STZ.b $80
#_80CCF3: STZ.w TS
#_80CCF6: STZ.b $81
#_80CCF8: JSR ROUTINE_808000
#_80CCFB: JSR ROUTINE_808036
#_80CCFE: REP #$30
#_80CD00: STZ.w $0800
#_80CD03: STZ.w $0806
#_80CD06: STZ.w $0808
#_80CD09: STZ.w $0802
#_80CD0C: LDA.w #$8000
#_80CD0F: STA.b $01
#_80CD11: LDA.w #UNREACH_80CCDE
#_80CD14: STA.b $00
#_80CD16: JSL SomeDMAThing_808915
#_80CD1A: REP #$20
#_80CD1C: LDA.w #$0000
#_80CD1F: STA.w $0800
#_80CD22: JSL EnableNMI_808334
#_80CD26: JSL WaitForNMIWithoutFBlank
#_80CD2A: PLP

CODE_80CD2B:
#_80CD2B: JSL ClearOAMProbably_808506
#_80CD2F: LDA.w $0800
#_80CD32: AND.w #$00FF
#_80CD35: ASL A
#_80CD36: TAX
#_80CD37: JSR.w (PTR16_80CD43,X)
#_80CD3A: JSR ROUTINE_80D08D
#_80CD3D: JSL WaitForNMI
#_80CD41: BRA CODE_80CD2B

PTR16_80CD43:
#_80CD43: dw ROUTINE_00CD47
#_80CD45: dw ROUTINE_00CD4C
#_80CD47: JSL ROUTINE_818000
#_80CD4B: RTS

;===================================================================================================

ROUTINE_80CD4C:
#_80CD4C: PHP
#_80CD4D: PHB
#_80CD4E: PHK
#_80CD4F: PLB
#_80CD50: SEP #$20
#_80CD52: LDA.w $0693
#_80CD55: BEQ CODE_80CD5D
#_80CD57: JSL ROUTINE_82D36E
#_80CD5B: SEP #$20

CODE_80CD5D:
#_80CD5D: LDA.w $0691
#_80CD60: BNE CODE_80CD6F
#_80CD62: LDA.w $0804
#_80CD65: BEQ CODE_80CD6F
#_80CD67: CMP.b #$05
#_80CD69: BCS CODE_80CD6F
#_80CD6B: JSL ROUTINE_83D926

CODE_80CD6F:
#_80CD6F: REP #$20
#_80CD71: LDA.w $0804
#_80CD74: AND.w #$00FF
#_80CD77: ASL A
#_80CD78: TAX
#_80CD79: SEP #$20
#_80CD7B: JSR.w (PTR16_80CD91,X)
#_80CD7E: SEP #$20
#_80CD80: LDA.w $0804
#_80CD83: BEQ CODE_80CD8E
#_80CD85: CMP.b #$06
#_80CD87: BCS CODE_80CD8E
#_80CD89: LDA.b #$01
#_80CD8B: STA.w $12E6

CODE_80CD8E:
#_80CD8E: PLB
#_80CD8F: PLP
#_80CD90: RTS

PTR16_80CD91:
#_80CD91: dw ROUTINE_00CDB1
#_80CD93: dw ROUTINE_00CF79
#_80CD95: dw ROUTINE_00CFC9
#_80CD97: dw ROUTINE_00CFFE
#_80CD99: dw ROUTINE_00D034
#_80CD9B: dw ROUTINE_00D03D
#_80CD9D: dw ROUTINE_00D042
#_80CD9F: dw ROUTINE_00D047
#_80CDA1: dw ROUTINE_00D04C
#_80CDA3: dw ROUTINE_00D051
#_80CDA5: dw ROUTINE_00D056
#_80CDA7: dw ROUTINE_00D05F
#_80CDA9: dw $0000
#_80CDAB: dw $0000
#_80CDAD: dw $0000
#_80CDAF: dw ROUTINE_00D064
#_80CDB1: SEP #$20
#_80CDB3: LDA.w $068D
#_80CDB6: BEQ CODE_80CDDD
#_80CDB8: LDA.w $138B
#_80CDBB: BEQ CODE_80CDDD
#_80CDBD: STZ.w $138B
#_80CDC0: JSL ROUTINE_839951
#_80CDC4: JSL ROUTINE_838F39
#_80CDC8: REP #$20
#_80CDCA: LDA.w #$0006
#_80CDCD: STA.w $0804
#_80CDD0: LDA.w #$0000
#_80CDD3: STA.w $0806
#_80CDD6: LDA.w #$0000
#_80CDD9: STA.w $0808
#_80CDDC: RTS

CODE_80CDDD:
#_80CDDD: LDA.w $068C
#_80CDE0: BEQ CODE_80CDE5
#_80CDE2: JMP.w CODE_80CE25

CODE_80CDE5:
#_80CDE5: JSL ROUTINE_808628
#_80CDE9: JSL WaitForNMIWithFBlank
#_80CDED: REP #$20
#_80CDEF: STZ.b $E3
#_80CDF1: STZ.b $E5
#_80CDF3: STZ.b $E7
#_80CDF5: STZ.b $E9
#_80CDF7: STZ.b $EB
#_80CDF9: STZ.b $ED
#_80CDFB: JSL ROUTINE_839951
#_80CDFF: JSL ROUTINE_838F39
#_80CE03: SEP #$30
#_80CE05: LDA.w $0695
#_80CE08: BNE CODE_80CE19
#_80CE0A: LDA.w $0691
#_80CE0D: BNE CODE_80CE14
#_80CE0F: JSR ROUTINE_80CE60
#_80CE12: BRA CODE_80CE1C

CODE_80CE14:
#_80CE14: JSR ROUTINE_80CEBD
#_80CE17: BRA CODE_80CE1C

CODE_80CE19:
#_80CE19: JSR ROUTINE_80CF2B

CODE_80CE1C:
#_80CE1C: JSL WaitForNMIWithoutFBlank
#_80CE20: JSL ROUTINE_8085AA
#_80CE24: RTS

CODE_80CE25:
#_80CE25: LDA.b #$01
#_80CE27: STA.b $6B
#_80CE29: JSL ROUTINE_839951
#_80CE2D: JSL ROUTINE_838F39
#_80CE31: JSL ROUTINE_8398BF
#_80CE35: JSL ROUTINE_88C622
#_80CE39: JSL ROUTINE_83B9A3
#_80CE3D: JSR ROUTINE_80D0FC
#_80CE40: JSR ROUTINE_80D337
#_80CE43: JSL ROUTINE_83BADE
#_80CE47: JSL ROUTINE_85F8AB
#_80CE4B: REP #$20
#_80CE4D: LDA.w #$0001
#_80CE50: STA.w $0804
#_80CE53: LDA.w #$0000
#_80CE56: STA.w $0806
#_80CE59: LDA.w #$0000
#_80CE5C: STA.w $0808
#_80CE5F: RTS

;===================================================================================================

ROUTINE_80CE60:
#_80CE60: SEP #$20
#_80CE62: STZ.b $9C
#_80CE64: STZ.w HDMAEN
#_80CE67: LDA.b #$19
#_80CE69: STA.w BG1SC
#_80CE6C: STA.b $70
#_80CE6E: LDA.b #$69
#_80CE70: STA.w BG2SC
#_80CE73: STA.b $71
#_80CE75: LDA.b #$79
#_80CE77: STA.w BG3SC
#_80CE7A: STA.b $72
#_80CE7C: LDA.b #$50
#_80CE7E: STA.w BG12NBA
#_80CE81: STA.b $74
#_80CE83: LDA.b #$07
#_80CE85: STA.w BG34NBA
#_80CE88: STA.b $75
#_80CE8A: JSL ROUTINE_8398BF
#_80CE8E: JSL ROUTINE_88C622
#_80CE92: JSL ROUTINE_83903E
#_80CE96: JSL ROUTINE_83D901
#_80CE9A: JSL ROUTINE_83BADE
#_80CE9E: JSR ROUTINE_80D0FC
#_80CEA1: JSR ROUTINE_80D337
#_80CEA4: JSL ROUTINE_85F8AB
#_80CEA8: REP #$20
#_80CEAA: LDA.w #$0001
#_80CEAD: STA.w $0804
#_80CEB0: LDA.w #$0000
#_80CEB3: STA.w $0806
#_80CEB6: LDA.w #$0000
#_80CEB9: STA.w $0808
#_80CEBC: RTS

;===================================================================================================

ROUTINE_80CEBD:
#_80CEBD: SEP #$20
#_80CEBF: STZ.b $9C
#_80CEC1: STZ.w HDMAEN
#_80CEC4: LDA.b #$19
#_80CEC6: STA.w BG1SC
#_80CEC9: STA.b $70
#_80CECB: LDA.b #$69
#_80CECD: STA.w BG2SC
#_80CED0: STA.b $71
#_80CED2: LDA.b #$79
#_80CED4: STA.w BG3SC
#_80CED7: STA.b $72
#_80CED9: LDA.b #$50
#_80CEDB: STA.w BG12NBA
#_80CEDE: STA.b $74
#_80CEE0: LDA.b #$07
#_80CEE2: STA.w BG34NBA
#_80CEE5: STA.b $75
#_80CEE7: JSL ROUTINE_8398EF
#_80CEEB: JSL ROUTINE_88C622
#_80CEEF: SEP #$30
#_80CEF1: LDA.w $0691
#_80CEF4: BPL CODE_80CF00
#_80CEF6: JSL ROUTINE_8090E0
#_80CEFA: JSL ROUTINE_83955D
#_80CEFE: BRA CODE_80CF04

CODE_80CF00:
#_80CF00: JSL ROUTINE_83943E

CODE_80CF04:
#_80CF04: JSL ROUTINE_83A9D3
#_80CF08: JSL ROUTINE_83BADE
#_80CF0C: JSR ROUTINE_80D0FC
#_80CF0F: JSR ROUTINE_80D337
#_80CF12: JSL ROUTINE_85F8AB
#_80CF16: REP #$20
#_80CF18: LDA.w #$0001
#_80CF1B: STA.w $0804
#_80CF1E: LDA.w #$0000
#_80CF21: STA.w $0806
#_80CF24: LDA.w #$0000
#_80CF27: STA.w $0808
#_80CF2A: RTS

;===================================================================================================

ROUTINE_80CF2B:
#_80CF2B: SEP #$20
#_80CF2D: STZ.b $9C
#_80CF2F: STZ.w HDMAEN
#_80CF32: LDA.b #$19
#_80CF34: STA.w BG1SC
#_80CF37: STA.b $70
#_80CF39: LDA.b #$69
#_80CF3B: STA.w BG2SC
#_80CF3E: STA.b $71
#_80CF40: LDA.b #$40
#_80CF42: STA.w BG12NBA
#_80CF45: STA.b $74
#_80CF47: LDA.b #$07
#_80CF49: STA.w BG34NBA
#_80CF4C: STA.b $75
#_80CF4E: JSL ROUTINE_839923
#_80CF52: JSL ROUTINE_88C622
#_80CF56: JSL ROUTINE_8392F7
#_80CF5A: JSL ROUTINE_83D901
#_80CF5E: JSR ROUTINE_80D0FC
#_80CF61: JSR ROUTINE_80D337
#_80CF64: REP #$20
#_80CF66: LDA.w #$0005
#_80CF69: STA.w $0804
#_80CF6C: LDA.w #$0000
#_80CF6F: STA.w $0806
#_80CF72: LDA.w #$0000
#_80CF75: STA.w $0808
#_80CF78: RTS

;===================================================================================================

ROUTINE_80CF79:
#_80CF79: REP #$20
#_80CF7B: LDA.w $1328
#_80CF7E: BEQ CODE_80CF96
#_80CF80: DEC.w $132C
#_80CF83: BPL CODE_80CF96
#_80CF85: JSL ROUTINE_839FAE
#_80CF89: JSL ROUTINE_88CA77
#_80CF8D: REP #$20
#_80CF8F: LDA.w #$001C
#_80CF92: STA.l $000102

CODE_80CF96:
#_80CF96: LDA.w $1322
#_80CF99: BEQ CODE_80CFB4
#_80CF9B: DEC.w $1326
#_80CF9E: BPL CODE_80CFC4
#_80CFA0: JSL ROUTINE_839F65
#_80CFA4: JSL ROUTINE_88CA4E
#_80CFA8: REP #$20
#_80CFAA: LDA.w #$001C
#_80CFAD: STA.l $000102
#_80CFB1: LDA.w $1322

CODE_80CFB4:
#_80CFB4: ORA.w $1328
#_80CFB7: BNE CODE_80CFC4
#_80CFB9: JSL ROUTINE_83AA43
#_80CFBD: SEP #$20
#_80CFBF: LDA.b #$02
#_80CFC1: STA.w $0804

CODE_80CFC4:
#_80CFC4: JSL ROUTINE_88C69A
#_80CFC8: RTS

;===================================================================================================

ROUTINE_80CFC9:
#_80CFC9: SEP #$30
#_80CFCB: LDA.w $0695
#_80CFCE: BNE CODE_80CFDB
#_80CFD0: LDA.w $0691
#_80CFD3: BNE CODE_80CFE1
#_80CFD5: JSL ROUTINE_839BEC
#_80CFD9: BRA CODE_80CFE5

CODE_80CFDB:
#_80CFDB: JSL ROUTINE_839C23
#_80CFDF: BRA CODE_80CFE5

CODE_80CFE1:
#_80CFE1: JSL ROUTINE_839C6D

CODE_80CFE5:
#_80CFE5: SEP #$20
#_80CFE7: LDA.w $1330
#_80CFEA: ORA.w $1331
#_80CFED: BNE CODE_80CFF5
#_80CFEF: JSR ROUTINE_80D13B
#_80CFF2: JSR ROUTINE_80D0CD

CODE_80CFF5:
#_80CFF5: JSL ROUTINE_88C69A
#_80CFF9: JSL ROUTINE_88CAF8
#_80CFFD: RTS

;===================================================================================================

ROUTINE_80CFFE:
#_80CFFE: JSL ROUTINE_88CB0D
#_80D002: SEP #$20
#_80D004: LDA.w $068F
#_80D007: BEQ CODE_80D02F
#_80D009: LDA.w $138C
#_80D00C: BEQ CODE_80D02F
#_80D00E: REP #$20
#_80D010: LDA.b $AD
#_80D012: BIT.w #$9080
#_80D015: BEQ CODE_80D02F
#_80D017: LDA.w #$0002
#_80D01A: STA.l $000102
#_80D01E: SEP #$20
#_80D020: LDA.b #$FF
#_80D022: STA.w $1A97
#_80D025: LDA.b #$00
#_80D027: STA.w $0800
#_80D02A: LDA.b #$18
#_80D02C: STA.w $0802

CODE_80D02F:
#_80D02F: JSL ROUTINE_88CAF8
#_80D033: RTS

;===================================================================================================

ROUTINE_80D034:
#_80D034: JSL ROUTINE_88CB64
#_80D038: JSL ROUTINE_88CAF8
#_80D03C: RTS

;===================================================================================================

ROUTINE_80D03D:
#_80D03D: JSL ROUTINE_81D39A
#_80D041: RTS

;===================================================================================================

ROUTINE_80D042:
#_80D042: JSL ROUTINE_83CF39
#_80D046: RTS

;===================================================================================================

ROUTINE_80D047:
#_80D047: JSL ROUTINE_83D0B7
#_80D04B: RTS

;===================================================================================================

ROUTINE_80D04C:
#_80D04C: JSL ROUTINE_82AF7B
#_80D050: RTS

;===================================================================================================

ROUTINE_80D051:
#_80D051: JSL ROUTINE_83D0DC
#_80D055: RTS

;===================================================================================================

ROUTINE_80D056:
#_80D056: JSL ROUTINE_83D288
#_80D05A: JSL ROUTINE_8793A7
#_80D05E: RTS

;===================================================================================================

ROUTINE_80D05F:
#_80D05F: JSL ROUTINE_82C7B1
#_80D063: RTS

;===================================================================================================

ROUTINE_80D064:
#_80D064: JSL ROUTINE_88CC3D
#_80D068: JSL ROUTINE_88C69A
#_80D06C: REP #$20
#_80D06E: SEP #$10
#_80D070: LDA.b $AD
#_80D072: LDX.w $0691
#_80D075: BEQ CODE_80D079
#_80D077: ORA.b $AF

CODE_80D079:
#_80D079: BIT.w #$1000
#_80D07C: BEQ CODE_80D08C
#_80D07E: LDA.w #$0002
#_80D081: STA.l $000106
#_80D085: SEP #$20
#_80D087: LDA.b #$02
#_80D089: STA.w $0804

CODE_80D08C:
#_80D08C: RTS

;===================================================================================================

ROUTINE_80D08D:
#_80D08D: REP #$20
#_80D08F: LDA.b $A5
#_80D091: BIT.w #$2000
#_80D094: BEQ CODE_80D09D
#_80D096: LDA.b $AD
#_80D098: BIT.w #$1000
#_80D09B: BNE CODE_80D0AB

CODE_80D09D:
#_80D09D: LDA.b $A5
#_80D09F: BIT.w #$1000
#_80D0A2: BEQ CODE_80D0CB
#_80D0A4: LDA.b $AD
#_80D0A6: BIT.w #$2000
#_80D0A9: BEQ CODE_80D0CB

CODE_80D0AB:
#_80D0AB: LDA.w #$0002
#_80D0AE: STA.l $000106
#_80D0B2: LDA.w #$FFFF
#_80D0B5: STA.l $000102
#_80D0B9: LDA.w #$0000
#_80D0BC: STA.w $0800
#_80D0BF: LDA.w #$0002
#_80D0C2: STA.w $0802
#_80D0C5: JSL ROUTINE_80857D
#_80D0C9: SEC
#_80D0CA: RTS

CODE_80D0CB:
#_80D0CB: CLC
#_80D0CC: RTS

;===================================================================================================

ROUTINE_80D0CD:
#_80D0CD: SEP #$30
#_80D0CF: LDA.w $0693
#_80D0D2: ORA.w $0695
#_80D0D5: BNE CODE_80D0FB
#_80D0D7: REP #$20
#_80D0D9: LDA.b $AD
#_80D0DB: LDX.w $0691
#_80D0DE: BEQ CODE_80D0E2
#_80D0E0: ORA.b $AF

CODE_80D0E2:
#_80D0E2: BIT.w #$1000
#_80D0E5: BEQ CODE_80D0FB
#_80D0E7: LDA.w #$0001
#_80D0EA: STA.l $000106
#_80D0EE: SEP #$20
#_80D0F0: LDA.b #$03
#_80D0F2: JSL ROUTINE_80D4AE
#_80D0F6: LDA.b #$0F
#_80D0F8: STA.w $0804

CODE_80D0FB:
#_80D0FB: RTS

;===================================================================================================

ROUTINE_80D0FC:
#_80D0FC: JSL ROUTINE_80D4DA
#_80D100: REP #$30
#_80D102: PHB
#_80D103: LDX.w #Graphics_9FD800
#_80D106: LDY.w #$5000
#_80D109: LDA.w #$03FF
#_80D10C: MVN $7E,$9F
#_80D10F: PLB
#_80D110: JSR ROUTINE_80D3A0
#_80D113: STZ.w $12F3
#_80D116: STZ.w $12F7
#_80D119: STZ.w $12FB
#_80D11C: STZ.w $12FF
#_80D11F: SEP #$20
#_80D121: STZ.w $12F1
#_80D124: STZ.w $12F2
#_80D127: STZ.w $12F6
#_80D12A: STZ.w $12F9
#_80D12D: STZ.w $12FA
#_80D130: STZ.w $12FD
#_80D133: STZ.w $12FE
#_80D136: LDA.b #$04
#_80D138: STA.w $12F5

ROUTINE_80D13B:
#_80D13B: SEP #$30
#_80D13D: LDA.b #$01
#_80D13F: JSL ROUTINE_80D4AE
#_80D143: DEC.w $12F2
#_80D146: BPL CODE_80D192
#_80D148: LDA.w $12E7
#_80D14B: ASL A
#_80D14C: ASL A
#_80D14D: ASL A
#_80D14E: ADC.w $12F1
#_80D151: TAX
#_80D152: LDA.l UNREACH_80D2AD,X
#_80D156: STA.w $12F2
#_80D159: LDA.l UNREACH_80D2E5,X
#_80D15D: STA.w $12F3
#_80D160: STZ.w $12F4
#_80D163: LDA.w $12F1
#_80D166: CLC
#_80D167: ADC.b #$01
#_80D169: AND.b #$07
#_80D16B: STA.w $12F1
#_80D16E: REP #$30
#_80D170: PHB
#_80D171: LDY.w $12F3
#_80D174: LDA.w UNREACH_80D263,Y
#_80D177: STA.b $12
#_80D179: ORA.w #$0040
#_80D17C: TAX
#_80D17D: LDY.w #$5200
#_80D180: LDA.w #$003F
#_80D183: MVN $7E,$9F
#_80D186: LDX.b $12
#_80D188: LDY.w #$5000
#_80D18B: LDA.w #$003F
#_80D18E: MVN $7E,$9F
#_80D191: PLB

CODE_80D192:
#_80D192: SEP #$30
#_80D194: DEC.w $12F6
#_80D197: BPL CODE_80D1E6
#_80D199: LDA.w $12E9
#_80D19C: ASL A
#_80D19D: ASL A
#_80D19E: ASL A
#_80D19F: ADC.w $12F5
#_80D1A2: TAX
#_80D1A3: LDA.l UNREACH_80D2AD,X
#_80D1A7: STA.w $12F6
#_80D1AA: LDA.l UNREACH_80D2E5,X
#_80D1AE: STA.w $12F7
#_80D1B1: STZ.w $12F8
#_80D1B4: LDA.w $12F5
#_80D1B7: CLC
#_80D1B8: ADC.b #$01
#_80D1BA: AND.b #$07
#_80D1BC: STA.w $12F5
#_80D1BF: REP #$30
#_80D1C1: PHB
#_80D1C2: LDY.w $12F7
#_80D1C5: LDA.w UNREACH_80D263,Y
#_80D1C8: ORA.w #$0080
#_80D1CB: STA.b $12
#_80D1CD: ORA.w #$0040
#_80D1D0: TAX
#_80D1D1: LDY.w #$5240
#_80D1D4: LDA.w #$003F
#_80D1D7: MVN $7E,$9F
#_80D1DA: LDX.b $12
#_80D1DC: LDY.w #$5040
#_80D1DF: LDA.w #$003F
#_80D1E2: MVN $7E,$9F
#_80D1E5: PLB

CODE_80D1E6:
#_80D1E6: SEP #$30
#_80D1E8: LDA.w $12FA
#_80D1EB: BPL CODE_80D219
#_80D1ED: LDX.w $12F9
#_80D1F0: LDA.b #$08
#_80D1F2: STA.w $12FA
#_80D1F5: LDA.l UNREACH_80D321,X
#_80D1F9: STA.w $12FB
#_80D1FC: STZ.w $12FC
#_80D1FF: INX
#_80D200: TXA
#_80D201: AND.b #$01
#_80D203: STA.w $12F9
#_80D206: REP #$30
#_80D208: PHB
#_80D209: LDY.w $12FB
#_80D20C: LDX.w UNREACH_80D31D,Y
#_80D20F: LDY.w #$5100
#_80D212: LDA.w #$007F
#_80D215: MVN $7E,$9F
#_80D218: PLB

CODE_80D219:
#_80D219: SEP #$30
#_80D21B: DEC.w $12FE
#_80D21E: BPL CODE_80D262
#_80D220: LDX.w $12FD
#_80D223: LDA.l UNREACH_80D32D,X
#_80D227: STA.w $12FE
#_80D22A: LDA.l UNREACH_80D332,X
#_80D22E: STA.w $12FF
#_80D231: STZ.w $1300
#_80D234: INX
#_80D235: CPX.b #$05
#_80D237: BCC CODE_80D23B
#_80D239: LDX.b #$00

CODE_80D23B:
#_80D23B: STX.w $12FD
#_80D23E: REP #$30
#_80D240: PHB
#_80D241: LDY.w $12FF
#_80D244: LDA.w UNREACH_80D323,Y
#_80D247: STA.b $12
#_80D249: ORA.w #$0200
#_80D24C: TAX
#_80D24D: LDY.w #$5380
#_80D250: LDA.w #$007F
#_80D253: MVN $7E,$9F
#_80D256: LDX.b $12
#_80D258: LDY.w #$5180
#_80D25B: LDA.w #$007F
#_80D25E: MVN $7E,$9F
#_80D261: PLB

CODE_80D262:
#_80D262: RTS

UNREACH_80D263:
#_80D263: db $00,$80,$00,$82,$00,$84,$00,$86
#_80D26B: db $00,$88,$00,$81,$00,$83,$00,$85
#_80D273: db $00,$87,$00,$89,$00,$8A,$00,$8C
#_80D27B: db $00,$8E,$00,$90,$00,$92,$00,$A0
#_80D283: db $00,$A2,$00,$A4,$00,$A6,$00,$A8
#_80D28B: db $00,$AA,$00,$AC,$00,$94,$00,$96
#_80D293: db $00,$98,$00,$9A,$00,$9C,$00,$95
#_80D29B: db $00,$97,$00,$99,$00,$9B,$00,$9D
#_80D2A3: db $00,$8B,$00,$8D,$00,$8F,$00,$91
#_80D2AB: db $00,$93

UNREACH_80D2AD:
#_80D2AD: db $08,$08,$08,$08,$08,$08,$08,$08
#_80D2B5: db $06,$06,$05,$04,$03,$04,$05,$06
#_80D2BD: db $08,$08,$08,$08,$08,$08,$08,$08
#_80D2C5: db $16,$06,$06,$06,$16,$06,$06,$06
#_80D2CD: db $08,$08,$08,$08,$08,$08,$08,$08
#_80D2D5: db $07,$07,$07,$07,$07,$07,$07,$07
#_80D2DD: db $16,$06,$06,$06,$16,$06,$06,$06

UNREACH_80D2E5:
#_80D2E5: db $00,$02,$04,$06,$08,$06,$04,$02
#_80D2ED: db $0A,$0C,$0E,$10,$12,$10,$0E,$0C
#_80D2F5: db $14,$16,$18,$1A,$1C,$1A,$18,$16
#_80D2FD: db $1E,$20,$22,$24,$26,$28,$22,$2A
#_80D305: db $2C,$2E,$30,$32,$34,$2E,$30,$32
#_80D30D: db $36,$38,$3A,$3C,$3E,$3C,$3A,$38
#_80D315: db $40,$42,$44,$46,$48,$42,$44,$46

UNREACH_80D31D:
#_80D31D: db $00,$9E,$80,$9E

UNREACH_80D321:
#_80D321: db $00,$02

UNREACH_80D323:
#_80D323: db $80,$D9,$00,$A9,$80,$A9,$00,$AD
#_80D32B: db $80,$AD

UNREACH_80D32D:
#_80D32D: db $60,$04,$04,$04,$04

UNREACH_80D332:
#_80D332: db $00,$02,$04,$06,$08

;===================================================================================================

ROUTINE_80D337:
#_80D337: SEP #$30
#_80D339: LDX.w $0200
#_80D33C: LDA.b #$02
#_80D33E: STA.w $0140,X
#_80D341: STA.w $0149,X
#_80D344: LDA.b #$9F
#_80D346: STA.w $0143,X
#_80D349: STA.w $014C,X
#_80D34C: LDA.b #$80
#_80D34E: STA.w $0146,X
#_80D351: STA.w $014F,X
#_80D354: LDA.w $12E9
#_80D357: ASL A
#_80D358: PHA
#_80D359: LDA.w $12E7
#_80D35C: ASL A
#_80D35D: TAY
#_80D35E: REP #$20
#_80D360: LDA.w UNREACH_80D392,Y
#_80D363: STA.w $0141,X
#_80D366: PLY
#_80D367: LDA.w UNREACH_80D392,Y
#_80D36A: ORA.w #$0100
#_80D36D: STA.w $014A,X
#_80D370: LDA.w #$0100
#_80D373: STA.w $0144,X
#_80D376: STA.w $014D,X
#_80D379: LDA.w #$0A00
#_80D37C: STA.w $0147,X
#_80D37F: LDA.w #$0B00
#_80D382: STA.w $0150,X
#_80D385: SEP #$20
#_80D387: TXA
#_80D388: CLC
#_80D389: ADC.b #$12
#_80D38B: STA.w $0200
#_80D38E: STZ.w $0152,X
#_80D391: RTS

UNREACH_80D392:
#_80D392: db $00,$B0,$00,$B2,$00,$B4,$00,$BC
#_80D39A: db $00,$B8,$00,$BA,$00,$B6

;===================================================================================================

ROUTINE_80D3A0:
#_80D3A0: PHP
#_80D3A1: PHB
#_80D3A2: PHK
#_80D3A3: PLB
#_80D3A4: REP #$30
#_80D3A6: LDA.w $12E7
#_80D3A9: ASL A
#_80D3AA: TAY
#_80D3AB: LDA.w DATA16_80D3F6,Y
#_80D3AE: STA.b $12
#_80D3B0: ORA.w #$0040
#_80D3B3: STA.b $14
#_80D3B5: LDA.w $12E9
#_80D3B8: ASL A
#_80D3B9: TAY
#_80D3BA: LDA.w DATA16_80D3F6,Y
#_80D3BD: ORA.w #$0200
#_80D3C0: STA.b $16
#_80D3C2: ORA.w #$0040
#_80D3C5: STA.b $18
#_80D3C7: LDX.b $12
#_80D3C9: LDY.w #$5080
#_80D3CC: LDA.w #$003F
#_80D3CF: MVN $7E,$9F
#_80D3D2: LDX.b $14
#_80D3D4: LDY.w #$5280
#_80D3D7: LDA.w #$003F
#_80D3DA: MVN $7E,$9F
#_80D3DD: LDX.b $16
#_80D3DF: LDY.w #$50C0
#_80D3E2: LDA.w #$003F
#_80D3E5: MVN $7E,$9F
#_80D3E8: LDX.b $18
#_80D3EA: LDY.w #$52C0
#_80D3ED: LDA.w #$003F
#_80D3F0: MVN $7E,$9F
#_80D3F3: PLB
#_80D3F4: PLP
#_80D3F5: RTS

DATA16_80D3F6:
#_80D3F6: dw $E000,$E080,$E100,$E500
#_80D3FE: dw $E400,$E480,$E180

;===================================================================================================

ROUTINE_80D404:
#_80D404: PHP
#_80D405: PHB
#_80D406: PHK
#_80D407: PLB
#_80D408: LDA.b #$02
#_80D40A: JSL ROUTINE_80D4AE
#_80D40E: SEP #$30
#_80D410: LDX.w $11E7
#_80D413: LDA.l UNREACH_80D4A9,X
#_80D417: STA.w $11E6
#_80D41A: BEQ CODE_80D496
#_80D41C: REP #$30
#_80D41E: PHB
#_80D41F: LDA.w $11E7
#_80D422: ASL A
#_80D423: TAX
#_80D424: LDA.l UNREACH_80D499,X
#_80D428: STA.b $26
#_80D42A: ORA.w #$0200
#_80D42D: STA.b $28
#_80D42F: LDA.l UNREACH_80D4A1,X
#_80D433: STA.b $2A
#_80D435: ORA.w #$0200
#_80D438: STA.b $2C
#_80D43A: LDX.b $26
#_80D43C: LDY.w #$5100
#_80D43F: LDA.w #$003F
#_80D442: MVN $7E,$9F
#_80D445: LDX.b $28
#_80D447: LDY.w #$5300
#_80D44A: LDA.w #$003F
#_80D44D: MVN $7E,$9F
#_80D450: LDX.b $2A
#_80D452: LDY.w #$5140
#_80D455: LDA.w #$003F
#_80D458: MVN $7E,$9F
#_80D45B: LDX.b $2C
#_80D45D: LDY.w #$5340
#_80D460: LDA.w #$003F
#_80D463: MVN $7E,$9F
#_80D466: LDX.b $26
#_80D468: LDY.w #$5180
#_80D46B: LDA.w #$003F
#_80D46E: MVN $7E,$9F
#_80D471: LDX.b $28
#_80D473: LDY.w #$5380
#_80D476: LDA.w #$003F
#_80D479: MVN $7E,$9F
#_80D47C: LDX.b $2A
#_80D47E: LDY.w #$51C0
#_80D481: LDA.w #$003F
#_80D484: MVN $7E,$9F
#_80D487: LDX.b $2C
#_80D489: LDY.w #$53C0
#_80D48C: LDA.w #$003F
#_80D48F: MVN $7E,$9F
#_80D492: PLB
#_80D493: INC.w $11E7

CODE_80D496:
#_80D496: PLB
#_80D497: PLP
#_80D498: RTL

UNREACH_80D499:
#_80D499: db $00,$A1,$40,$A1,$80,$A1,$C0,$A1

UNREACH_80D4A1:
#_80D4A1: db $00,$A5,$40,$A5,$80,$A5,$C0,$A5

UNREACH_80D4A9:
#_80D4A9: db $06,$06,$06,$06,$00

;===================================================================================================

ROUTINE_80D4AE:
#_80D4AE: PHP
#_80D4AF: PHB
#_80D4B0: PHK
#_80D4B1: PLB
#_80D4B2: SEP #$30
#_80D4B4: ASL A
#_80D4B5: TAX
#_80D4B6: JSR.w (PTR16_80D4BC,X)

ROUTINE_80D4B9:
#_80D4B9: PLB
#_80D4BA: PLP
#_80D4BB: RTL

PTR16_80D4BC:
#_80D4BC: dw ROUTINE_80D4B9
#_80D4BE: dw ROUTINE_80D4E8
#_80D4C0: dw ROUTINE_80D51B
#_80D4C2: dw ROUTINE_80D54E
#_80D4C4: dw ROUTINE_80D581
#_80D4C6: dw ROUTINE_80D5B4
#_80D4C8: dw ROUTINE_80D5E7
#_80D4CA: dw ROUTINE_80D61A
#_80D4CC: dw ROUTINE_80D64D
#_80D4CE: dw ROUTINE_80D680
#_80D4D0: dw ROUTINE_80D6B3
#_80D4D2: dw ROUTINE_80D6E6
#_80D4D4: dw ROUTINE_80D719
#_80D4D6: dw ROUTINE_80D74C
#_80D4D8: dw ROUTINE_80D77F

;===================================================================================================

ROUTINE_80D4DA:
#_80D4DA: JSR ROUTINE_80D4E8
#_80D4DD: REP #$20
#_80D4DF: SEP #$10
#_80D4E1: LDA.w #$0400
#_80D4E4: STA.w $0144,X
#_80D4E7: RTL

;===================================================================================================

ROUTINE_80D4E8:
#_80D4E8: SEP #$30
#_80D4EA: LDX.w $0200
#_80D4ED: LDA.b #$02
#_80D4EF: STA.w $0140,X
#_80D4F2: LDA.b #$7E
#_80D4F4: STA.w $0143,X
#_80D4F7: LDA.b #$80
#_80D4F9: STA.w $0146,X
#_80D4FC: STZ.w $0149,X
#_80D4FF: TXA
#_80D500: CLC
#_80D501: ADC.b #$09
#_80D503: STA.w $0200
#_80D506: REP #$20
#_80D508: LDA.w #$5000
#_80D50B: STA.w $0141,X
#_80D50E: LDA.w #$0300
#_80D511: STA.w $0144,X
#_80D514: LDA.w #$2000
#_80D517: STA.w $0147,X
#_80D51A: RTS

;===================================================================================================

ROUTINE_80D51B:
#_80D51B: SEP #$30
#_80D51D: LDX.w $0200
#_80D520: LDA.b #$02
#_80D522: STA.w $0140,X
#_80D525: LDA.b #$7E
#_80D527: STA.w $0143,X
#_80D52A: LDA.b #$80
#_80D52C: STA.w $0146,X
#_80D52F: STZ.w $0149,X
#_80D532: TXA
#_80D533: CLC
#_80D534: ADC.b #$09
#_80D536: STA.w $0200
#_80D539: REP #$20
#_80D53B: LDA.w #$5100
#_80D53E: STA.w $0141,X
#_80D541: LDA.w #$0300
#_80D544: STA.w $0144,X
#_80D547: LDA.w #$2080
#_80D54A: STA.w $0147,X
#_80D54D: RTS

;===================================================================================================

ROUTINE_80D54E:
#_80D54E: SEP #$30
#_80D550: LDX.w $0200
#_80D553: LDA.b #$02
#_80D555: STA.w $0140,X
#_80D558: LDA.b #$9F
#_80D55A: STA.w $0143,X
#_80D55D: LDA.b #$80
#_80D55F: STA.w $0146,X
#_80D562: STZ.w $0149,X
#_80D565: TXA
#_80D566: CLC
#_80D567: ADC.b #$09
#_80D569: STA.w $0200
#_80D56C: REP #$20
#_80D56E: LDA.w #$C000
#_80D571: STA.w $0141,X
#_80D574: LDA.w #$0400
#_80D577: STA.w $0144,X
#_80D57A: LDA.w #$2600
#_80D57D: STA.w $0147,X
#_80D580: RTS

;===================================================================================================

ROUTINE_80D581:
#_80D581: SEP #$30
#_80D583: LDX.w $0200
#_80D586: LDA.b #$02
#_80D588: STA.w $0140,X
#_80D58B: LDA.b #$9F
#_80D58D: STA.w $0143,X
#_80D590: LDA.b #$80
#_80D592: STA.w $0146,X
#_80D595: STZ.w $0149,X
#_80D598: TXA
#_80D599: CLC
#_80D59A: ADC.b #$09
#_80D59C: STA.w $0200
#_80D59F: REP #$20
#_80D5A1: LDA.w #$C400
#_80D5A4: STA.w $0141,X
#_80D5A7: LDA.w #$0400
#_80D5AA: STA.w $0144,X
#_80D5AD: LDA.w #$2600
#_80D5B0: STA.w $0147,X
#_80D5B3: RTS

;===================================================================================================

ROUTINE_80D5B4:
#_80D5B4: SEP #$30
#_80D5B6: LDX.w $0200
#_80D5B9: LDA.b #$02
#_80D5BB: STA.w $0140,X
#_80D5BE: LDA.b #$9F
#_80D5C0: STA.w $0143,X
#_80D5C3: LDA.b #$80
#_80D5C5: STA.w $0146,X
#_80D5C8: STZ.w $0149,X
#_80D5CB: TXA
#_80D5CC: CLC
#_80D5CD: ADC.b #$09
#_80D5CF: STA.w $0200
#_80D5D2: REP #$20
#_80D5D4: LDA.w #$C800
#_80D5D7: STA.w $0141,X
#_80D5DA: LDA.w #$0400
#_80D5DD: STA.w $0144,X
#_80D5E0: LDA.w #$2600
#_80D5E3: STA.w $0147,X
#_80D5E6: RTS

;===================================================================================================

ROUTINE_80D5E7:
#_80D5E7: SEP #$30
#_80D5E9: LDX.w $0200
#_80D5EC: LDA.b #$02
#_80D5EE: STA.w $0140,X
#_80D5F1: LDA.b #$9F
#_80D5F3: STA.w $0143,X
#_80D5F6: LDA.b #$80
#_80D5F8: STA.w $0146,X
#_80D5FB: STZ.w $0149,X
#_80D5FE: TXA
#_80D5FF: CLC
#_80D600: ADC.b #$09
#_80D602: STA.w $0200
#_80D605: REP #$20
#_80D607: LDA.w #$CC00
#_80D60A: STA.w $0141,X
#_80D60D: LDA.w #$0400
#_80D610: STA.w $0144,X
#_80D613: LDA.w #$2600
#_80D616: STA.w $0147,X
#_80D619: RTS

;===================================================================================================

ROUTINE_80D61A:
#_80D61A: SEP #$30
#_80D61C: LDX.w $0200
#_80D61F: LDA.b #$02
#_80D621: STA.w $0140,X
#_80D624: LDA.b #$9F
#_80D626: STA.w $0143,X
#_80D629: LDA.b #$80
#_80D62B: STA.w $0146,X
#_80D62E: STZ.w $0149,X
#_80D631: TXA
#_80D632: CLC
#_80D633: ADC.b #$09
#_80D635: STA.w $0200
#_80D638: REP #$20
#_80D63A: LDA.w #$D000
#_80D63D: STA.w $0141,X
#_80D640: LDA.w #$0400
#_80D643: STA.w $0144,X
#_80D646: LDA.w #$2600
#_80D649: STA.w $0147,X
#_80D64C: RTS

;===================================================================================================

ROUTINE_80D64D:
#_80D64D: SEP #$30
#_80D64F: LDX.w $0200
#_80D652: LDA.b #$02
#_80D654: STA.w $0140,X
#_80D657: LDA.b #$9F
#_80D659: STA.w $0143,X
#_80D65C: LDA.b #$80
#_80D65E: STA.w $0146,X
#_80D661: STZ.w $0149,X
#_80D664: TXA
#_80D665: CLC
#_80D666: ADC.b #$09
#_80D668: STA.w $0200
#_80D66B: REP #$20
#_80D66D: LDA.w #$E800
#_80D670: STA.w $0141,X
#_80D673: LDA.w #$0800
#_80D676: STA.w $0144,X
#_80D679: LDA.w #$2000
#_80D67C: STA.w $0147,X
#_80D67F: RTS

;===================================================================================================

ROUTINE_80D680:
#_80D680: SEP #$30
#_80D682: LDX.w $0200
#_80D685: LDA.b #$02
#_80D687: STA.w $0140,X
#_80D68A: LDA.b #$9F
#_80D68C: STA.w $0143,X
#_80D68F: LDA.b #$80
#_80D691: STA.w $0146,X
#_80D694: STZ.w $0149,X
#_80D697: TXA
#_80D698: CLC
#_80D699: ADC.b #$09
#_80D69B: STA.w $0200
#_80D69E: REP #$20
#_80D6A0: LDA.w #$F000
#_80D6A3: STA.w $0141,X
#_80D6A6: LDA.w #$0400
#_80D6A9: STA.w $0144,X
#_80D6AC: LDA.w #$2400
#_80D6AF: STA.w $0147,X
#_80D6B2: RTS

;===================================================================================================

ROUTINE_80D6B3:
#_80D6B3: SEP #$30
#_80D6B5: LDX.w $0200
#_80D6B8: LDA.b #$02
#_80D6BA: STA.w $0140,X
#_80D6BD: LDA.b #$9F
#_80D6BF: STA.w $0143,X
#_80D6C2: LDA.b #$80
#_80D6C4: STA.w $0146,X
#_80D6C7: STZ.w $0149,X
#_80D6CA: TXA
#_80D6CB: CLC
#_80D6CC: ADC.b #$09
#_80D6CE: STA.w $0200
#_80D6D1: REP #$20
#_80D6D3: LDA.w #$F400
#_80D6D6: STA.w $0141,X
#_80D6D9: LDA.w #$0400
#_80D6DC: STA.w $0144,X
#_80D6DF: LDA.w #$2400
#_80D6E2: STA.w $0147,X
#_80D6E5: RTS

;===================================================================================================

ROUTINE_80D6E6:
#_80D6E6: SEP #$30
#_80D6E8: LDX.w $0200
#_80D6EB: LDA.b #$02
#_80D6ED: STA.w $0140,X
#_80D6F0: LDA.b #$9F
#_80D6F2: STA.w $0143,X
#_80D6F5: LDA.b #$80
#_80D6F7: STA.w $0146,X
#_80D6FA: STZ.w $0149,X
#_80D6FD: TXA
#_80D6FE: CLC
#_80D6FF: ADC.b #$09
#_80D701: STA.w $0200
#_80D704: REP #$20
#_80D706: LDA.w #$F800
#_80D709: STA.w $0141,X
#_80D70C: LDA.w #$0400
#_80D70F: STA.w $0144,X
#_80D712: LDA.w #$2400
#_80D715: STA.w $0147,X
#_80D718: RTS

;===================================================================================================

ROUTINE_80D719:
#_80D719: SEP #$30
#_80D71B: LDX.w $0200
#_80D71E: LDA.b #$02
#_80D720: STA.w $0140,X
#_80D723: LDA.b #$9F
#_80D725: STA.w $0143,X
#_80D728: LDA.b #$80
#_80D72A: STA.w $0146,X
#_80D72D: STZ.w $0149,X
#_80D730: TXA
#_80D731: CLC
#_80D732: ADC.b #$09
#_80D734: STA.w $0200
#_80D737: REP #$20
#_80D739: LDA.w #$FC00
#_80D73C: STA.w $0141,X
#_80D73F: LDA.w #$0400
#_80D742: STA.w $0144,X
#_80D745: LDA.w #$2400
#_80D748: STA.w $0147,X
#_80D74B: RTS

;===================================================================================================

ROUTINE_80D74C:
#_80D74C: SEP #$30
#_80D74E: LDX.w $0200
#_80D751: LDA.b #$02
#_80D753: STA.w $0140,X
#_80D756: LDA.b #$9F
#_80D758: STA.w $0143,X
#_80D75B: LDA.b #$80
#_80D75D: STA.w $0146,X
#_80D760: STZ.w $0149,X
#_80D763: TXA
#_80D764: CLC
#_80D765: ADC.b #$09
#_80D767: STA.w $0200
#_80D76A: REP #$20
#_80D76C: LDA.w #$DC00
#_80D76F: STA.w $0141,X
#_80D772: LDA.w #$0400
#_80D775: STA.w $0144,X
#_80D778: LDA.w #$2400
#_80D77B: STA.w $0147,X
#_80D77E: RTS

;===================================================================================================

ROUTINE_80D77F:
#_80D77F: SEP #$30
#_80D781: LDX.w $0200
#_80D784: LDA.b #$02
#_80D786: STA.w $0140,X
#_80D789: LDA.b #$7F
#_80D78B: STA.w $0143,X
#_80D78E: LDA.b #$80
#_80D790: STA.w $0146,X
#_80D793: STZ.w $0149,X
#_80D796: TXA
#_80D797: CLC
#_80D798: ADC.b #$09
#_80D79A: STA.w $0200
#_80D79D: REP #$20
#_80D79F: LDA.w #$E400
#_80D7A2: STA.w $0141,X
#_80D7A5: LDA.w #$0800
#_80D7A8: STA.w $0144,X
#_80D7AB: LDA.w #$2200
#_80D7AE: STA.w $0147,X
#_80D7B1: RTS

;===================================================================================================
; FREE ROM
;===================================================================================================

padbyte $FF : pad $80FFB0

;===================================================================================================

InternalROMHeader
#_80FFB0: db "0165  "

#_80FFB6: db $00, $00, $00, $00, $00, $00, $00, $00
#_80FFBE: db $00, $00

#_80FFC0: db "WARIO'S WOODS        "

#_80FFD5: db $30 ; ROM mapping: lorom, fastrom
#_80FFD6: db $02 ; Cartridge: ROM+RAM+battery
#_80FFD7: db $0A ; ROM size: 1MB
#_80FFD8: db $03 ; RAM size: 8kB

#_80FFD9: db $01 ; Region: USA (U)
#_80FFDA: db $33 ; Header type: v3
#_80FFDB: db $00 ; Version: 1.0

#_80FFDC: dw $BDB9 ; complement
#_80FFDE: dw $4246 ; checksum

#_80FFE0: dw $FFFF
#_80FFE2: dw $FFFF
#_80FFE4: dw Interrupt_COP
#_80FFE6: dw Interrupt_BRK
#_80FFE8: dw $FFFF
#_80FFEA: dw Interrupt_NMI
#_80FFEC: dw $FFFF
#_80FFEE: dw Interrupt_IRQ

#_80FFF0: dw $FFFF
#_80FFF2: dw $FFFF
#_80FFF4: dw $FFFF
#_80FFF6: dw $FFFF
#_80FFF8: dw $FFFF
#_80FFFA: dw $FFFF
#_80FFFC: dw Reset
#_80FFFE: dw $FFFF

;===================================================================================================
