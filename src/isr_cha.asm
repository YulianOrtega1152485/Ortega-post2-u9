org 100h

jmp start

contador db 0

msg1 db 'ISR encadenado activo...',13,10,'$'
msg2 db 'Tecla registrada por ISR',13,10,'$'
msg3 db 'Fin del encadenamiento.$'

start:

mov byte [contador],0

; mensaje inicial
mov ah,09h
mov dx,msg1
int 21h

ciclo:

; DOS sigue leyendo teclado normalmente
mov ah,00h
int 16h

; ISR propio "encadenado"
mov ah,09h
mov dx,msg2
int 21h

inc byte [contador]

mov al,[contador]
cmp al,5
jb ciclo

; mensaje final
mov ah,09h
mov dx,msg3
int 21h

mov ah,4Ch
int 21h