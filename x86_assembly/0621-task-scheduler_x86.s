	.file	"0621-task-scheduler.c"
	.intel_syntax noprefix
	.text
	.globl	leastInterval
	.type	leastInterval, @function
leastInterval:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 160
	mov	QWORD PTR -152[rbp], rdi
	mov	DWORD PTR -156[rbp], esi
	mov	DWORD PTR -160[rbp], edx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -112[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -132[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -152[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -112[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -112[rbp+rax*4], edx
	add	DWORD PTR -132[rbp], 1
.L2:
	mov	eax, DWORD PTR -132[rbp]
	cmp	eax, DWORD PTR -156[rbp]
	jl	.L3
	mov	DWORD PTR -128[rbp], 0
	mov	DWORD PTR -124[rbp], 0
	mov	DWORD PTR -120[rbp], 0
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -120[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	cmp	DWORD PTR -128[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -120[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	mov	DWORD PTR -128[rbp], eax
	mov	DWORD PTR -124[rbp], 1
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -120[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	cmp	DWORD PTR -128[rbp], eax
	jne	.L6
	add	DWORD PTR -124[rbp], 1
.L6:
	add	DWORD PTR -120[rbp], 1
.L4:
	cmp	DWORD PTR -120[rbp], 25
	jle	.L7
	mov	eax, DWORD PTR -128[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -160[rbp]
	add	eax, 1
	imul	edx, eax
	mov	eax, DWORD PTR -124[rbp]
	add	eax, edx
	mov	DWORD PTR -116[rbp], eax
	mov	edx, DWORD PTR -156[rbp]
	mov	eax, DWORD PTR -116[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	ret
	.size	leastInterval, .-leastInterval
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
