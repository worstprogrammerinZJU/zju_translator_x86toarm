	.file	"2453.c"
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
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	BYTE PTR -12[rbp], 0
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L15:
	mov	DWORD PTR -44[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -48[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	mov	edx, eax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	mov	BYTE PTR -32[rbp+rax], dl
	mov	eax, DWORD PTR -48[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -48[rbp], eax
	add	DWORD PTR -44[rbp], 1
.L3:
	mov	eax, DWORD PTR -48[rbp]
	test	eax, eax
	jne	.L4
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -48[rbp], 0
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	cmp	al, 1
	jne	.L6
	add	DWORD PTR -40[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	test	al, al
	je	.L18
.L6:
	mov	eax, DWORD PTR -48[rbp]
	add	eax, 1
	mov	DWORD PTR -48[rbp], eax
.L5:
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -44[rbp], eax
	jg	.L8
	jmp	.L7
.L18:
	nop
.L7:
	mov	eax, DWORD PTR -48[rbp]
	add	eax, 1
	cdqe
	mov	BYTE PTR -32[rbp+rax], 1
	sub	DWORD PTR -40[rbp], 1
	mov	DWORD PTR -36[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	BYTE PTR -32[rbp+rax], 1
	add	DWORD PTR -36[rbp], 1
.L9:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L10
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -36[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -36[rbp], edx
	cdqe
	mov	BYTE PTR -32[rbp+rax], 0
.L11:
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	DWORD PTR -40[rbp], 0
	jmp	.L13
.L14:
	sal	DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	movsx	eax, al
	add	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	BYTE PTR -32[rbp+rax], 0
	sub	DWORD PTR -36[rbp], 1
.L13:
	cmp	DWORD PTR -36[rbp], 0
	jns	.L14
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -48[rbp]
	test	eax, eax
	jne	.L15
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
