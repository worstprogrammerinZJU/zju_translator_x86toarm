	.file	"2407.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L11:
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -24[rbp], eax
.L4:
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	DWORD PTR -20[rbp], 1
	jmp	.L5
.L3:
	mov	DWORD PTR -20[rbp], 0
.L5:
	mov	DWORD PTR -16[rbp], 3
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -16[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -16[rbp]
	sub	DWORD PTR -24[rbp], eax
.L8:
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -16[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
.L7:
	add	DWORD PTR -16[rbp], 2
.L6:
	cmp	DWORD PTR -12[rbp], 1
	jg	.L9
	cmp	DWORD PTR -20[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	je	.L10
	sub	DWORD PTR -24[rbp], 1
.L10:
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L11
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
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
