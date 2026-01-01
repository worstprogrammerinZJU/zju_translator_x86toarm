	.file	"2287.c"
	.intel_syntax noprefix
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
.L4:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	cmp, .-cmp
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
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3952
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -8040[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
.L21:
	mov	DWORD PTR -8036[rbp], 0
	jmp	.L7
.L8:
	lea	rdx, -8016[rbp]
	mov	eax, DWORD PTR -8036[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8036[rbp], 1
.L7:
	mov	eax, DWORD PTR -8040[rbp]
	cmp	DWORD PTR -8036[rbp], eax
	jl	.L8
	mov	DWORD PTR -8036[rbp], 0
	jmp	.L9
.L10:
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -8036[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8036[rbp], 1
.L9:
	mov	eax, DWORD PTR -8040[rbp]
	cmp	DWORD PTR -8036[rbp], eax
	jl	.L10
	mov	eax, DWORD PTR -8040[rbp]
	movsx	rsi, eax
	lea	rax, -8016[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	eax, DWORD PTR -8040[rbp]
	movsx	rsi, eax
	lea	rax, -4016[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -8036[rbp], 0
	jmp	.L11
.L13:
	add	DWORD PTR -8036[rbp], 1
.L11:
	mov	edx, DWORD PTR -8016[rbp]
	mov	eax, DWORD PTR -8036[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	jge	.L12
	mov	eax, DWORD PTR -8040[rbp]
	cmp	DWORD PTR -8036[rbp], eax
	jl	.L13
.L12:
	mov	eax, DWORD PTR -8040[rbp]
	imul	eax, eax, -200
	mov	DWORD PTR -8024[rbp], eax
	jmp	.L14
.L20:
	mov	eax, DWORD PTR -8036[rbp]
	imul	eax, eax, -200
	mov	DWORD PTR -8020[rbp], eax
	mov	eax, DWORD PTR -8036[rbp]
	mov	DWORD PTR -8032[rbp], eax
	mov	DWORD PTR -8028[rbp], 0
	jmp	.L15
.L18:
	mov	eax, DWORD PTR -8028[rbp]
	cdqe
	mov	edx, DWORD PTR -8016[rbp+rax*4]
	mov	eax, DWORD PTR -8032[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	jle	.L16
	add	DWORD PTR -8020[rbp], 200
	jmp	.L17
.L16:
	mov	eax, DWORD PTR -8028[rbp]
	cdqe
	mov	edx, DWORD PTR -8016[rbp+rax*4]
	mov	eax, DWORD PTR -8032[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	jge	.L17
	sub	DWORD PTR -8020[rbp], 200
.L17:
	add	DWORD PTR -8032[rbp], 1
	add	DWORD PTR -8028[rbp], 1
.L15:
	mov	eax, DWORD PTR -8040[rbp]
	cmp	DWORD PTR -8032[rbp], eax
	jl	.L18
	mov	eax, DWORD PTR -8020[rbp]
	cmp	eax, DWORD PTR -8024[rbp]
	jle	.L19
	mov	eax, DWORD PTR -8020[rbp]
	mov	DWORD PTR -8024[rbp], eax
.L19:
	add	DWORD PTR -8036[rbp], 1
.L14:
	mov	eax, DWORD PTR -8040[rbp]
	cmp	DWORD PTR -8036[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR -8024[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -8040[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L6:
	mov	eax, DWORD PTR -8040[rbp]
	test	eax, eax
	jne	.L21
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
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
