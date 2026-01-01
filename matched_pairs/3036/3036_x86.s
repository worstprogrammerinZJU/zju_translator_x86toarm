	.file	"3036.c"
	.intel_syntax noprefix
	.text
	.globl	flag1
	.bss
	.align 32
	.type	flag1, @object
	.size	flag1, 2500
flag1:
	.zero	2500
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	flag2
	.align 32
	.type	flag2, @object
	.size	flag2, 2500
flag2:
	.zero	2500
	.text
	.globl	sign
	.type	sign, @function
sign:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	add	ecx, esi
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	add	ecx, esi
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	add	ecx, edx
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	add	ecx, edx
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	add	ecx, esi
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	add	ecx, esi
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	nop
	pop	rbp
	ret
	.size	sign, .-sign
	.globl	copy
	.type	copy, @function
copy:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
.L6:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -4[rbp], 1
.L4:
	cmp	DWORD PTR -4[rbp], 24
	jle	.L5
	add	DWORD PTR -8[rbp], 1
.L3:
	cmp	DWORD PTR -8[rbp], 24
	jle	.L6
	nop
	nop
	pop	rbp
	ret
	.size	copy, .-copy
	.globl	search
	.type	search, @function
search:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 0
	jmp	.L8
.L12:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
.L11:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L10
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	sign
.L10:
	add	DWORD PTR -4[rbp], 1
.L9:
	cmp	DWORD PTR -4[rbp], 24
	jle	.L11
	add	DWORD PTR -8[rbp], 1
.L8:
	cmp	DWORD PTR -8[rbp], 24
	jle	.L12
	mov	eax, 0
	call	copy
	mov	edx, 2500
	mov	esi, 0
	lea	rax, flag1[rip]
	mov	rdi, rax
	call	memset@PLT
	nop
	leave
	ret
	.size	search, .-search
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	solve
	.type	solve, @function
solve:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR n[rip]
	mov	esi, edx
	mov	edi, eax
	call	sign
	mov	eax, 0
	call	copy
	mov	edx, 2500
	mov	esi, 0
	lea	rax, flag1[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 2
	jmp	.L14
.L15:
	mov	eax, 0
	call	search
	add	DWORD PTR -4[rbp], 1
.L14:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L15
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
	.size	solve, .-solve
	.section	.rodata
.LC1:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L17
.L18:
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, 0
	call	solve
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L18
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
