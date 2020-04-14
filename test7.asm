.MODEL small
.CODE
ORG 100h

proses:
	jmp tambah			;deklarasi terhubung ke tambah/ lompat ke tambah
	teks1 db '4+2 = $'	;deklarasi teks1=output string dalam tanda kutip
	angka1 db 34h		;deklarasi angka1/ isi variabel angka1 = 34h = 4
	angka2 db 2			;deklarasi angka2/ isi variabel angka2 = 2
	
	jmp loncat			;deklarasi terhubung ke loncat/ lompat ke loncat
	
	jmp kurang			;deklarasi terhubung ke kurang/ lompat ke kurang
	teks2 db '4-2 = $'	;deklarasi teks1=output string dalam tanda kutip
	angka3 db 34h		;deklarasi angka3/ isi variabel angka3 = 34h = 4
	angka4 db 2			;deklarasi angka4/ isi variabel angka4 = 2
	
	jmp loncat2			;deklarasi terhubung ke loncat2/ lompat ke loncat2

	jmp kali			;deklarasi terhubung ke kali/ lompat ke kali
	teks3 db '4*2 = $'	;deklarasi teks1=output string dalam tanda kutip
	angka5 db 4			;deklarasi angka3/ isi variabel angka5 = 4
	angka6 db 2			;deklarasi angka3/ isi variabel angka6 = 2
	
tambah:
	mov AH,09H			;nilai servis untuk mencetak kalimat
	lea dx,teks1		;pindahkan teks ke register DX
	int 21H				;interupsi (cetak yang ada di DX)
	
	mov al,angka1		;angka1 (34h=4) ke register AL
	add al,angka2		;tambahkan angka2 (2) ke register AL (4+2=6)
	
	mov ah,02H			;nilai servis untuk mencetak karakter
	mov dl,al			;copy isi AL(6) ke register DL
	int 21H				;eksekusi
	
loncat:
	mov dl,10			
	mov ah, 02H			
	int 21H				;eksekusi
	
kurang:
	mov AH,09H			;nilai servis untuk mencetak kalimat
	lea dx,teks2		;pindahkan teks ke register DX
	int 21H				;interupsi (cetak yang ada di DX)
	
	mov al,angka3		;angka3 (34h=4) ke register AL
	sub al,angka4		;kurangkan angka4 (2) ke register AL (4-2=2)
	
	mov ah,02H			;nilai servis untuk mencetak karakter
	mov dl,al			;copy isi AL(2) ke register DL
	int 21H				;eksekusi

loncat2:
	mov dl,10			
	mov ah, 02H			
	int 21H				;eksekusi
	
	
kali:
	mov al,angka5		;angka5 (4) ke register AL
	mul angka6			;kalikan angka6 (2) ke register AL (4*2=8)
	
	mov AH, 09H			;nilai servis untuk mencetak kalimat
	lea dx, teks3		;pindahkan teks ke register DX
	int 21H				;interupsi (cetak yang ada di DX)
	
	mov AH,02H			;nilai servis untuk mencetak karakter
	mov dl,al			;copy isi AL(8) ke register DL
	
	add dl,30h			;tambahkan isi DL dengan 30h (38h=8)
	int 21h				;eksekusi
	int 20h				;mengakhiri proses
	
end proses				