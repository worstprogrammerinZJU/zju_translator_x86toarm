	.file	"1163.c"
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
	sub	rsp, 832
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -820[rbp], 0
	lea	rdx, -816[rbp]
	lea	rax, -832[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -828[rbp], 1
	jmp	.L2
.L5:
	mov	eax, 1
	sub	eax, DWORD PTR -820[rbp]
	mov	DWORD PTR -820[rbp], eax
	lea	rcx, -816[rbp]
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	ecx, DWORD PTR [rax]
	mov	eax, 1
	sub	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	eax, DWORD PTR [rax]
	add	ecx, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	DWORD PTR [rax], ecx
	mov	DWORD PTR -824[rbp], 1
	jmp	.L3
.L4:
	lea	rcx, -816[rbp]
	mov	eax, DWORD PTR -824[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -824[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	esi, DWORD PTR -816[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -820[rbp]
	mov	edx, DWORD PTR -824[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	edx, DWORD PTR -816[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -820[rbp]
	mov	ecx, DWORD PTR -824[rbp]
	sub	ecx, 1
	movsx	rdi, ecx
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	add	rax, rdi
	mov	eax, DWORD PTR -816[rbp+rax*4]
	cmp	edx, eax
	cmovge	eax, edx
	lea	ecx, [rsi+rax]
	mov	eax, DWORD PTR -824[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	DWORD PTR -816[rbp+rax*4], ecx
	add	DWORD PTR -824[rbp], 1
.L3:
	mov	eax, DWORD PTR -824[rbp]
	cmp	eax, DWORD PTR -828[rbp]
	jl	.L4
	lea	rcx, -816[rbp]
	mov	eax, DWORD PTR -828[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -828[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	ecx, DWORD PTR -816[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -820[rbp]
	mov	edx, DWORD PTR -828[rbp]
	sub	edx, 1
	movsx	rsi, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	eax, DWORD PTR -816[rbp+rax*4]
	add	ecx, eax
	mov	eax, DWORD PTR -828[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	DWORD PTR -816[rbp+rax*4], ecx
	add	DWORD PTR -828[rbp], 1
.L2:
	mov	eax, DWORD PTR -832[rbp]
	cmp	DWORD PTR -828[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -824[rbp], eax
	mov	DWORD PTR -828[rbp], 1
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -828[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR -816[rbp+rax*4]
	cmp	DWORD PTR -824[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -828[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -820[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR -816[rbp+rax*4]
	mov	DWORD PTR -824[rbp], eax
.L7:
	add	DWORD PTR -828[rbp], 1
.L6:
	mov	eax, DWORD PTR -832[rbp]
	cmp	DWORD PTR -828[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -824[rbp]
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
