	.file	"3053.c"
	.intel_syntax noprefix
	.text
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 400
p:
	.zero	400
	.globl	q
	.align 32
	.type	q, @object
	.size	q, 400
q:
	.zero	400
	.globl	bowling
	.align 32
	.type	bowling, @object
	.size	bowling, 400000
bowling:
	.zero	400000
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
.L4:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d %d\n"
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
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -32[rbp], 0
	jmp	.L6
.L30:
	lea	rdx, -40[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
.L10:
	mov	DWORD PTR -24[rbp], 0
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, bowling[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -24[rbp], 1
.L8:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 4000
	lea	rcx, bowling[rip]
	lea	rdi, [rdx+rcx]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	call	qsort@PLT
	add	DWORD PTR -28[rbp], 1
.L7:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L10
	mov	DWORD PTR -28[rbp], 0
	jmp	.L11
.L29:
	mov	edx, 400
	mov	esi, 0
	lea	rax, p[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 400
	mov	esi, 0
	lea	rax, q[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L12
.L28:
	mov	DWORD PTR -20[rbp], 0
	jmp	.L13
.L16:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	je	.L14
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jge	.L14
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jg	.L14
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L15
.L14:
	add	DWORD PTR -20[rbp], 1
.L13:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L16
.L15:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L17
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	DWORD PTR -20[rbp], 0
	jmp	.L18
.L26:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	je	.L33
	jmp	.L21
.L23:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L21:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jge	.L22
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L23
.L22:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	je	.L34
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L20
.L33:
	nop
.L20:
	add	DWORD PTR -20[rbp], 1
.L18:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L26
	jmp	.L25
.L34:
	nop
.L25:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L27
	add	DWORD PTR -16[rbp], 1
.L27:
	add	DWORD PTR -24[rbp], 1
.L12:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L28
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -28[rbp], 1
.L11:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L29
	add	DWORD PTR -32[rbp], 1
.L6:
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L30
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
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
