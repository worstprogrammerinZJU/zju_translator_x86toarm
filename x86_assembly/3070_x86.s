	.file	"3070.c"
	.intel_syntax noprefix
	.text
	.globl	f
	.bss
	.align 32
	.type	f, @object
	.size	f, 400032
f:
	.zero	400032
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%ld"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR f[rip], 0
	mov	DWORD PTR f[rip+4], 1
	mov	QWORD PTR -24[rbp], 2
	jmp	.L2
.L9:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 1
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 2
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	movsx	rax, edx
	imul	rax, rax, 1759218605
	shr	rax, 32
	sar	eax, 12
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 10000
	mov	eax, edx
	sub	eax, ecx
	mov	rdx, QWORD PTR -24[rbp]
	lea	rcx, 0[0+rdx*4]
	lea	rdx, f[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	QWORD PTR -16[rbp], 0
	jmp	.L3
.L6:
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 1
	lea	rcx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L4
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 1
	lea	rcx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L4
	mov	DWORD PTR -36[rbp], 1
	jmp	.L5
.L4:
	add	QWORD PTR -16[rbp], 1
.L3:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 1
	cmp	QWORD PTR -16[rbp], rax
	jl	.L6
.L5:
	cmp	DWORD PTR -36[rbp], 0
	jne	.L14
	add	QWORD PTR -24[rbp], 1
.L2:
	cmp	QWORD PTR -24[rbp], 100000
	jle	.L9
	jmp	.L10
.L14:
	nop
	jmp	.L10
.L11:
	mov	rcx, QWORD PTR -32[rbp]
	movabs	rdx, 5037190915060954895
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 12
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 15000
	mov	rax, rcx
	sub	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L10:
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, -1
	jne	.L11
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
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
