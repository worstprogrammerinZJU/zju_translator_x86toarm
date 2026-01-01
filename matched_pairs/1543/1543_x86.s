	.file	"1543.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Cube = %d, Triple = (%d,%d,%d)\n"
	.text
	.globl	cude
	.type	cude, @function
cude:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, eax
	mov	edx, DWORD PTR -36[rbp]
	imul	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -28[rbp], 2
	jmp	.L2
.L12:
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, eax
	mov	edx, DWORD PTR -28[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L3
.L11:
	mov	eax, DWORD PTR -24[rbp]
	imul	eax, eax
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L13
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L6
.L10:
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, eax
	imul	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L7
	mov	esi, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -36[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jg	.L14
.L8:
	add	DWORD PTR -20[rbp], 1
.L6:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L10
	jmp	.L9
.L14:
	nop
.L9:
	add	DWORD PTR -24[rbp], 1
.L3:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L11
	jmp	.L5
.L13:
	nop
.L5:
	add	DWORD PTR -28[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 2
	cmp	DWORD PTR -28[rbp], eax
	jl	.L12
	nop
	nop
	leave
	ret
	.size	cude, .-cude
	.section	.rodata
.LC1:
	.string	"%d"
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
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 6
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	cude
	add	DWORD PTR -12[rbp], 1
.L16:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L17
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
