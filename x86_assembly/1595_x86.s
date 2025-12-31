	.file	"1595.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d %d:"
.LC1:
	.string	" %d"
.LC2:
	.string	"\n"
.LC3:
	.string	"%d%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 720
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -688[rbp]
	mov	eax, 0
	mov	ecx, 84
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -688[rbp], 1
	mov	DWORD PTR -684[rbp], 2
	mov	DWORD PTR -680[rbp], 3
	mov	DWORD PTR -700[rbp], 5
	mov	DWORD PTR -692[rbp], 3
	jmp	.L2
.L8:
	mov	DWORD PTR -696[rbp], 2
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -696[rbp]
	cdqe
	mov	ecx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -700[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L24
	add	DWORD PTR -696[rbp], 1
.L3:
	mov	eax, DWORD PTR -696[rbp]
	cdqe
	mov	eax, DWORD PTR -688[rbp+rax*4]
	add	eax, eax
	cmp	DWORD PTR -700[rbp], eax
	jg	.L6
	jmp	.L5
.L24:
	nop
.L5:
	mov	eax, DWORD PTR -696[rbp]
	cdqe
	mov	eax, DWORD PTR -688[rbp+rax*4]
	add	eax, eax
	cmp	DWORD PTR -700[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -692[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -692[rbp], edx
	cdqe
	mov	edx, DWORD PTR -700[rbp]
	mov	DWORD PTR -688[rbp+rax*4], edx
.L7:
	add	DWORD PTR -700[rbp], 2
.L2:
	cmp	DWORD PTR -700[rbp], 999
	jle	.L8
	jmp	.L9
.L21:
	mov	edx, DWORD PTR -704[rbp]
	mov	eax, DWORD PTR -708[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -700[rbp], 0
	mov	eax, DWORD PTR -692[rbp]
	sub	eax, 1
	mov	DWORD PTR -696[rbp], eax
	jmp	.L10
.L14:
	mov	edx, DWORD PTR -700[rbp]
	mov	eax, DWORD PTR -696[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -708[rbp]
	cmp	edx, eax
	jle	.L11
	mov	edx, DWORD PTR -700[rbp]
	mov	eax, DWORD PTR -696[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	sub	eax, 1
	mov	DWORD PTR -696[rbp], eax
	jmp	.L10
.L11:
	mov	edx, DWORD PTR -700[rbp]
	mov	eax, DWORD PTR -696[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -708[rbp]
	cmp	edx, eax
	jge	.L12
	mov	edx, DWORD PTR -700[rbp]
	mov	eax, DWORD PTR -696[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 1
	mov	DWORD PTR -700[rbp], eax
	jmp	.L10
.L12:
	mov	edx, DWORD PTR -700[rbp]
	mov	eax, DWORD PTR -696[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -700[rbp], eax
	jmp	.L13
.L10:
	mov	eax, DWORD PTR -700[rbp]
	cmp	eax, DWORD PTR -696[rbp]
	jl	.L14
.L13:
	mov	eax, DWORD PTR -700[rbp]
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -708[rbp]
	cmp	edx, eax
	jle	.L15
	sub	DWORD PTR -700[rbp], 1
.L15:
	mov	eax, DWORD PTR -704[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -700[rbp]
	add	eax, 1
	mov	ecx, eax
	sar	ecx, 31
	shr	ecx, 31
	add	eax, ecx
	and	eax, 1
	sub	eax, ecx
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -704[rbp], eax
	mov	eax, DWORD PTR -700[rbp]
	add	eax, 1
	mov	edx, DWORD PTR -704[rbp]
	sub	eax, edx
	cmp	eax, -1
	jl	.L16
	mov	eax, DWORD PTR -700[rbp]
	add	eax, 1
	mov	edx, DWORD PTR -704[rbp]
	sub	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	jmp	.L17
.L16:
	mov	eax, 0
.L17:
	mov	DWORD PTR -696[rbp], eax
	mov	eax, DWORD PTR -696[rbp]
	mov	DWORD PTR -700[rbp], eax
	jmp	.L18
.L20:
	mov	eax, DWORD PTR -700[rbp]
	cdqe
	mov	eax, DWORD PTR -688[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -700[rbp], 1
.L18:
	mov	edx, DWORD PTR -704[rbp]
	mov	eax, DWORD PTR -696[rbp]
	add	eax, edx
	cmp	DWORD PTR -700[rbp], eax
	jge	.L19
	mov	eax, DWORD PTR -700[rbp]
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -708[rbp]
	cmp	edx, eax
	jle	.L20
.L19:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L9:
	lea	rdx, -704[rbp]
	lea	rax, -708[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L21
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
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
