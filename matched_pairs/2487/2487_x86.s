	.file	"2487.c"
	.intel_syntax noprefix
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
.L4:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"Scenario #%d:\n"
.LC3:
	.string	"impossible\n"
.LC4:
	.string	"%d\n\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4048
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -4036[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4028[rbp], 1
	jmp	.L6
.L15:
	lea	rdx, -4040[rbp]
	lea	rax, -4032[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4024[rbp], 0
	jmp	.L7
.L8:
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4024[rbp], 1
.L7:
	mov	eax, DWORD PTR -4040[rbp]
	cmp	DWORD PTR -4024[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -4040[rbp]
	movsx	rsi, eax
	lea	rax, -4016[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4024[rbp], 0
	mov	DWORD PTR -4020[rbp], 0
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	add	DWORD PTR -4020[rbp], eax
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4020[rbp], eax
	jge	.L18
	add	DWORD PTR -4024[rbp], 1
.L9:
	mov	eax, DWORD PTR -4040[rbp]
	cmp	DWORD PTR -4024[rbp], eax
	jl	.L12
	jmp	.L11
.L18:
	nop
.L11:
	mov	eax, DWORD PTR -4028[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4040[rbp]
	cmp	DWORD PTR -4024[rbp], eax
	jne	.L13
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L14
.L13:
	mov	eax, DWORD PTR -4024[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L14:
	add	DWORD PTR -4028[rbp], 1
.L6:
	mov	eax, DWORD PTR -4036[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jle	.L15
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
