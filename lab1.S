.global lab1
.syntax unified
#define a #5
#define b #3
#define c #4

lab1:
    push {lr}
    // calculate 
    mov r0, a
    mov r1, b
    mov r2, c
    sub r0, r1
    mul r0, r1
    mov r3, #2
    pow:
	cmp r2, #1
	beq sum
	lsl r3, r3, #1
	sub r2, #1
	bne pow
    sum:
	add r0, r3
	pop {pc}
