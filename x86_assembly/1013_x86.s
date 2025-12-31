	.file	"1013.c"
	.intel_syntax noprefix
	.text
	.globl	coin
	.bss
	.align 32
	.type	coin, @object
	.size	coin, 48
coin:
	.zero	48
	.section	.rodata
.LC0:
	.string	"even"
.LC1:
	.string	"up"
.LC2:
	.string	"down"
	.text
	.globl	balance
	.type	balance, @function
balance:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coin[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coin[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L4:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L5
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L6
	mov	eax, 1
	jmp	.L7
.L6:
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L8
	mov	eax, 1
	jmp	.L7
.L8:
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L9
	mov	eax, 1
	jmp	.L7
.L9:
	mov	eax, 0
.L7:
	leave
	ret
	.size	balance, .-balance
	.section	.rodata
.LC3:
	.string	"%d"
.LC4:
	.string	"%s%s%s"
	.align 8
.LC5:
	.string	"%c is the counterfeit coin and it is "
.LC6:
	.string	"light."
.LC7:
	.string	"heavy."
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
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -128[rbp], 0
	jmp	.L11
.L28:
	mov	DWORD PTR -124[rbp], 0
	jmp	.L12
.L13:
	lea	rcx, -48[rbp]
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rcx, rax
	lea	rsi, -80[rbp]
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rsi+rax]
	lea	rdi, -112[rbp]
	mov	eax, DWORD PTR -124[rbp]
	movsx	rsi, eax
	mov	rax, rsi
	sal	rax, 2
	add	rax, rsi
	add	rax, rax
	add	rax, rdi
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -124[rbp], 1
.L12:
	cmp	DWORD PTR -124[rbp], 2
	jle	.L13
	mov	DWORD PTR -124[rbp], -1
	jmp	.L14
.L25:
	mov	DWORD PTR -120[rbp], 0
	jmp	.L15
.L22:
	mov	edx, 48
	mov	esi, 0
	lea	rax, coin[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -120[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, coin[rip]
	mov	eax, DWORD PTR -124[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	DWORD PTR -116[rbp], 0
	jmp	.L16
.L19:
	lea	rcx, -48[rbp]
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rcx+rax]
	lea	rsi, -80[rbp]
	mov	eax, DWORD PTR -116[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	add	rax, rax
	lea	rcx, [rsi+rax]
	lea	rdi, -112[rbp]
	mov	eax, DWORD PTR -116[rbp]
	movsx	rsi, eax
	mov	rax, rsi
	sal	rax, 2
	add	rax, rsi
	add	rax, rax
	add	rax, rdi
	mov	rsi, rcx
	mov	rdi, rax
	call	balance
	test	eax, eax
	je	.L31
	add	DWORD PTR -116[rbp], 1
.L16:
	cmp	DWORD PTR -116[rbp], 2
	jle	.L19
	jmp	.L18
.L31:
	nop
.L18:
	cmp	DWORD PTR -116[rbp], 3
	je	.L32
	add	DWORD PTR -120[rbp], 1
.L15:
	cmp	DWORD PTR -120[rbp], 11
	jle	.L22
	jmp	.L21
.L32:
	nop
.L21:
	cmp	DWORD PTR -120[rbp], 11
	jle	.L33
	add	DWORD PTR -124[rbp], 2
.L14:
	cmp	DWORD PTR -124[rbp], 1
	jle	.L25
	jmp	.L24
.L33:
	nop
.L24:
	mov	eax, DWORD PTR -120[rbp]
	add	eax, 65
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -124[rbp], -1
	jne	.L26
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L27
.L26:
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
.L27:
	add	DWORD PTR -128[rbp], 1
.L11:
	mov	eax, DWORD PTR -132[rbp]
	cmp	DWORD PTR -128[rbp], eax
	jl	.L28
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
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
