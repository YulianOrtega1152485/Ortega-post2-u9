
org 100h

jmp start

msg1 db 'IRQ1 del teclado enmascarado...',13,10,'$'
msg2 db 'Esperando unos segundos...',13,10,'$'
msg3 db 'IRQ1 restaurado correctamente.$'

start:

; leer mascara actual PIC
in al,21h

; guardar valor
mov bl,al

; enmascarar IRQ1 (bit 1)
or al,02h
out 21h,al

; mensaje
mov ah,09h
mov dx,msg1
int 21h

mov dx,msg2
int 21h

; delay visible
mov cx,25

bucle1:

mov dx,0FFFFh

bucle2:
dec dx
jnz bucle2

loop bucle1

; restaurar mascara original
mov al,bl
out 21h,al

; mensaje final
mov ah,09h
mov dx,msg3
int 21h

mov ah,4Ch
int 21h