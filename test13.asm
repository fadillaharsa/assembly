.MODEL SMALL
.CODE
ORG 100h

proses:
	mov ah,02H
	mov al,1010000b
	sar al,1
	add al,30H
	mov dl,al
	int 21H
	int 20H
	
end proses