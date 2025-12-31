	.file	"2897.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -440[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -428[rbp], 0
	jmp	.L2
.L12:
	lea	rdx, -432[rbp]
	lea	rax, -436[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -436[rbp]
	mov	eax, DWORD PTR -432[rbp]
	cmp	edx, eax
	jle	.L3
	mov	edi, 48
	call	putchar@PLT
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -436[rbp]
	cmp	eax, 1
	jne	.L5
	mov	eax, DWORD PTR -432[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -432[rbp]
	mov	esi, DWORD PTR -436[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -416[rbp], eax
	mov	eax, DWORD PTR -432[rbp]
	mov	ecx, DWORD PTR -436[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -416[rbp]
	add	eax, edx
	mov	DWORD PTR -420[rbp], eax
	mov	DWORD PTR -424[rbp], 1
	jmp	.L6
.L9:
	mov	ecx, DWORD PTR -436[rbp]
	mov	eax, DWORD PTR -420[rbp]
	cdq
	idiv	ecx
	mov	edx, eax
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	mov	DWORD PTR -416[rbp+rax*4], edx
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	mov	edx, DWORD PTR -416[rbp+rax*4]
	mov	eax, DWORD PTR -432[rbp]
	cmp	edx, eax
	jne	.L7
	mov	ecx, DWORD PTR -436[rbp]
	mov	eax, DWORD PTR -420[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L15
.L7:
	mov	ecx, DWORD PTR -436[rbp]
	mov	eax, DWORD PTR -420[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	add	eax, edx
	mov	DWORD PTR -420[rbp], eax
	add	DWORD PTR -424[rbp], 1
.L6:
	cmp	DWORD PTR -424[rbp], 99
	jle	.L9
	jmp	.L8
.L15:
	nop
.L8:
	mov	DWORD PTR -432[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -432[rbp]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -432[rbp]
	add	eax, 1
	mov	DWORD PTR -432[rbp], eax
.L10:
	mov	eax, DWORD PTR -432[rbp]
	cmp	DWORD PTR -424[rbp], eax
	jge	.L11
.L4:
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -428[rbp], 1
.L2:
	mov	eax, DWORD PTR -440[rbp]
	cmp	DWORD PTR -428[rbp], eax
	jl	.L12
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
