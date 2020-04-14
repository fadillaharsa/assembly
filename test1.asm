;Cetak Karakter
.MODEL SMALL
.CODE
ORG 100H

PROSES:

MOV AH, 02H
MOV DL, 'H'	; DL=H

	INT 21H		; Eksekusi DL
	INT 20H		; mengakhiri program

END PROSES