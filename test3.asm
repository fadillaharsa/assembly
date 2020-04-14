;Cetak Huruf Increment/Looping
.MODEL SMALL
.CODE
ORG 100H

Proses :
	MOV AH, 02h
	MOV DL, 41h
	MOV CX, 50

Ulang:
	INT 21h
	INC DL
	LOOP ULANG
	INT 20h

END Proses