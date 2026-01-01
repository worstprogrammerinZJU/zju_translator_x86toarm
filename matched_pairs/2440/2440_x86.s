	.file	"2440.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d"
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
	lea	rdx, -816[rbp]
	mov	eax, 0
	mov	ecx, 100
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -816[rbp], 1
	mov	DWORD PTR -812[rbp], 2
	mov	DWORD PTR -808[rbp], 4
	mov	DWORD PTR -804[rbp], 6
	mov	DWORD PTR -820[rbp], 4
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -820[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -816[rbp+rax*4]
	mov	eax, DWORD PTR -820[rbp]
	sub	eax, 3
	cdqe
	mov	eax, DWORD PTR -816[rbp+rax*4]
	add	edx, eax
	mov	eax, DWORD PTR -820[rbp]
	sub	eax, 4
	cdqe
	mov	eax, DWORD PTR -816[rbp+rax*4]
	add	edx, eax
	movsx	rax, edx
	imul	rax, rax, 137096213
	shr	rax, 32
	sar	eax, 6
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 2005
	mov	eax, edx
	sub	eax, ecx
	mov	edx, DWORD PTR -820[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -816[rbp+rdx*4], eax
	add	DWORD PTR -820[rbp], 1
.L2:
	cmp	DWORD PTR -820[rbp], 199
	jle	.L3
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -824[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 6
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 200
	sub	eax, ecx
	mov	edx, eax
	movsx	rax, edx
	mov	eax, DWORD PTR -816[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L4:
	lea	rax, -824[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
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
