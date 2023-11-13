; Autor: Julián Andrés Pacheco García
; 13/11/2023 11:45:17 a. m.
include 'emu8086.inc'
org 100h
MOV AX, 258
PUSH AX
POP AX
; Asignacion a
MOV a, AX
MOV AX, a
PUSH AX
MOV AX, 258
MOV BX, 256
DIV BX
MOV AX, DX
PUSH AX
XOR DX, DX
POP AX
; Asignacion a
MOV a, AX
MOV AX, 8
PUSH AX
POP AX
ADD  a ,AX
MOV AX, 10
PUSH AX
POP BX
MOV BX, a
MUL BX
MOV a ,AX
MOV AX, 100
PUSH AX
POP BX
MOV BX, a
DIV BX
MOV a, AX
print '' 
print 'Valor Casteado de a: '
MOV AX, a
CALL print_num
PRINTN ''
print '' 
print ''
printn ' ' 
print 'Digite el valor de altura: '
Call scan_num
MOV altura, CX
MOV AX, altura
PRINTN ''
print '' 
print ''
printn ' ' 
print 'for:'
printn ' ' 
print ''
; For: 1
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioFor1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinFor1
print '' 
print '	'
; For: 2
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioFor2:
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinFor2
; if: 1
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif1
print '' 
print '-'
; else: 1
JMP Eelse3
Eif1:
print '' 
print '+'
Eelse3:
INC j
JMP InicioFor2
FinFor2:
print '' 
print ''
printn ' ' 
print ''
INC i
JMP InicioFor1
FinFor1:
; For: 3
; For: 4
; For: 5
print '' 
print ''
printn ' ' 
print 'while:'
printn ' ' 
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
; While: 1
InicioWhile1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinWhile1
print '' 
print '	'
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
; While: 2
InicioWhile2:
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinWhile2
; if: 22
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif22
print '' 
print '-'
; else: 2
JMP Eelse24
Eif22:
print '' 
print '+'
Eelse24:
INC j
JMP InicioWhile2
FinWhile2:
INC i
print '' 
print ''
printn ' ' 
print ''
JMP InicioWhile1
FinWhile1:
; While: 3
; While: 4
; While: 5
print '' 
print ''
printn ' ' 
print 'do:'
printn ' ' 
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioDoWhile1:
print '' 
print '	'
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioDoWhile2:
; if: 43
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif43
print '' 
print '-'
; else: 3
JMP Eelse45
Eif43:
print '' 
print '+'
Eelse45:
INC j
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinDoWhile2
JMP InicioDoWhile2
FinDoWhile2:
INC i
print '' 
print ''
printn ' ' 
print ''
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinDoWhile1
JMP InicioDoWhile1
FinDoWhile1:
int 20h
RET
define_scan_num
define_print_num
define_print_num_uns
; V a r i a b l e s
altura dw 0h
i dw 0h
j dw 0h
k dw 0h
a dw 0h
b dw 0h
END
