	.file	"2505.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Stan wins."
.LC1:
	.string	"Ollie wins."
.LC2:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -16[rbp], 2
	mov	DWORD PTR -12[rbp], 9
	jmp	.L2
.L8:
	mov	DWORD PTR -20[rbp], 1
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -16[rbp+rdx*4]
	mov	ecx, edx
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -16[rbp+rdx*4]
	mov	esi, edx
	mov	edx, 0
	div	esi
	mov	DWORD PTR -24[rbp], eax
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -16[rbp+rdx*4]
	mov	ecx, edx
	mov	edx, 0
	div	ecx
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
.L5:
	mov	eax, 1
	sub	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -20[rbp], eax
.L3:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	jne	.L6
	cmp	DWORD PTR -20[rbp], 0
	jne	.L7
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L2
.L7:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L2:
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
