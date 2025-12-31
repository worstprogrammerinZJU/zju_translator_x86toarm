	.file	"1664.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 528
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -496[rbp]
	mov	eax, 0
	mov	ecx, 60
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -504[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -504[rbp]
	cdqe
	mov	DWORD PTR -496[rbp+rax*4], 1
	mov	eax, DWORD PTR -504[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	sub	rax, 496
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -504[rbp]
	cdqe
	add	rax, 11
	mov	DWORD PTR -496[rbp+rax*4], 1
	mov	eax, DWORD PTR -504[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	sub	rax, 492
	mov	DWORD PTR [rax], 1
	add	DWORD PTR -504[rbp], 1
.L2:
	cmp	DWORD PTR -504[rbp], 10
	jle	.L3
	mov	DWORD PTR -504[rbp], 2
	jmp	.L4
.L9:
	mov	DWORD PTR -500[rbp], 2
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -500[rbp]
	cmp	eax, DWORD PTR -504[rbp]
	jle	.L6
	mov	eax, DWORD PTR -504[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 496
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -500[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -504[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	mov	DWORD PTR -496[rbp+rax*4], ecx
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -500[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -504[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rcx
	mov	ecx, DWORD PTR -496[rbp+rax*4]
	mov	eax, DWORD PTR -504[rbp]
	sub	eax, DWORD PTR -500[rbp]
	mov	edx, DWORD PTR -500[rbp]
	movsx	rsi, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	mov	eax, DWORD PTR -496[rbp+rax*4]
	add	ecx, eax
	mov	eax, DWORD PTR -500[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -504[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	mov	DWORD PTR -496[rbp+rax*4], ecx
.L7:
	add	DWORD PTR -500[rbp], 1
.L5:
	cmp	DWORD PTR -500[rbp], 10
	jle	.L8
	add	DWORD PTR -504[rbp], 1
.L4:
	cmp	DWORD PTR -504[rbp], 10
	jle	.L9
	lea	rax, -516[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -504[rbp], 0
	jmp	.L10
.L11:
	lea	rdx, -508[rbp]
	lea	rax, -512[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -512[rbp]
	mov	edx, DWORD PTR -508[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rcx
	mov	eax, DWORD PTR -496[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -504[rbp], 1
.L10:
	mov	eax, DWORD PTR -516[rbp]
	cmp	DWORD PTR -504[rbp], eax
	jl	.L11
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
