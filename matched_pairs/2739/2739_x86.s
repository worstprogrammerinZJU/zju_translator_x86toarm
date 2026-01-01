	.file	"2739.c"
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
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 864
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -4928[rbp]
	mov	eax, 0
	mov	ecx, 614
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -4928[rbp], 2
	mov	DWORD PTR -4924[rbp], 3
	mov	DWORD PTR -4936[rbp], 2
	mov	DWORD PTR -4944[rbp], 5
	jmp	.L2
.L8:
	mov	DWORD PTR -4940[rbp], 1
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -4940[rbp]
	cdqe
	mov	ecx, DWORD PTR -4928[rbp+rax*4]
	mov	eax, DWORD PTR -4944[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L23
	add	DWORD PTR -4940[rbp], 1
.L3:
	mov	eax, DWORD PTR -4940[rbp]
	cmp	eax, DWORD PTR -4936[rbp]
	jl	.L6
	jmp	.L5
.L23:
	nop
.L5:
	mov	eax, DWORD PTR -4940[rbp]
	cmp	eax, DWORD PTR -4936[rbp]
	jne	.L7
	mov	eax, DWORD PTR -4936[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4936[rbp], edx
	cdqe
	mov	edx, DWORD PTR -4944[rbp]
	mov	DWORD PTR -4928[rbp+rax*4], edx
.L7:
	add	DWORD PTR -4944[rbp], 2
.L2:
	cmp	DWORD PTR -4944[rbp], 9999
	jle	.L8
	lea	rax, -4948[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L9
.L20:
	mov	DWORD PTR -4932[rbp], 0
	mov	DWORD PTR -4944[rbp], 0
	mov	DWORD PTR -4936[rbp], 0
	mov	DWORD PTR -4940[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -4944[rbp]
	cdqe
	mov	eax, DWORD PTR -4928[rbp+rax*4]
	add	DWORD PTR -4936[rbp], eax
	add	DWORD PTR -4944[rbp], 1
.L10:
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -4936[rbp], eax
	jl	.L11
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -4940[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4940[rbp], edx
	cdqe
	mov	eax, DWORD PTR -4928[rbp+rax*4]
	sub	DWORD PTR -4936[rbp], eax
.L12:
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -4936[rbp], eax
	jg	.L13
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -4936[rbp], eax
	jne	.L15
	add	DWORD PTR -4932[rbp], 1
	jmp	.L15
.L19:
	mov	eax, DWORD PTR -4944[rbp]
	cdqe
	mov	eax, DWORD PTR -4928[rbp+rax*4]
	add	DWORD PTR -4936[rbp], eax
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -4940[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4940[rbp], edx
	cdqe
	mov	eax, DWORD PTR -4928[rbp+rax*4]
	sub	DWORD PTR -4936[rbp], eax
.L16:
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -4936[rbp], eax
	jg	.L17
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -4936[rbp], eax
	jne	.L18
	add	DWORD PTR -4932[rbp], 1
.L18:
	add	DWORD PTR -4944[rbp], 1
.L15:
	mov	eax, DWORD PTR -4944[rbp]
	cdqe
	mov	edx, DWORD PTR -4928[rbp+rax*4]
	mov	eax, DWORD PTR -4948[rbp]
	cmp	edx, eax
	jle	.L19
	mov	eax, DWORD PTR -4932[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -4948[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L9:
	mov	eax, DWORD PTR -4948[rbp]
	test	eax, eax
	jne	.L20
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
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
