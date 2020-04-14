.MODEL SMALL
.CODE
ORG 100h

proses:
	mov ah,02H
	mov dl,01000000b
	shr dl,3
	add dl,30h
	int 21H
	int 20H
	
end proses