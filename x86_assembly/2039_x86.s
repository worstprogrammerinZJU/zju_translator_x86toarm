	.file	"2039.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2032
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -2032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L10:
	call	getchar@PLT
	mov	DWORD PTR -2028[rbp], 0
	mov	DWORD PTR -2024[rbp], 0
	mov	DWORD PTR -2020[rbp], 1
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -2020[rbp]
	add	DWORD PTR -2024[rbp], eax
	mov	eax, DWORD PTR -2032[rbp]
	cmp	DWORD PTR -2024[rbp], eax
	je	.L4
	cmp	DWORD PTR -2024[rbp], -1
	jne	.L3
.L4:
	neg	DWORD PTR -2020[rbp]
	mov	eax, DWORD PTR -2020[rbp]
	add	DWORD PTR -2024[rbp], eax
	add	DWORD PTR -2028[rbp], 1
.L3:
	call	getchar@PLT
	mov	ecx, eax
	mov	eax, DWORD PTR -2024[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -2028[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	add	rax, rsi
	sub	rax, 2016
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -2024[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -2028[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	add	rax, rcx
	sub	rax, 2016
	movzx	eax, BYTE PTR [rax]
	cmp	al, 10
	jne	.L5
	mov	DWORD PTR -2024[rbp], 0
	jmp	.L6
.L9:
	mov	DWORD PTR -2020[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -2024[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -2020[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	add	rax, rcx
	sub	rax, 2016
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -2020[rbp], 1
.L7:
	mov	eax, DWORD PTR -2020[rbp]
	cmp	eax, DWORD PTR -2028[rbp]
	jl	.L8
	add	DWORD PTR -2024[rbp], 1
.L6:
	mov	eax, DWORD PTR -2032[rbp]
	cmp	DWORD PTR -2024[rbp], eax
	jl	.L9
	mov	edi, 10
	call	putchar@PLT
	lea	rax, -2032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -2032[rbp]
	test	eax, eax
	jne	.L10
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
