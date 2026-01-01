	.file	"2602.c"
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
	lea	r11, -999424[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 608
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -1000028[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -1000028[rbp]
	sub	eax, 1
	mov	DWORD PTR -1000024[rbp], eax
	jmp	.L2
.L5:
	call	getchar@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -1000024[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	call	getchar@PLT
	call	getchar@PLT
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -1000024[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	mov	ecx, eax
	mov	eax, edx
	add	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -1000024[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	mov	eax, DWORD PTR -1000024[rbp]
	mov	DWORD PTR -1000020[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -1000020[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	sub	eax, 10
	mov	edx, eax
	mov	eax, DWORD PTR -1000020[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	add	DWORD PTR -1000020[rbp], 1
	mov	eax, DWORD PTR -1000020[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	add	eax, 1
	mov	edx, eax
	mov	eax, DWORD PTR -1000020[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
.L3:
	mov	eax, DWORD PTR -1000020[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	cmp	al, 57
	jg	.L4
	call	getchar@PLT
	sub	DWORD PTR -1000024[rbp], 1
.L2:
	cmp	DWORD PTR -1000024[rbp], 0
	jns	.L5
	mov	eax, DWORD PTR -1000028[rbp]
	sub	eax, 1
	mov	DWORD PTR -1000024[rbp], eax
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -1000024[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	sub	DWORD PTR -1000024[rbp], 1
.L6:
	cmp	DWORD PTR -1000024[rbp], 0
	jns	.L7
	mov	edi, 10
	call	putchar@PLT
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
