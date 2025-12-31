	.file	"3176.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n%d"
.LC1:
	.string	"%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -4020[rbp], 0
	lea	rdx, -4016[rbp]
	lea	rax, -4032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4028[rbp], 1
	jmp	.L2
.L5:
	mov	eax, 1
	sub	eax, DWORD PTR -4020[rbp]
	mov	DWORD PTR -4020[rbp], eax
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	edx, DWORD PTR [rax]
	mov	eax, 1
	sub	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	eax, DWORD PTR [rax]
	add	edx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -4024[rbp], 1
	jmp	.L3
.L4:
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4024[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4024[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	esi, DWORD PTR -4016[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -4020[rbp]
	mov	edx, DWORD PTR -4024[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -4020[rbp]
	mov	ecx, DWORD PTR -4024[rbp]
	sub	ecx, 1
	movsx	rcx, ecx
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	cmovge	eax, edx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -4024[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	mov	DWORD PTR -4016[rbp+rax*4], edx
	add	DWORD PTR -4024[rbp], 1
.L3:
	mov	eax, DWORD PTR -4024[rbp]
	cmp	eax, DWORD PTR -4028[rbp]
	jl	.L4
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4028[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4028[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	ecx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -4020[rbp]
	mov	edx, DWORD PTR -4028[rbp]
	sub	edx, 1
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -4028[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	mov	DWORD PTR -4016[rbp+rax*4], edx
	add	DWORD PTR -4028[rbp], 1
.L2:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4024[rbp], eax
	mov	DWORD PTR -4028[rbp], 1
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -4028[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	DWORD PTR -4024[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -4028[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4020[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -4024[rbp], eax
.L7:
	add	DWORD PTR -4028[rbp], 1
.L6:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -4024[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
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
