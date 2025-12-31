	.file	"0070-climbing-stairs.c"
	.intel_syntax noprefix
	.text
	.globl	climbStairs
	.type	climbStairs, @function
climbStairs:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 3
	jg	.L2
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L3
.L2:
	mov	DWORD PTR -16[rbp], 2
	mov	DWORD PTR -12[rbp], 3
	mov	DWORD PTR -8[rbp], 4
	jmp	.L4
.L5:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L4:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L5
	mov	eax, DWORD PTR -12[rbp]
.L3:
	pop	rbp
	ret
	.size	climbStairs, .-climbStairs
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
