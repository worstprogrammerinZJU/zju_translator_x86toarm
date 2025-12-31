	.file	"1363.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"No"
.LC2:
	.string	"Yes"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -4032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L19:
	lea	rax, -4016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L3
.L18:
	mov	DWORD PTR -4028[rbp], 1
	jmp	.L4
.L5:
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4028[rbp], 1
.L4:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jl	.L5
	mov	DWORD PTR -4028[rbp], 0
	jmp	.L6
.L15:
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -4020[rbp], eax
	mov	eax, DWORD PTR -4028[rbp]
	add	eax, 1
	mov	DWORD PTR -4024[rbp], eax
	jmp	.L7
.L12:
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	jg	.L22
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	DWORD PTR -4020[rbp], eax
	jle	.L23
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -4020[rbp], eax
	jmp	.L9
.L22:
	nop
.L9:
	add	DWORD PTR -4024[rbp], 1
.L7:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4024[rbp], eax
	jl	.L12
	jmp	.L11
.L23:
	nop
.L11:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4024[rbp], eax
	jl	.L24
	add	DWORD PTR -4028[rbp], 1
.L6:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jl	.L15
	jmp	.L14
.L24:
	nop
.L14:
	mov	eax, DWORD PTR -4032[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jge	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L17
.L16:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L17:
	lea	rax, -4016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L3:
	mov	eax, DWORD PTR -4016[rbp]
	test	eax, eax
	jne	.L18
	mov	edi, 10
	call	putchar@PLT
	lea	rax, -4032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -4032[rbp]
	test	eax, eax
	jne	.L19
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
