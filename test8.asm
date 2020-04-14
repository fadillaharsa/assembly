.MODEL SMALL
.CODE
ORG 100h

proses:
	jmp bagi			;deklarasi terhubung ke bagi/ lompat ke bagi
	teks db '10/2 = $'	;output string dalam tanda petik
	angka1 db 10		;deklarasi angka1 yakni 10
	angka2 db 2			;deklarasi angka2 yakni 2
	hasil db ?			; deklarasi hasil yang nilainya masih belum diketahui

bagi:
	mov al, angka1		;memindahkan nilai pada angka1 ke al
	div angka2			;membagi nilai sebelumnya (al) dengan nilai pada angka2
	
	mov hasil,al

	mov ah,09H
	lea dx,teks
	int 21H
	
	mov ah,02H
	mov dl, hasil
	add dl, 30H
	int 21H
	
	int 20H

end proses