mov ah, 0x0e ; Set to tty by putting a ipper to 0x0e
[org 0x7c00]

; Accessing the secret
mov al, 'S'
int 0x10
mov al, 'E'
int 0x10
mov al, 'C'
int 0x10
mov al, ':'
int 0x10
mov al, [secret]
int 0x10
mov al, 10
int 0x10
mov al, 13
int 0x10

; Write Hello to a lower
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10

; Infinite loop (e9 fd ff)
loop:
	jmp loop

secret:
	db "B"

; Fill with 510 zeroes - size of code
times 510-($-$$) db 0

; Bootsector magic number
dw 0xaa55
