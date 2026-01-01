	.file	"2663.c"
	.intel_syntax noprefix
	.text
	.globl	tri
	.type	tri, @function
tri:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -4[rbp], 3
	cmp	DWORD PTR -20[rbp], 1
	jne	.L2
	mov	eax, 3
	jmp	.L3
.L2:
	mov	DWORD PTR -8[rbp], 1
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -4[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -4[rbp]
	add	eax, eax
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L4:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L5
	mov	eax, DWORD PTR -4[rbp]
.L3:
	pop	rbp
	ret
	.size	tri, .-tri
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"0"
.LC2:
	.string	"1"
.LC3:
	.string	"%d\n"
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
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L7
.L11:
	mov	eax, DWORD PTR -12[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L8
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L10
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edi, eax
	call	tri
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L9:
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L7:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, -1
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
