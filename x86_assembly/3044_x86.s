	.file	"3044.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%ld%ld"
.LC1:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -397312[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2800
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -400048[rbp]
	mov	edx, 400040
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	QWORD PTR -400064[rbp], 0
	mov	QWORD PTR -400056[rbp], 0
	lea	rdx, -400096[rbp]
	lea	rax, -400104[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	QWORD PTR -400072[rbp], 0
	jmp	.L2
.L6:
	lea	rdx, -400080[rbp]
	lea	rax, -400088[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L3
.L4:
	sub	QWORD PTR -400064[rbp], 1
	add	QWORD PTR -400056[rbp], 1
.L3:
	mov	rax, QWORD PTR -400064[rbp]
	mov	rdx, QWORD PTR -400048[rbp+rax*8]
	mov	rax, QWORD PTR -400080[rbp]
	cmp	rdx, rax
	jg	.L4
	mov	rax, QWORD PTR -400064[rbp]
	mov	rdx, QWORD PTR -400048[rbp+rax*8]
	mov	rax, QWORD PTR -400080[rbp]
	cmp	rdx, rax
	jge	.L5
	add	QWORD PTR -400064[rbp], 1
	mov	rdx, QWORD PTR -400080[rbp]
	mov	rax, QWORD PTR -400064[rbp]
	mov	QWORD PTR -400048[rbp+rax*8], rdx
.L5:
	add	QWORD PTR -400072[rbp], 1
.L2:
	mov	rax, QWORD PTR -400104[rbp]
	cmp	QWORD PTR -400072[rbp], rax
	jl	.L6
	mov	QWORD PTR -400080[rbp], 0
	jmp	.L7
.L9:
	sub	QWORD PTR -400064[rbp], 1
	add	QWORD PTR -400056[rbp], 1
.L7:
	mov	rax, QWORD PTR -400064[rbp]
	mov	rdx, QWORD PTR -400048[rbp+rax*8]
	mov	rax, QWORD PTR -400080[rbp]
	cmp	rdx, rax
	jle	.L8
	cmp	QWORD PTR -400064[rbp], -1
	jne	.L9
.L8:
	mov	rax, QWORD PTR -400056[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
