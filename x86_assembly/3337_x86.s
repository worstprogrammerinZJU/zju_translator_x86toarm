	.file	"3337.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 1000
str:
	.zero	1000
	.globl	letter
	.align 32
	.type	letter, @object
	.size	letter, 104
letter:
	.zero	104
	.globl	flag
	.align 32
	.type	flag, @object
	.size	flag, 104
flag:
	.zero	104
	.globl	ch
	.align 4
	.type	ch, @object
	.size	ch, 4
ch:
	.zero	4
	.globl	sym
	.align 4
	.type	sym, @object
	.size	sym, 4
sym:
	.zero	4
	.text
	.globl	lexer
	.type	lexer, @function
lexer:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L4
	mov	eax, -1
	jmp	.L3
.L5:
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
.L4:
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 32
	je	.L5
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 96
	jle	.L6
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jg	.L6
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR ch[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR ch[rip], edx
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	jmp	.L3
.L6:
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 43
	jne	.L7
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 43
	jne	.L8
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, 26
	jmp	.L3
.L8:
	mov	eax, 28
	jmp	.L3
.L7:
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 45
	jne	.L9
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 45
	jne	.L10
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, 27
	jmp	.L3
.L10:
	mov	eax, 29
	jmp	.L3
.L9:
	mov	eax, -1
.L3:
	pop	rbp
	ret
	.size	lexer, .-lexer
	.globl	factor
	.type	factor, @function
factor:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 26
	jne	.L12
	mov	eax, 0
	call	lexer
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	jmp	.L11
.L12:
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 27
	jne	.L14
	mov	eax, 0
	call	lexer
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	jmp	.L11
.L14:
	mov	eax, DWORD PTR sym[rip]
	test	eax, eax
	js	.L15
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 25
	jg	.L15
	mov	eax, DWORD PTR sym[rip]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 26
	jne	.L16
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L17
.L16:
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 27
	jne	.L17
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L17:
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L11
.L15:
.L11:
	leave
	ret
	.size	factor, .-factor
	.globl	expression
	.type	expression, @function
expression:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	factor
	mov	DWORD PTR -12[rbp], eax
	jmp	.L19
.L21:
	mov	eax, DWORD PTR sym[rip]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, 0
	call	factor
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -8[rbp], 28
	jne	.L20
	mov	eax, DWORD PTR -4[rbp]
	add	DWORD PTR -12[rbp], eax
	jmp	.L19
.L20:
	cmp	DWORD PTR -8[rbp], 29
	jne	.L19
	mov	eax, DWORD PTR -4[rbp]
	sub	DWORD PTR -12[rbp], eax
.L19:
	mov	eax, DWORD PTR sym[rip]
	test	eax, eax
	jns	.L21
	mov	eax, DWORD PTR -12[rbp]
	leave
	ret
	.size	expression, .-expression
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"Expression: %s\n"
.LC2:
	.string	"value = %d\n"
.LC3:
	.string	"%c = %d\n"
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
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L24
.L30:
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L25
.L26:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -12[rbp], 1
.L25:
	cmp	DWORD PTR -12[rbp], 25
	jle	.L26
	mov	DWORD PTR ch[rip], 0
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, 0
	call	expression
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L27
.L29:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L28
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L28:
	add	DWORD PTR -12[rbp], 1
.L27:
	cmp	DWORD PTR -12[rbp], 25
	jle	.L29
	add	DWORD PTR -16[rbp], 1
.L24:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
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
