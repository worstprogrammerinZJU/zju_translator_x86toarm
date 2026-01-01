	.file	"3090.c"
	.intel_syntax noprefix
	.text
	.globl	eulerphi
	.type	eulerphi, @function
eulerphi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L2
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
.L3:
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L3
.L2:
	mov	DWORD PTR -4[rbp], 3
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	sub	DWORD PTR -8[rbp], eax
.L6:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L6
.L5:
	add	DWORD PTR -4[rbp], 2
.L4:
	cmp	DWORD PTR -20[rbp], 1
	jg	.L7
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	eulerphi, .-eulerphi
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 4040
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rdx, -4032[rbp]
	mov	eax, 0
	mov	ecx, 500
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -4036[rbp], 1
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -4036[rbp]
	cdqe
	mov	ebx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -4036[rbp]
	add	eax, 1
	mov	edi, eax
	call	eulerphi
	mov	edx, eax
	mov	eax, DWORD PTR -4036[rbp]
	add	eax, 1
	add	edx, ebx
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], edx
	mov	eax, DWORD PTR -4036[rbp]
	cdqe
	mov	edx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -4036[rbp]
	cdqe
	mov	eax, DWORD PTR -4032[rbp+rax*4]
	add	eax, 3
	add	edx, eax
	mov	eax, DWORD PTR -4036[rbp]
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], edx
	add	DWORD PTR -4036[rbp], 1
.L10:
	cmp	DWORD PTR -4036[rbp], 999
	jle	.L11
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, 3
	add	eax, edx
	mov	DWORD PTR -32[rbp], eax
	lea	rax, -4044[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4036[rbp], 1
	jmp	.L12
.L13:
	lea	rax, -4040[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4040[rbp]
	cdqe
	mov	ecx, DWORD PTR -4032[rbp+rax*4]
	mov	edx, DWORD PTR -4040[rbp]
	mov	eax, DWORD PTR -4036[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4036[rbp], 1
.L12:
	mov	eax, DWORD PTR -4044[rbp]
	cmp	DWORD PTR -4036[rbp], eax
	jle	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	mov	rbx, QWORD PTR -8[rbp]
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
