.MODEL SMALL
.CODE
ORG 100h

proses:
	mov ax,9
	mov cx,2
	mov dx,0
	div cx

	add dx,30h
	mov ah,2
	mov dx,dx
	int 21H
	int 20H
	
end proses