;Cetak Kalimat
.MODEL SMALL
.CODE
ORG 100H

Start :
JMP Prosess		; Lompat ke proses
Kal DB 'Cetak Kalimat Assembly$'

Prosess :
	MOV AH,9h		; Nilai servis untuk mencetak kalimat
	LEA DX, Kal		; DX=Kal
	INT 21h			; Eksekusi
	INT 20h			; mengakhiri program

END Start