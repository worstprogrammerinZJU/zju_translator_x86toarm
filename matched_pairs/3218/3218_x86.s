	.file	"3218.c"
	.intel_syntax noprefix
	.text
	.globl	line
	.bss
	.align 32
	.type	line, @object
	.size	line, 100
line:
	.zero	100
	.globl	str
	.align 32
	.type	str, @object
	.size	str, 100
str:
	.zero	100
	.globl	len
	.align 4
	.type	len, @object
	.size	len, 4
len:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%s"
	.text
	.globl	makeline
	.type	makeline, @function
makeline:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
.L5:
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, line[rip]
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, line[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, line[rip]
	add	rax, rdx
	mov	WORD PTR [rax], 32
	lea	rax, line[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR len[rip], eax
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, DWORD PTR len[rip]
	sub	eax, 1
	mov	DWORD PTR len[rip], eax
	mov	eax, DWORD PTR len[rip]
	cdqe
	lea	rdx, line[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, -1
	jmp	.L4
.L3:
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -4[rbp], eax
.L2:
	mov	edx, DWORD PTR len[rip]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cmp	eax, 75
	jle	.L5
	mov	eax, DWORD PTR len[rip]
	sub	eax, 1
	mov	DWORD PTR len[rip], eax
	mov	eax, DWORD PTR len[rip]
	cdqe
	lea	rdx, line[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, 1
.L4:
	leave
	ret
	.size	makeline, .-makeline
	.globl	left
	.type	left, @function
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	rax, line[rip]
	mov	rdi, rax
	call	puts@PLT
	nop
	pop	rbp
	ret
	.size	left, .-left
	.globl	right
	.type	right, @function
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, DWORD PTR len[rip]
	mov	eax, 75
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	jmp	.L8
.L9:
	mov	edi, 32
	call	putchar@PLT
	sub	DWORD PTR -4[rbp], 1
.L8:
	cmp	DWORD PTR -4[rbp], 0
	jg	.L9
	lea	rax, line[rip]
	mov	rdi, rax
	call	puts@PLT
	nop
	leave
	ret
	.size	right, .-right
	.globl	center
	.type	center, @function
center:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, DWORD PTR len[rip]
	mov	eax, 75
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	sub	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L11
.L12:
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -12[rbp], 1
.L11:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L12
	lea	rax, line[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L13
.L14:
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -12[rbp], 1
.L13:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L14
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
	.size	center, .-center
	.globl	justify
	.type	justify, @function
justify:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, DWORD PTR len[rip]
	mov	eax, 75
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L16
.L18:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, line[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 32
	jne	.L17
	add	DWORD PTR -8[rbp], 1
.L17:
	add	DWORD PTR -16[rbp], 1
.L16:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L18
	cmp	DWORD PTR -8[rbp], 0
	je	.L19
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], edx
.L19:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L20
.L24:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, line[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 32
	jne	.L21
	mov	DWORD PTR -8[rbp], 0
	jmp	.L22
.L23:
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -8[rbp], 1
.L22:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L23
	cmp	DWORD PTR -12[rbp], 0
	jle	.L21
	mov	edi, 32
	call	putchar@PLT
	sub	DWORD PTR -12[rbp], 1
.L21:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, line[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -16[rbp], 1
.L20:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L24
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
	.size	justify, .-justify
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR str[rip]
	cmp	al, 76
	jne	.L26
	mov	DWORD PTR -4[rbp], 0
	jmp	.L27
.L26:
	movzx	eax, BYTE PTR str[rip]
	cmp	al, 82
	jne	.L28
	mov	DWORD PTR -4[rbp], 1
	jmp	.L27
.L28:
	movzx	eax, BYTE PTR str[rip]
	cmp	al, 67
	jne	.L29
	mov	DWORD PTR -4[rbp], 2
	jmp	.L27
.L29:
	mov	DWORD PTR -4[rbp], 3
.L27:
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L30
.L35:
	cmp	DWORD PTR -4[rbp], 0
	jne	.L31
	mov	eax, 0
	call	left
	jmp	.L32
.L31:
	cmp	DWORD PTR -4[rbp], 1
	jne	.L33
	mov	eax, 0
	call	right
	jmp	.L32
.L33:
	cmp	DWORD PTR -4[rbp], 2
	jne	.L34
	mov	eax, 0
	call	center
	jmp	.L32
.L34:
	mov	eax, 0
	call	justify
.L32:
	mov	DWORD PTR len[rip], 0
	mov	BYTE PTR line[rip], 0
.L30:
	mov	eax, 0
	call	makeline
	cmp	eax, 1
	je	.L35
	cmp	DWORD PTR -4[rbp], 0
	jne	.L36
	mov	eax, 0
	call	left
	jmp	.L37
.L36:
	cmp	DWORD PTR -4[rbp], 1
	jne	.L38
	mov	eax, 0
	call	right
	jmp	.L37
.L38:
	cmp	DWORD PTR -4[rbp], 2
	jne	.L39
	mov	eax, 0
	call	center
	jmp	.L37
.L39:
	mov	eax, 0
	call	left
.L37:
	mov	eax, 0
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
