	.file	"2521.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d%d"
.LC1:
	.string	"%d\n"
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
	lea	rsi, -12[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L3:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	edx, DWORD PTR -20[rbp]
	sub	eax, edx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -12[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
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
