	.file	"3219.c"
	.intel_syntax noprefix
	.text
	.globl	num
	.type	num, @function
num:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	DWORD PTR -4[rbp], eax
.L2:
	cmp	DWORD PTR -20[rbp], 0
	jg	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	num, .-num
	.section	.rodata
.LC0:
	.string	"0"
.LC1:
	.string	"1"
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
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	num
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	num
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	edi, eax
	call	num
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cmp	DWORD PTR -20[rbp], eax
	jle	.L7
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L6
.L7:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L6:
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L8
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
