	.file	"3009.c"
	.intel_syntax noprefix
	.text
	.globl	board
	.bss
	.align 32
	.type	board, @object
	.size	board, 1600
board:
	.zero	1600
	.globl	w
	.align 4
	.type	w, @object
	.size	w, 4
w:
	.zero	4
	.globl	h
	.align 4
	.type	h, @object
	.size	h, 4
h:
	.zero	4
	.globl	step
	.align 4
	.type	step, @object
	.size	step, 4
step:
	.zero	4
	.text
	.globl	dfs
	.type	dfs, @function
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -28[rbp], eax
	jg	.L27
	cmp	DWORD PTR -20[rbp], 0
	jle	.L4
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	je	.L4
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L5
.L9:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 3
	jne	.L6
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L28
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR step[rip], eax
	jmp	.L28
.L6:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L8
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	dfs
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 1
	jmp	.L4
.L8:
	sub	DWORD PTR -4[rbp], 1
.L5:
	cmp	DWORD PTR -4[rbp], 0
	jns	.L9
.L4:
	cmp	DWORD PTR -24[rbp], 0
	jle	.L10
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	je	.L10
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L11
.L15:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 3
	jne	.L12
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L29
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR step[rip], eax
	jmp	.L29
.L12:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L14
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	dfs
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 1
	jmp	.L10
.L14:
	sub	DWORD PTR -4[rbp], 1
.L11:
	cmp	DWORD PTR -4[rbp], 0
	jns	.L15
.L10:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR h[rip]
	cmp	edx, eax
	jge	.L16
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	je	.L16
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L17
.L21:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 3
	jne	.L18
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L30
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR step[rip], eax
	jmp	.L30
.L18:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L20
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	dfs
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 1
	jmp	.L16
.L20:
	add	DWORD PTR -4[rbp], 1
.L17:
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L21
.L16:
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR w[rip]
	cmp	edx, eax
	jge	.L1
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	je	.L1
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L22
.L26:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 3
	jne	.L23
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L31
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR step[rip], eax
	jmp	.L31
.L23:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L25
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	dfs
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	DWORD PTR [rdx+rax], 1
	jmp	.L1
.L25:
	add	DWORD PTR -4[rbp], 1
.L22:
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L26
	jmp	.L1
.L27:
	nop
	jmp	.L1
.L28:
	nop
	jmp	.L1
.L29:
	nop
	jmp	.L1
.L30:
	nop
	jmp	.L1
.L31:
	nop
.L1:
	leave
	ret
	.size	dfs, .-dfs
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d"
.LC2:
	.string	"-1"
.LC3:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L33
.L41:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L34
.L38:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L35
.L37:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, board[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 2
	jne	.L36
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
.L36:
	add	DWORD PTR -12[rbp], 1
.L35:
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L37
	add	DWORD PTR -16[rbp], 1
.L34:
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L38
	mov	DWORD PTR step[rip], 11
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 1
	mov	esi, ecx
	mov	edi, eax
	call	dfs
	mov	eax, DWORD PTR step[rip]
	cmp	eax, 10
	jle	.L39
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L40
.L39:
	mov	eax, DWORD PTR step[rip]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L40:
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L33:
	mov	eax, DWORD PTR w[rip]
	test	eax, eax
	jne	.L41
	mov	eax, DWORD PTR h[rip]
	test	eax, eax
	jne	.L41
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
