	.file	"1519.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
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
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 1840
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -10016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L6:
	mov	DWORD PTR -10024[rbp], 0
	mov	DWORD PTR -10020[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -10020[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -10020[rbp], edx
	cdqe
	movzx	eax, BYTE PTR -10016[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	add	DWORD PTR -10024[rbp], eax
.L3:
	mov	eax, DWORD PTR -10020[rbp]
	cdqe
	movzx	eax, BYTE PTR -10016[rbp+rax]
	test	al, al
	jne	.L4
	mov	eax, DWORD PTR -10024[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 954437177
	shr	rdx, 32
	sar	edx
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	sal	edx, 3
	add	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -10024[rbp], eax
	cmp	DWORD PTR -10024[rbp], 0
	jne	.L5
	mov	DWORD PTR -10024[rbp], 9
.L5:
	mov	eax, DWORD PTR -10024[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -10016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	movzx	eax, BYTE PTR -10016[rbp]
	cmp	al, 48
	jne	.L6
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
