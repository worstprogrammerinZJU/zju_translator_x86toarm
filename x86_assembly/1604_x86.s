	.file	"1604.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%5d -> %d\n"
.LC1:
	.string	"%d"
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
	sub	rsp, 3168
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -40016[rbp]
	mov	edx, 40000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -40016[rbp], 1
	mov	DWORD PTR -40020[rbp], 1
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -40020[rbp]
	sub	eax, 1
	cdqe
	mov	ecx, DWORD PTR -40016[rbp+rax*4]
	mov	edx, DWORD PTR -40020[rbp]
	mov	eax, DWORD PTR -40020[rbp]
	imul	edx, ecx
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -40020[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	ecx, DWORD PTR -40020[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	sub	edx, eax
	movsx	rax, ecx
	mov	DWORD PTR -40016[rbp+rax*4], edx
.L3:
	mov	eax, DWORD PTR -40020[rbp]
	cdqe
	mov	ecx, DWORD PTR -40016[rbp+rax*4]
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
	test	edx, edx
	je	.L4
	mov	eax, DWORD PTR -40020[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	ecx, DWORD PTR -40020[rbp]
	movsx	rax, edx
	imul	rax, rax, 351843721
	shr	rax, 32
	sar	eax, 13
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	imul	esi, eax, 100000
	mov	eax, edx
	sub	eax, esi
	movsx	rdx, ecx
	mov	DWORD PTR -40016[rbp+rdx*4], eax
	mov	eax, DWORD PTR -40020[rbp]
	add	eax, 1
	mov	DWORD PTR -40020[rbp], eax
.L2:
	mov	eax, DWORD PTR -40020[rbp]
	cmp	eax, 9999
	jle	.L5
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -40020[rbp]
	cdqe
	mov	ecx, DWORD PTR -40016[rbp+rax*4]
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
	mov	eax, DWORD PTR -40020[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L6:
	lea	rax, -40020[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
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
