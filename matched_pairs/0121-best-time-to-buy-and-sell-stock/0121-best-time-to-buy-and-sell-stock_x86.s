	.file	"0121-best-time-to-buy-and-sell-stock.c"
	.intel_syntax noprefix
	.text
	.globl	min
	.type	min, @function
min:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L2
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -4[rbp]
.L3:
	pop	rbp
	ret
	.size	min, .-min
	.globl	max
	.type	max, @function
max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -8[rbp]
.L6:
	pop	rbp
	ret
	.size	max, .-max
	.globl	maxProfit
	.type	maxProfit, @function
maxProfit:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	sub	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L8:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L9
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
	.size	maxProfit, .-maxProfit
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
