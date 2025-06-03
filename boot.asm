; boot.asm
BITS 16
ORG 0x7C00

start:
    mov si, message
    call print_string
    jmp $

print_string:
    mov ah, 0x0E       ; BIOS teletype output
.next_char:
    lodsb              ; Load byte at DS:SI into AL, increment SI
    cmp al, 0
    je .done
    int 0x10           ; Print AL
    jmp .next_char
.done:
    ret

message db "Hello, World from bootloader!", 0

times 510 - ($ - $$) db 0  ; Pad to 510 bytes
dw 0xAA55                  ; Boot signature
