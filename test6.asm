.MODEL small
.CODE
ORG 100h

proses:
	jmp kali			;loncat ke kurang
	teks db '3*2 = $'	;isi variabel teks -> 5-2=
	angka1 db 3		;isi variabel angka1 -> 35h=5
	angka2 db 2			;isi variabe; angka2 -> 2

kali:
	mov al, angka1
	mul angka2
	
	mov AH,09H
	lea dx,teks		;pindahkan teks ke register DX
	int 21h			;interupsi (cetak yang ada di DX)
	
	mov AH,02H
	mov dl,al
	
	add dl,30h
	int 21h			; interupsi (cetak yang ada di register DL)
	int 20h

end proses