	.file	"2934.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	word
	.align 32
	.type	word, @object
	.size	word, 260000
word:
	.zero	260000
	.globl	query
	.align 16
	.type	query, @object
	.size	query, 26
query:
	.zero	26
	.section	.rodata
.LC0:
	.string	"%s is correct\n"
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	lea	rdx, query[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L4
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, 0
.L4:
	leave
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC1:
	.string	"%d"
.LC2:
	.string	"%s"
.LC3:
	.string	"%s is a misspelling of %s\n"
.LC4:
	.string	"%s is unknown\n"
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
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -36[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -36[rbp], 1
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L8
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -36[rbp], 0
	jmp	.L9
.L33:
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, 0
	call	cmp
	cmp	eax, 1
	je	.L36
	lea	rax, query[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -32[rbp], 0
	jmp	.L12
.L32:
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jg	.L37
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jg	.L37
	mov	DWORD PTR -28[rbp], 0
	jmp	.L16
.L17:
	add	DWORD PTR -28[rbp], 1
.L16:
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	je	.L17
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L18
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L19
	add	DWORD PTR -28[rbp], 1
	jmp	.L21
.L19:
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L21
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L21
	add	DWORD PTR -28[rbp], 2
	jmp	.L21
.L24:
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L38
	add	DWORD PTR -28[rbp], 1
.L21:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L24
	jmp	.L23
.L38:
	nop
.L23:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jne	.L15
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdx, rax
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L25
.L18:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jne	.L26
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L28
.L26:
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L28
.L31:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L39
	add	DWORD PTR -24[rbp], 1
	add	DWORD PTR -20[rbp], 1
.L28:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L31
	jmp	.L30
.L39:
	nop
.L30:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jne	.L15
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdx, rax
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L25
.L37:
	nop
.L15:
	add	DWORD PTR -32[rbp], 1
.L12:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L32
.L25:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -32[rbp], eax
	jne	.L11
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
.L36:
	nop
.L11:
	add	DWORD PTR -36[rbp], 1
.L9:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L33
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
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
