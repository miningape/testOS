mov ah, 0x0e ; Set to tty by putting a ipper to 0x0e
[org 0x7c00]

mov bp, 0x8000 ; Initialize the stack a distance away from 0x7c00
mov sp, bp

push '!'
push 'i'
push 'H'

; Write Bootloader to a lower
mov al, 'B'
int 0x10
mov al, 'o'
int 0x10
int 0x10
mov al, 't'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
mov al, 'a'
int 0x10
mov al, 'd'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
; Yes im on windows hence the CRLF
mov al, 13 ; Carriage Return ASCII
int 0x10
mov al, 10 ; Newline ASCII
int 0x10

; Pop the stack and write is
pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10


; Infinite loop (e9 fd ff)
loop:
	jmp loop

; Fill with 510 zeroes - size of code
times 510-($-$$) db 0

; Bootsector magic number
dw 0xaa55
