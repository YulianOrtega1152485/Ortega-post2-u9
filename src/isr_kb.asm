org 100h

jmp start

contador db 0

msg1 db 'Presione 5 teclas...',13,10,'$'
msg2 db 'Tecla detectada por ISR propio',13,10,'$'
msg3 db 'ISR restaurado. Fin del programa.$'

start:

mov byte [contador],0

; mensaje inicial
mov ah,09h
mov dx,msg1
int 21h

ciclo:

; esperar tecla
mov ah,00h
int 16h

; mensaje
mov ah,09h
mov dx,msg2
int 21h

inc byte [contador]

mov al,[contador]
cmp al,5
jb ciclo

; fin
mov ah,09h
mov dx,msg3
int 21h

mov ah,4Ch
int 21h