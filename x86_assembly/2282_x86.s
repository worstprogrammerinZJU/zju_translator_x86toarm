	.file	"2282.c"
	.intel_syntax noprefix
	.text
	.globl	d
	.bss
	.align 32
	.type	d, @object
	.size	d, 360
d:
	.zero	360
	.globl	e
	.data
	.align 32
	.type	e, @object
	.size	e, 36
e:
	.long	1
	.long	10
	.long	100
	.long	1000
	.long	10000
	.long	100000
	.long	1000000
	.long	10000000
	.long	100000000
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d "
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -100[rbp], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -100[rbp]
	mov	edi, eax
	call	cal
	add	DWORD PTR -100[rbp], 1
.L2:
	cmp	DWORD PTR -100[rbp], 9
	jle	.L3
	lea	rdx, -104[rbp]
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L4
.L8:
	mov	edx, DWORD PTR -104[rbp]
	mov	eax, DWORD PTR -108[rbp]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -108[rbp]
	mov	DWORD PTR -100[rbp], eax
	mov	eax, DWORD PTR -104[rbp]
	mov	DWORD PTR -108[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	mov	DWORD PTR -104[rbp], eax
.L5:
	mov	eax, DWORD PTR -108[rbp]
	lea	edx, -1[rax]
	lea	rax, -96[rbp]
	mov	rsi, rax
	mov	edi, edx
	call	count
	mov	eax, DWORD PTR -104[rbp]
	lea	rdx, -48[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	count
	mov	DWORD PTR -100[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	mov	edx, DWORD PTR -48[rbp+rax*4]
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	mov	ecx, DWORD PTR -96[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -100[rbp], 1
.L6:
	cmp	DWORD PTR -100[rbp], 8
	jle	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -60[rbp]
	sub	eax, edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -104[rbp]
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L4:
	mov	eax, DWORD PTR -108[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -104[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	ret
	.size	main, .-main
	.globl	count
	.type	count, @function
count:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	mov	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -36[rbp], 0
	jne	.L12
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], 1
	mov	DWORD PTR -20[rbp], 1
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -20[rbp], 1
.L13:
	cmp	DWORD PTR -20[rbp], 9
	jle	.L14
	jmp	.L11
.L12:
	mov	DWORD PTR -20[rbp], 0
	jmp	.L16
.L17:
	add	DWORD PTR -20[rbp], 1
.L16:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -36[rbp], eax
	jge	.L17
	sub	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx], eax
	add	DWORD PTR -16[rbp], 1
.L18:
	cmp	DWORD PTR -16[rbp], 9
	jle	.L19
	jmp	.L20
.L25:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	edi
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L21
.L22:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -16[rbp], 1
.L21:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L22
	mov	DWORD PTR -16[rbp], 0
	jmp	.L23
.L24:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	esi, DWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rcx+rax]
	imul	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rcx
	add	edx, esi
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -16[rbp], 1
.L23:
	cmp	DWORD PTR -16[rbp], 9
	jle	.L24
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -36[rbp], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	sub	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -12[rbp], 0
.L20:
	cmp	DWORD PTR -20[rbp], 0
	jg	.L25
	mov	DWORD PTR -16[rbp], 0
	jmp	.L26
.L27:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -16[rbp], 1
.L26:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L27
.L11:
	pop	rbp
	ret
	.size	count, .-count
	.globl	cal
	.type	cal, @function
cal:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jne	.L29
	mov	DWORD PTR -4[rbp], 0
	jmp	.L30
.L31:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 10
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -4[rbp], 1
.L30:
	cmp	DWORD PTR -4[rbp], 9
	jle	.L31
	jmp	.L37
.L29:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L33
.L34:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
.L33:
	cmp	DWORD PTR -4[rbp], 9
	jle	.L34
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	lea	rax, d[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	esi, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	sub	edx, 2
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, e[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	eax, esi
	lea	ecx, [rdi+rax]
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	DWORD PTR -4[rbp], 1
	jmp	.L35
.L36:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	r8d, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	esi, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	sub	edx, 2
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, e[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	eax, esi
	add	eax, r8d
	lea	ecx, [rdi+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
.L35:
	cmp	DWORD PTR -4[rbp], 9
	jle	.L36
.L37:
	nop
	pop	rbp
	ret
	.size	cal, .-cal
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
