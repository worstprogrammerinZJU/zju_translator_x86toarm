	.file	"0374-guess-number-higher-or-lower.c"
	.intel_syntax noprefix
	.text
	.globl	guess_bis
	.type	guess_bis, @function
guess_bis:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	guess@PLT
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jne	.L2
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L3
.L2:
	cmp	DWORD PTR -12[rbp], 0
	jns	.L4
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	guess_bis
	jmp	.L3
.L4:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	guess_bis
.L3:
	leave
	ret
	.size	guess_bis, .-guess_bis
	.globl	guessNumber
	.type	guessNumber, @function
guessNumber:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 0
	call	guess_bis
	leave
	ret
	.size	guessNumber, .-guessNumber
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
