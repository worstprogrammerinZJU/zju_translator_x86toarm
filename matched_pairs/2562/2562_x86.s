	.file	"2562.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%u%u"
.LC1:
	.string	"No carry operation."
.LC2:
	.string	"%d carry operations.\n"
.LC3:
	.string	"1 carry operation."
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
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L9:
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L5:
	mov	edx, DWORD PTR -20[rbp]
	mov	ecx, edx
	mov	eax, 3435973837
	imul	rax, rcx
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 3
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	esi, DWORD PTR -24[rbp]
	mov	edx, esi
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	mov	edx, eax
	shr	edx, 3
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	esi, eax
	mov	edx, esi
	add	edx, ecx
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 9
	jle	.L4
	add	DWORD PTR -16[rbp], 1
.L4:
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 3
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 3
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
.L3:
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L5
	cmp	DWORD PTR -16[rbp], 0
	jne	.L6
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L6:
	cmp	DWORD PTR -16[rbp], 1
	jle	.L8
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
.L8:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L7:
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
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
