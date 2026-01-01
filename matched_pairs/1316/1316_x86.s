	.file	"1316.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3312
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -40172[rbp], 1
	lea	rax, -40160[rbp]
	mov	edx, 40144
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -40172[rbp]
	cdqe
	mov	eax, DWORD PTR -40160[rbp+rax*4]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -40172[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L3:
	mov	eax, DWORD PTR -40172[rbp]
	mov	DWORD PTR -40168[rbp], eax
	mov	eax, DWORD PTR -40172[rbp]
	mov	DWORD PTR -40164[rbp], eax
	jmp	.L4
.L5:
	mov	ecx, DWORD PTR -40168[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	add	DWORD PTR -40164[rbp], edx
	mov	eax, DWORD PTR -40168[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -40168[rbp], eax
.L4:
	cmp	DWORD PTR -40168[rbp], 0
	jne	.L5
	mov	eax, DWORD PTR -40164[rbp]
	cdqe
	mov	DWORD PTR -40160[rbp+rax*4], 1
	add	DWORD PTR -40172[rbp], 1
.L2:
	cmp	DWORD PTR -40172[rbp], 9999
	jle	.L6
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
