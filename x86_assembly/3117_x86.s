	.file	"3117.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s%d"
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
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L8:
	mov	DWORD PTR -72[rbp], 0
	mov	DWORD PTR -68[rbp], 0
	jmp	.L3
.L4:
	lea	rdx, -84[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -84[rbp]
	add	DWORD PTR -68[rbp], eax
	add	DWORD PTR -72[rbp], 1
.L3:
	mov	eax, DWORD PTR -80[rbp]
	cmp	DWORD PTR -72[rbp], eax
	jl	.L4
	mov	edx, DWORD PTR -76[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sub	eax, DWORD PTR -68[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rdx, -76[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -80[rbp]
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -76[rbp]
	test	eax, eax
	je	.L6
.L5:
	mov	eax, 1
	jmp	.L7
.L6:
	mov	eax, 0
.L7:
	test	eax, eax
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
