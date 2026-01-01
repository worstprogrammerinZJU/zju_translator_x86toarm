	.file	"1102.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d %s"
.LC1:
	.string	"  "
.LC2:
	.string	"%c "
.LC3:
	.string	"\n"
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
	movabs	rax, 3255307721878872109
	mov	QWORD PTR -96[rbp], rax
	mov	WORD PTR -88[rbp], 11565
	movabs	rax, 2318559055220383776
	mov	QWORD PTR -86[rbp], rax
	mov	WORD PTR -78[rbp], 11565
	movabs	rax, 2318558999385808941
	mov	QWORD PTR -76[rbp], rax
	mov	WORD PTR -68[rbp], 11565
	mov	WORD PTR -64[rbp], 31868
	mov	WORD PTR -62[rbp], 31776
	mov	WORD PTR -60[rbp], 31776
	mov	WORD PTR -58[rbp], 31776
	mov	WORD PTR -56[rbp], 31868
	mov	WORD PTR -54[rbp], 8316
	mov	WORD PTR -52[rbp], 8316
	mov	WORD PTR -50[rbp], 31776
	mov	WORD PTR -48[rbp], 31868
	mov	WORD PTR -46[rbp], 31868
	mov	WORD PTR -44[rbp], 31868
	mov	WORD PTR -42[rbp], 31776
	mov	WORD PTR -40[rbp], 8316
	mov	WORD PTR -38[rbp], 31776
	mov	WORD PTR -36[rbp], 31776
	mov	WORD PTR -34[rbp], 31776
	mov	WORD PTR -32[rbp], 31868
	mov	WORD PTR -30[rbp], 31776
	mov	WORD PTR -28[rbp], 31868
	mov	WORD PTR -26[rbp], 31776
	lea	rdx, -17[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L27:
	mov	DWORD PTR -108[rbp], 0
	jmp	.L3
.L6:
	mov	edi, 32
	call	putchar@PLT
	mov	DWORD PTR -104[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -104[rbp], 1
.L4:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -104[rbp], eax
	jl	.L5
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -108[rbp], 1
.L3:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	test	al, al
	jne	.L6
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -104[rbp], 0
	jmp	.L7
.L12:
	mov	DWORD PTR -108[rbp], 0
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax*2]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	mov	DWORD PTR -100[rbp], 0
	jmp	.L9
.L10:
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -100[rbp], 1
.L9:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -100[rbp], eax
	jl	.L10
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -63[rbp+rax*2]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -108[rbp], 1
.L8:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	test	al, al
	jne	.L11
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -104[rbp], 1
.L7:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -104[rbp], eax
	jl	.L12
	mov	DWORD PTR -108[rbp], 0
	jmp	.L13
.L16:
	mov	edi, 32
	call	putchar@PLT
	mov	DWORD PTR -104[rbp], 0
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -86[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -104[rbp], 1
.L14:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -104[rbp], eax
	jl	.L15
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -108[rbp], 1
.L13:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	test	al, al
	jne	.L16
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -104[rbp], 0
	jmp	.L17
.L22:
	mov	DWORD PTR -108[rbp], 0
	jmp	.L18
.L21:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	add	rax, 10
	movzx	eax, BYTE PTR -64[rbp+rax*2]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	mov	DWORD PTR -100[rbp], 0
	jmp	.L19
.L20:
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -100[rbp], 1
.L19:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -100[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -43[rbp+rax*2]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -108[rbp], 1
.L18:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	test	al, al
	jne	.L21
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -104[rbp], 1
.L17:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -104[rbp], eax
	jl	.L22
	mov	DWORD PTR -108[rbp], 0
	jmp	.L23
.L26:
	mov	edi, 32
	call	putchar@PLT
	mov	DWORD PTR -104[rbp], 0
	jmp	.L24
.L25:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -76[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -104[rbp], 1
.L24:
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -104[rbp], eax
	jl	.L25
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -108[rbp], 1
.L23:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	movzx	eax, BYTE PTR -17[rbp+rax]
	test	al, al
	jne	.L26
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rdx, -17[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -112[rbp]
	test	eax, eax
	jne	.L27
	movzx	eax, BYTE PTR -17[rbp]
	cmp	al, 48
	jne	.L27
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
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
