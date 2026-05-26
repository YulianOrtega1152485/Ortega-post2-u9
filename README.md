# Laboratorio Unidad 9 - ISR y PIC 8259A

## Descripción
Implementación de rutinas de servicio de interrupción (ISR) en ensamblador x86 utilizando el PIC 8259A y manejo de IRQ1 para el teclado en DOSBox.

## Estructura
- src/ → archivos ASM
- bin/ → ejecutables COM
- capturas/ → evidencias

## Programas
- isr_kb.asm → ISR personalizado para IRQ1
- mask_kb.asm → enmascaramiento de IRQ1
- isr_chain.asm → encadenamiento del ISR

## Herramientas
- NASM
- DOSBox
- Arquitectura x86