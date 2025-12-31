	.file	"2751.c"
	.intel_syntax noprefix
	.text
	.globl	set
	.bss
	.align 32
	.type	set, @object
	.size	set, 160000
set:
	.zero	160000
	.globl	p
	.align 4
	.type	p, @object
	.size	p, 4
p:
	.zero	4
	.globl	q
	.align 4
	.type	q, @object
	.size	q, 4
q:
	.zero	4
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
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L13:
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR p[rip], 0
	mov	DWORD PTR q[rip], 0
	jmp	.L3
.L6:
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jge	.L4
	mov	edx, DWORD PTR p[rip]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR p[rip]
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip+4]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR p[rip]
	add	eax, 1
	mov	DWORD PTR p[rip], eax
	jmp	.L5
.L4:
	mov	edx, DWORD PTR q[rip]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, edx
	add	rdx, 10000
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR q[rip]
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip+80004]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR q[rip]
	add	eax, 1
	mov	DWORD PTR q[rip], eax
.L5:
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR p[rip]
	sub	eax, 1
	mov	edx, 0
	mov	esi, eax
	mov	edi, 0
	call	quick
	mov	eax, DWORD PTR q[rip]
	sub	eax, 1
	mov	edx, 1
	mov	esi, eax
	mov	edi, 0
	call	quick
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L8
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
.L8:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -12[rbp], 1
.L7:
	mov	eax, DWORD PTR p[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR q[rip]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 10000
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L11
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
.L11:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+80004]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	sub	DWORD PTR -12[rbp], 1
.L10:
	cmp	DWORD PTR -12[rbp], 0
	jns	.L12
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	ret
	.size	main, .-main
	.globl	quick
	.type	quick, @function
quick:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L25
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
.L19:
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	imul	rax, rax, 10000
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rcx, ecx
	imul	rax, rax, 10000
	add	rax, rcx
	add	rax, rax
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L21
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L19
.L21:
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	imul	rax, rax, 10000
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	ecx, DWORD PTR -4[rbp]
	movsx	rcx, ecx
	imul	rax, rax, 10000
	add	rax, rcx
	add	rax, rax
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L20
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jne	.L21
.L20:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L26
	mov	edx, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	swap
	jmp	.L19
.L26:
	nop
	mov	edx, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	swap
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, -1[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	quick
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	quick
.L25:
	nop
	leave
	ret
	.size	quick, .-quick
	.globl	swap
	.type	swap, @function
swap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 10000
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rcx, 0[0+rax*8]
	lea	rdx, set[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 10000
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip+4]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rcx, 0[0+rax*8]
	lea	rdx, set[rip+4]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
	.size	swap, .-swap
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
