	.file	"2533.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
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
	mov	DWORD PTR -4020[rbp], 0
	lea	rax, -4036[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4028[rbp], 0
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -4028[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], 10001
	lea	rax, -4032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4024[rbp], 0
	jmp	.L3
.L4:
	add	DWORD PTR -4024[rbp], 1
.L3:
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4032[rbp]
	cmp	edx, eax
	jl	.L4
	mov	edx, DWORD PTR -4032[rbp]
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
	mov	eax, DWORD PTR -4024[rbp]
	cmp	eax, DWORD PTR -4020[rbp]
	jl	.L5
	mov	eax, DWORD PTR -4024[rbp]
	add	eax, 1
	mov	DWORD PTR -4020[rbp], eax
.L5:
	add	DWORD PTR -4028[rbp], 1
.L2:
	mov	eax, DWORD PTR -4036[rbp]
	cmp	DWORD PTR -4028[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -4020[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
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
