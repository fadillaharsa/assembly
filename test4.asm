.MODEL small
.CODE
ORG 100h

proses:
	jmp tambah			;loncat ke tambah
	teks db '1+2 = $'	;isi variabel teks -> 1+2=
	angka1 db 31h		;isi variabel angka1 -> 31h=1
	angka2 db 2			;isi variabe; angka2 -> 2

tambah:
	mov AH,09H		;untuk cetak kalimat
	lea dx,teks		;pindahkan teks ke register DX
	int 21h			;interupsi (cetak yang ada di DX)
	
	mov al,angka1	;angka1 (31h=1) ke register AL
	add al,angka2	;tambahkan angka2 (2) ke register AL (1+2=3)
	
	mov ah, 02H		;untuk mencetak karakter
	mov dl, al		;copy isi AL(3) ke register DL
	int 21h			; interupsi (cetak yang ada di register DL)
	int 20h

end proses