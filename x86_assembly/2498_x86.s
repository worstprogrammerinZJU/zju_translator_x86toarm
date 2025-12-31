	.file	"2498.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"Scenario #%d:\n%s\n\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -28[rbp], 9
	mov	DWORD PTR -24[rbp], 3
	mov	DWORD PTR -20[rbp], 7
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -52[rbp], 1
	jmp	.L2
.L14:
	mov	DWORD PTR -40[rbp], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -48[rbp], 0
	jmp	.L3
.L4:
	add	DWORD PTR -48[rbp], 1
.L3:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	movzx	eax, BYTE PTR -16[rbp+rax]
	test	al, al
	jne	.L4
	sub	DWORD PTR -48[rbp], 1
	mov	DWORD PTR -44[rbp], 0
	jmp	.L5
.L9:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	movzx	eax, BYTE PTR -16[rbp+rax]
	cmp	al, 63
	jne	.L6
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -44[rbp], edx
	mov	DWORD PTR -32[rbp], eax
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	movzx	eax, BYTE PTR -16[rbp+rax]
	movsx	eax, al
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -44[rbp], edx
	cdqe
	mov	eax, DWORD PTR -28[rbp+rax*4]
	imul	eax, ecx
	add	DWORD PTR -40[rbp], eax
.L7:
	cmp	DWORD PTR -44[rbp], 3
	jne	.L8
	mov	DWORD PTR -44[rbp], 0
.L8:
	sub	DWORD PTR -48[rbp], 1
.L5:
	cmp	DWORD PTR -48[rbp], 0
	jns	.L9
	mov	edx, DWORD PTR -40[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	sub	edx, eax
	mov	DWORD PTR -40[rbp], edx
	cmp	DWORD PTR -40[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	BYTE PTR -16[rbp+rax], 48
	jmp	.L11
.L10:
	mov	eax, 10
	sub	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -40[rbp], eax
	jmp	.L12
.L13:
	add	DWORD PTR -40[rbp], 10
.L12:
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	ecx, DWORD PTR -28[rbp+rax*4]
	mov	eax, DWORD PTR -40[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	edi, DWORD PTR -28[rbp+rax*4]
	mov	eax, DWORD PTR -40[rbp]
	cdq
	idiv	edi
	add	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	BYTE PTR -16[rbp+rax], dl
.L11:
	lea	rdx, -16[rbp]
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -52[rbp], 1
.L2:
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jle	.L14
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
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
