.MODEL SMALL
.CODE
ORG 100h

proses:
	mov ah,02H
	mov dl,00000001b
	shl dl,3
	add dl,30H
	int 21H
	int 20H
	
end proses