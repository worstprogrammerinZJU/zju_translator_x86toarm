	.file	"2608.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 564049515512064
	movabs	rdx, 72063113138143744
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	movabs	rax, 144116287637947906
	mov	QWORD PTR -32[rbp], rax
	mov	WORD PTR -24[rbp], 512
	jmp	.L2
.L6:
	mov	BYTE PTR -85[rbp], -1
	mov	DWORD PTR -84[rbp], 0
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	test	al, al
	je	.L4
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	BYTE PTR -85[rbp], al
	je	.L4
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L4:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	mov	BYTE PTR -85[rbp], al
	add	DWORD PTR -84[rbp], 1
.L3:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	test	al, al
	jne	.L5
	mov	edi, 10
	call	putchar@PLT
.L2:
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
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
