	.file	"2583.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d %d %d\n"
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
	jmp	.L2
.L3:
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, DWORD PTR -32[rbp]
	sub	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, [rax+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, edx
	sal	eax, 3
	lea	ecx, [rax+rdx]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, edx
	sal	eax, 3
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, edx
	sal	eax, 3
	add	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
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
