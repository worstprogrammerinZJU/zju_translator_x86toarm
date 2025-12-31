	.file	"1547.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d %d %s"
.LC2:
	.string	"%s took clay from %s.\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 176
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -168[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L7:
	mov	DWORD PTR -152[rbp], 0
	mov	DWORD PTR -148[rbp], 0
	mov	DWORD PTR -156[rbp], 0
	jmp	.L3
.L6:
	lea	rcx, -96[rbp]
	mov	eax, DWORD PTR -156[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rcx, rax
	lea	rdx, -144[rbp]
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	sal	rax, 2
	lea	rsi, [rdx+rax]
	lea	rdx, -160[rbp]
	lea	rax, -164[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	mov	edx, DWORD PTR -144[rbp+rax*4]
	mov	ecx, DWORD PTR -164[rbp]
	mov	eax, DWORD PTR -160[rbp]
	imul	eax, ecx
	imul	edx, eax
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	mov	DWORD PTR -144[rbp+rax*4], edx
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	mov	edx, DWORD PTR -144[rbp+rax*4]
	mov	eax, DWORD PTR -152[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -156[rbp]
	mov	DWORD PTR -152[rbp], eax
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	mov	edx, DWORD PTR -144[rbp+rax*4]
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -156[rbp]
	mov	DWORD PTR -148[rbp], eax
.L5:
	add	DWORD PTR -156[rbp], 1
.L3:
	mov	eax, DWORD PTR -168[rbp]
	cmp	DWORD PTR -156[rbp], eax
	jl	.L6
	lea	rcx, -96[rbp]
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, [rcx+rax]
	lea	rsi, -96[rbp]
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 3
	add	rax, rcx
	add	rax, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -168[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -168[rbp]
	cmp	eax, -1
	jne	.L7
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
