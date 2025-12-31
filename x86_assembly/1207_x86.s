	.file	"1207.c"
	.intel_syntax noprefix
	.text
	.globl	pro
	.type	pro, @function
pro:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	sar	DWORD PTR -20[rbp]
	jmp	.L4
.L3:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
.L4:
	add	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -20[rbp], 1
	jne	.L5
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	pro, .-pro
	.section	.rodata
.LC0:
	.string	"%d %d "
.LC1:
	.string	"%d\n"
.LC2:
	.string	"%d%d"
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
	jmp	.L8
.L13:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L9
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -28[rbp], eax
.L9:
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -16[rbp], 1
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	pro
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jle	.L11
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
.L11:
	add	DWORD PTR -20[rbp], 1
.L10:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L8:
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
