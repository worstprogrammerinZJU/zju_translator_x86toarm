	.file	"3372.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
.LC2:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	jmp	.L2
.L4:
	mov	eax, DWORD PTR n[rip]
	sar	eax
	mov	DWORD PTR n[rip], eax
.L3:
	mov	eax, DWORD PTR n[rip]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 1
	jne	.L5
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L2
.L5:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L2:
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, 0
	pop	rbp
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
