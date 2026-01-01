	.file	"26A.cpp"
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
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2752
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -15036[rbp], 0
	lea	rax, -15040[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rdx, -15024[rbp]
	mov	eax, 0
	mov	ecx, 375
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	BYTE PTR [rdx], al
	add	rdx, 1
	lea	rax, -12016[rbp]
	mov	edx, 12004
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -15032[rbp], 2
	jmp	.L2
.L7:
	mov	eax, DWORD PTR -15032[rbp]
	cdqe
	movzx	eax, BYTE PTR -15024[rbp+rax]
	xor	eax, 1
	test	al, al
	je	.L3
	mov	eax, DWORD PTR -15032[rbp]
	add	eax, eax
	mov	DWORD PTR -15028[rbp], eax
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -15028[rbp]
	cdqe
	mov	BYTE PTR -15024[rbp+rax], 1
	mov	eax, DWORD PTR -15028[rbp]
	cdqe
	mov	eax, DWORD PTR -12016[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -15028[rbp]
	cdqe
	mov	DWORD PTR -12016[rbp+rax*4], edx
	mov	eax, DWORD PTR -15032[rbp]
	add	DWORD PTR -15028[rbp], eax
.L4:
	mov	eax, DWORD PTR -15040[rbp]
	cmp	DWORD PTR -15028[rbp], eax
	jle	.L5
.L3:
	mov	eax, DWORD PTR -15032[rbp]
	cdqe
	mov	eax, DWORD PTR -12016[rbp+rax*4]
	cmp	eax, 2
	jne	.L6
	add	DWORD PTR -15036[rbp], 1
.L6:
	add	DWORD PTR -15032[rbp], 1
.L2:
	mov	eax, DWORD PTR -15040[rbp]
	cmp	DWORD PTR -15032[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -15036[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
