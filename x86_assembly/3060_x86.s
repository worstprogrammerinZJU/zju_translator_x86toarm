	.file	"3060.c"
	.intel_syntax noprefix
	.text
	.globl	same
	.bss
	.align 32
	.type	same, @object
	.size	same, 4000000
same:
	.zero	4000000
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3968
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -8036[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8032[rbp], 0
	jmp	.L2
.L10:
	lea	rax, -8016[rbp]
	mov	edx, 4000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -4016[rbp]
	mov	edx, 4000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 4000000
	mov	esi, 0
	lea	rax, same[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rdx, -8040[rbp]
	lea	rax, -8044[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8028[rbp], 0
	jmp	.L3
.L4:
	lea	rdx, -8048[rbp]
	lea	rax, -8052[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8052[rbp]
	add	eax, 1000000000
	mov	DWORD PTR -8052[rbp], eax
	mov	eax, DWORD PTR -8048[rbp]
	add	eax, 1000000000
	mov	DWORD PTR -8048[rbp], eax
	mov	eax, DWORD PTR -8052[rbp]
	mov	ecx, DWORD PTR -8044[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR -8052[rbp], eax
	mov	eax, DWORD PTR -8048[rbp]
	mov	ecx, DWORD PTR -8044[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR -8048[rbp], eax
	mov	eax, DWORD PTR -8052[rbp]
	mov	edx, DWORD PTR -8048[rbp]
	movsx	rsi, edx
	movsx	rcx, eax
	imul	rcx, rcx, 1000
	add	rcx, rsi
	lea	rsi, 0[0+rcx*4]
	lea	rcx, same[rip]
	mov	ecx, DWORD PTR [rsi+rcx]
	add	ecx, 1
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, same[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8052[rbp]
	movsx	rdx, eax
	mov	edx, DWORD PTR -8016[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -8016[rbp+rax*4], edx
	mov	eax, DWORD PTR -8048[rbp]
	movsx	rdx, eax
	mov	edx, DWORD PTR -4016[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
	add	DWORD PTR -8028[rbp], 1
.L3:
	mov	eax, DWORD PTR -8040[rbp]
	cmp	DWORD PTR -8028[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -8040[rbp]
	mov	DWORD PTR -8020[rbp], eax
	mov	DWORD PTR -8028[rbp], 0
	jmp	.L5
.L9:
	mov	DWORD PTR -8024[rbp], 0
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -8028[rbp]
	cdqe
	mov	edx, DWORD PTR -8016[rbp+rax*4]
	mov	eax, DWORD PTR -8024[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -8024[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8028[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, same[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -8052[rbp], eax
	mov	eax, DWORD PTR -8052[rbp]
	cmp	DWORD PTR -8020[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -8052[rbp]
	mov	DWORD PTR -8020[rbp], eax
.L7:
	add	DWORD PTR -8024[rbp], 1
.L6:
	mov	eax, DWORD PTR -8044[rbp]
	cmp	DWORD PTR -8024[rbp], eax
	jl	.L8
	add	DWORD PTR -8028[rbp], 1
.L5:
	mov	eax, DWORD PTR -8044[rbp]
	cmp	DWORD PTR -8028[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -8020[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8032[rbp], 1
.L2:
	mov	eax, DWORD PTR -8036[rbp]
	cmp	DWORD PTR -8032[rbp], eax
	jl	.L10
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
