	.file	"3425.c"
	.intel_syntax noprefix
	.text
	.globl	N
	.bss
	.align 4
	.type	N, @object
	.size	N, 4
N:
	.zero	4
	.globl	question
	.align 32
	.type	question, @object
	.size	question, 4000004
question:
	.zero	4000004
	.globl	sum
	.align 4
	.type	sum, @object
	.size	sum, 4
sum:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d%d%d"
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
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
.L6:
	lea	rcx, -16[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR sum[rip]
	add	eax, 10
	mov	DWORD PTR sum[rip], eax
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, question[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR sum[rip]
	add	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, question[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, question[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jne	.L5
	mov	eax, DWORD PTR sum[rip]
	add	eax, 40
	mov	DWORD PTR sum[rip], eax
	jmp	.L4
.L5:
	mov	eax, DWORD PTR sum[rip]
	add	eax, 20
	mov	DWORD PTR sum[rip], eax
.L4:
	add	DWORD PTR -12[rbp], 1
.L2:
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR sum[rip]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
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
