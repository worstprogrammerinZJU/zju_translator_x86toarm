	.file	"2262.c"
	.intel_syntax noprefix
	.text
	.globl	prime
	.type	prime, @function
prime:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 3
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L3
	mov	eax, 0
	jmp	.L4
.L3:
	add	DWORD PTR -4[rbp], 2
.L2:
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	cmp	DWORD PTR -20[rbp], eax
	jge	.L5
	mov	eax, 1
.L4:
	pop	rbp
	ret
	.size	prime, .-prime
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d = %d + %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L7
.L12:
	mov	DWORD PTR -12[rbp], 3
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	prime
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	prime
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
.L9:
	add	DWORD PTR -12[rbp], 2
.L8:
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -12[rbp], eax
	jle	.L11
.L10:
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L7:
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L12
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
