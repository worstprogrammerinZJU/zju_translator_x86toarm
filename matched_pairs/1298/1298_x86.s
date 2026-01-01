	.file	"1298.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"END"
.LC1:
	.string	"START"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 240
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -224[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
.L10:
	lea	rax, -224[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L3
.L9:
	mov	DWORD PTR -228[rbp], 0
	jmp	.L4
.L8:
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	cmp	al, 69
	jle	.L5
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	cmp	al, 90
	jg	.L5
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	movsx	eax, al
	sub	eax, 5
	mov	edi, eax
	call	putchar@PLT
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	cmp	al, 64
	jle	.L7
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	cmp	al, 69
	jg	.L7
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	movsx	eax, al
	add	eax, 21
	mov	edi, eax
	call	putchar@PLT
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
.L6:
	add	DWORD PTR -228[rbp], 1
.L4:
	mov	eax, DWORD PTR -228[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	test	al, al
	jne	.L8
	mov	edi, 10
	call	putchar@PLT
	lea	rax, -224[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
.L3:
	lea	rax, -224[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	lea	rax, -224[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
.L2:
	lea	rax, -224[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L10
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
