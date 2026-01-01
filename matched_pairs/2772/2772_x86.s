	.file	"2772.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d%d"
.LC2:
	.string	"%d%d"
.LC3:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4064
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -4044[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4036[rbp], 0
	jmp	.L2
.L15:
	lea	rcx, -4052[rbp]
	lea	rdx, -4048[rbp]
	lea	rax, -4056[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4020[rbp], 0
	mov	DWORD PTR -4032[rbp], 0
	jmp	.L3
.L7:
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, [rdx+rax]
	lea	rax, -4040[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -4040[rbp]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -4052[rbp]
	test	eax, eax
	jle	.L4
	mov	eax, DWORD PTR -4052[rbp]
	sub	eax, 1
	mov	DWORD PTR -4052[rbp], eax
	mov	DWORD PTR -4040[rbp], 1
.L4:
	mov	eax, DWORD PTR -4040[rbp]
	cmp	eax, 1
	jne	.L5
	mov	edx, DWORD PTR -4048[rbp]
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	ecx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	cmp	DWORD PTR -4020[rbp], eax
	jge	.L6
	mov	edx, DWORD PTR -4048[rbp]
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	ecx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4020[rbp], eax
.L6:
	mov	eax, DWORD PTR -4048[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	sub	edx, eax
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
.L5:
	add	DWORD PTR -4032[rbp], 1
.L3:
	mov	eax, DWORD PTR -4056[rbp]
	cmp	DWORD PTR -4032[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -4052[rbp]
	mov	esi, DWORD PTR -4056[rbp]
	cdq
	idiv	esi
	mov	edx, eax
	mov	eax, DWORD PTR -4048[rbp]
	imul	eax, edx
	add	eax, eax
	mov	DWORD PTR -4024[rbp], eax
	mov	eax, DWORD PTR -4052[rbp]
	mov	ecx, DWORD PTR -4056[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR -4052[rbp], eax
	mov	eax, DWORD PTR -4052[rbp]
	test	eax, eax
	je	.L8
	mov	DWORD PTR -4032[rbp], 0
	jmp	.L9
.L13:
	mov	eax, DWORD PTR -4032[rbp]
	add	eax, 1
	mov	DWORD PTR -4028[rbp], eax
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	jle	.L11
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -4040[rbp], eax
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
	mov	edx, DWORD PTR -4040[rbp]
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
.L11:
	add	DWORD PTR -4028[rbp], 1
.L10:
	mov	eax, DWORD PTR -4056[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jl	.L12
	add	DWORD PTR -4032[rbp], 1
.L9:
	mov	eax, DWORD PTR -4052[rbp]
	cmp	DWORD PTR -4032[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -4052[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4048[rbp]
	add	eax, edx
	add	DWORD PTR -4024[rbp], eax
	jmp	.L14
.L8:
	mov	eax, DWORD PTR -4020[rbp]
	add	DWORD PTR -4024[rbp], eax
.L14:
	mov	eax, DWORD PTR -4024[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4036[rbp], 1
.L2:
	mov	eax, DWORD PTR -4044[rbp]
	cmp	DWORD PTR -4036[rbp], eax
	jl	.L15
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
