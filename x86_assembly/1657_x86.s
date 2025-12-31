	.file	"1657.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s%s"
.LC2:
	.string	"%d %d %d "
.LC3:
	.string	"Inf"
.LC4:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -32[rbp], 0
	jmp	.L2
.L16:
	lea	rdx, -11[rbp]
	lea	rax, -14[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	edx, BYTE PTR -14[rbp]
	movzx	eax, BYTE PTR -11[rbp]
	cmp	dl, al
	jle	.L3
	movzx	eax, BYTE PTR -14[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -11[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -28[rbp], eax
	jmp	.L4
.L3:
	movzx	eax, BYTE PTR -11[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -14[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -28[rbp], eax
.L4:
	movzx	edx, BYTE PTR -13[rbp]
	movzx	eax, BYTE PTR -10[rbp]
	cmp	dl, al
	jle	.L5
	movzx	eax, BYTE PTR -13[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -10[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
	jmp	.L6
.L5:
	movzx	eax, BYTE PTR -10[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -13[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
.L6:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -28[rbp], 0
	jne	.L7
	cmp	DWORD PTR -24[rbp], 0
	jne	.L7
	mov	DWORD PTR -44[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L8
.L7:
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	and	eax, 1
	test	eax, eax
	je	.L9
	mov	DWORD PTR -36[rbp], -1
	mov	DWORD PTR -44[rbp], 2
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L11
	mov	DWORD PTR -36[rbp], 1
	mov	DWORD PTR -44[rbp], 1
	jmp	.L10
.L11:
	mov	DWORD PTR -36[rbp], 2
	mov	DWORD PTR -44[rbp], 2
.L10:
	cmp	DWORD PTR -28[rbp], 0
	je	.L12
	cmp	DWORD PTR -24[rbp], 0
	jne	.L13
.L12:
	mov	DWORD PTR -40[rbp], 1
	mov	DWORD PTR -44[rbp], 1
	jmp	.L8
.L13:
	mov	DWORD PTR -40[rbp], 2
.L8:
	mov	ecx, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -36[rbp], -1
	jne	.L14
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L15
.L14:
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L15:
	add	DWORD PTR -32[rbp], 1
.L2:
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L16
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
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
