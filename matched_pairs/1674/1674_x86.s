	.file	"1674.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3200
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -40052[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -40044[rbp], 0
	jmp	.L2
.L8:
	lea	rax, -40048[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -40040[rbp], 1
	jmp	.L3
.L4:
	lea	rdx, -40032[rbp]
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	movzx	eax, WORD PTR -40032[rbp+rax*2]
	cwde
	mov	edx, DWORD PTR -40040[rbp]
	cdqe
	mov	WORD PTR -20016[rbp+rax*2], dx
	add	DWORD PTR -40040[rbp], 1
.L3:
	mov	eax, DWORD PTR -40048[rbp]
	cmp	DWORD PTR -40040[rbp], eax
	jle	.L4
	mov	DWORD PTR -40036[rbp], 0
	mov	DWORD PTR -40040[rbp], 1
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	movzx	eax, WORD PTR -40032[rbp+rax*2]
	cwde
	cmp	DWORD PTR -40040[rbp], eax
	je	.L6
	add	DWORD PTR -40036[rbp], 1
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	movzx	eax, WORD PTR -20016[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	movzx	edx, WORD PTR -40032[rbp+rax*2]
	movsx	rax, ecx
	mov	WORD PTR -40032[rbp+rax*2], dx
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	movzx	eax, WORD PTR -40032[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, DWORD PTR -40040[rbp]
	cdqe
	movzx	edx, WORD PTR -20016[rbp+rax*2]
	movsx	rax, ecx
	mov	WORD PTR -20016[rbp+rax*2], dx
.L6:
	add	DWORD PTR -40040[rbp], 1
.L5:
	mov	eax, DWORD PTR -40048[rbp]
	cmp	DWORD PTR -40040[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -40036[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -40044[rbp], 1
.L2:
	mov	eax, DWORD PTR -40052[rbp]
	cmp	DWORD PTR -40044[rbp], eax
	jl	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
