	.file	"1862.c"
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
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L9
	mov	eax, 1
	jmp	.L4
.L9:
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L10
	mov	eax, -1
	jmp	.L4
.L10:
	mov	eax, 0
.L4:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%lf"
.LC2:
	.string	"%.3lf\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 832
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -824[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -820[rbp], 0
	jmp	.L12
.L13:
	lea	rdx, -816[rbp]
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -820[rbp], 1
.L12:
	mov	eax, DWORD PTR -824[rbp]
	cmp	DWORD PTR -820[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -824[rbp]
	movsx	rsi, eax
	lea	rax, -816[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -820[rbp], 1
	jmp	.L14
.L15:
	movsd	xmm1, QWORD PTR -816[rbp]
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -816[rbp+rax*8]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	addsd	xmm0, xmm0
	movsd	QWORD PTR -816[rbp], xmm0
	add	DWORD PTR -820[rbp], 1
.L14:
	mov	eax, DWORD PTR -824[rbp]
	cmp	DWORD PTR -820[rbp], eax
	jl	.L15
	mov	rax, QWORD PTR -816[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
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
