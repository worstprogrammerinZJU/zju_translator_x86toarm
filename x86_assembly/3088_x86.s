	.file	"3088.c"
	.intel_syntax noprefix
	.text
	.globl	jc
	.data
	.align 32
	.type	jc, @object
	.size	jc, 48
jc:
	.long	1
	.long	1
	.long	2
	.long	6
	.long	24
	.long	120
	.long	720
	.long	5040
	.long	40320
	.long	362880
	.long	3628800
	.long	39916800
	.globl	g
	.align 32
	.type	g, @object
	.size	g, 48
g:
	.long	1
	.long	1
	.long	3
	.zero	36
	.globl	f
	.bss
	.align 32
	.type	f, @object
	.size	f, 48
f:
	.zero	48
	.text
	.globl	zuhe
	.type	zuhe, @function
zuhe:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, jc[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, jc[rip]
	mov	esi, DWORD PTR [rcx+rdx]
	cdq
	idiv	esi
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, jc[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, ecx
	cdq
	idiv	edi
	pop	rbp
	ret
	.size	zuhe, .-zuhe
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d %u\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -28[rbp], 3
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	ebx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	zuhe
	imul	ebx, eax
	mov	ecx, ebx
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	mov	DWORD PTR -36[rbp], eax
.L5:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jg	.L6
	add	DWORD PTR -28[rbp], 1
.L4:
	cmp	DWORD PTR -28[rbp], 11
	jle	.L7
	mov	DWORD PTR -28[rbp], 1
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	DWORD PTR -36[rbp], 1
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	ebx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	zuhe
	imul	ebx, eax
	mov	ecx, ebx
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	mov	DWORD PTR -36[rbp], eax
.L9:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L10
	add	DWORD PTR -28[rbp], 1
.L8:
	cmp	DWORD PTR -28[rbp], 11
	jle	.L11
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], 1
	jmp	.L12
.L13:
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -28[rbp], 1
.L12:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jle	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	mov	rbx, QWORD PTR -8[rbp]
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
