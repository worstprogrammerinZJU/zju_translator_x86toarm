	.file	"1565.c"
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
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L7:
	mov	DWORD PTR -64[rbp], 0
	jmp	.L3
.L4:
	add	DWORD PTR -64[rbp], 1
.L3:
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	test	al, al
	jne	.L4
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	sub	eax, 1
	mov	DWORD PTR -60[rbp], eax
	jmp	.L5
.L6:
	sal	DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, 1
	imul	eax, edx
	add	DWORD PTR -56[rbp], eax
	sub	DWORD PTR -60[rbp], 1
.L5:
	cmp	DWORD PTR -60[rbp], 0
	jns	.L6
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	movzx	eax, BYTE PTR -48[rbp]
	cmp	al, 48
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
