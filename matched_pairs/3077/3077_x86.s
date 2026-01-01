	.file	"3077.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"10"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -132[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -128[rbp], 0
	jmp	.L2
.L12:
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -116[rbp], eax
	mov	DWORD PTR -124[rbp], 0
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	mov	DWORD PTR -120[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	mov	BYTE PTR -133[rbp], al
	mov	eax, DWORD PTR -120[rbp]
	cdqe
	movzx	edx, BYTE PTR -112[rbp+rax]
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	mov	BYTE PTR -112[rbp+rax], dl
	mov	eax, DWORD PTR -120[rbp]
	cdqe
	movzx	edx, BYTE PTR -133[rbp]
	mov	BYTE PTR -112[rbp+rax], dl
	add	DWORD PTR -124[rbp], 1
	sub	DWORD PTR -120[rbp], 1
.L3:
	mov	eax, DWORD PTR -124[rbp]
	cmp	eax, DWORD PTR -120[rbp]
	jle	.L4
	mov	DWORD PTR -124[rbp], 0
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 52
	jle	.L6
	mov	eax, DWORD PTR -124[rbp]
	add	eax, 1
	movsx	rdx, eax
	movzx	edx, BYTE PTR -112[rbp+rdx]
	add	edx, 1
	cdqe
	mov	BYTE PTR -112[rbp+rax], dl
.L6:
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	mov	BYTE PTR -112[rbp+rax], 48
	add	DWORD PTR -124[rbp], 1
.L5:
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	cmp	DWORD PTR -124[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 58
	jne	.L8
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
.L9:
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 2
	mov	DWORD PTR -124[rbp], eax
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	sub	DWORD PTR -124[rbp], 1
.L10:
	cmp	DWORD PTR -124[rbp], 0
	jns	.L11
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -128[rbp], 1
.L2:
	mov	eax, DWORD PTR -132[rbp]
	cmp	DWORD PTR -128[rbp], eax
	jl	.L12
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
