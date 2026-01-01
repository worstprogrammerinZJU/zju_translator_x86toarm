	.file	"2993.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s\n%s\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 496
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 3255307769123515691
	movabs	rdx, 3255307769123515691
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], rdx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], rdx
	mov	QWORD PTR -128[rbp], 43
	mov	DWORD PTR -492[rbp], 0
	jmp	.L2
.L9:
	mov	DWORD PTR -488[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -488[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 124
	add	DWORD PTR -488[rbp], 4
.L3:
	cmp	DWORD PTR -488[rbp], 33
	jle	.L4
	mov	eax, DWORD PTR -492[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	sal	eax, 2
	add	eax, 1
	mov	DWORD PTR -488[rbp], eax
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -488[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 46
	mov	eax, DWORD PTR -488[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 46
	mov	eax, DWORD PTR -488[rbp]
	add	eax, 2
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 46
	add	DWORD PTR -488[rbp], 8
.L5:
	cmp	DWORD PTR -488[rbp], 33
	jle	.L6
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	sal	eax, 2
	add	eax, 1
	mov	DWORD PTR -488[rbp], eax
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -488[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 58
	mov	eax, DWORD PTR -488[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 58
	mov	eax, DWORD PTR -488[rbp]
	add	eax, 2
	movsx	rcx, eax
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 58
	add	DWORD PTR -488[rbp], 8
.L7:
	cmp	DWORD PTR -488[rbp], 33
	jle	.L8
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	sub	rax, 447
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -492[rbp], 1
.L2:
	cmp	DWORD PTR -492[rbp], 7
	jle	.L9
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -492[rbp], 6
	jmp	.L10
.L14:
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 75
	je	.L11
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 81
	je	.L11
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 82
	je	.L11
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 66
	je	.L11
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 78
	jne	.L12
.L11:
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -484[rbp], eax
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -488[rbp], eax
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	edx, BYTE PTR -112[rbp+rax]
	mov	eax, DWORD PTR -484[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -488[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 3
	add	rax, rbp
	add	rax, rsi
	sub	rax, 480
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -492[rbp], 2
	jmp	.L13
.L12:
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 44
	jne	.L13
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 96
	jle	.L13
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 104
	jg	.L13
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -484[rbp], eax
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -488[rbp], eax
	mov	eax, DWORD PTR -484[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -488[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 80
	add	DWORD PTR -492[rbp], 2
.L13:
	add	DWORD PTR -492[rbp], 1
.L10:
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	test	al, al
	jne	.L14
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -492[rbp], 6
	jmp	.L15
.L19:
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 75
	je	.L16
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 81
	je	.L16
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 82
	je	.L16
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 66
	je	.L16
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 78
	jne	.L17
.L16:
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -484[rbp], eax
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -488[rbp], eax
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	add	eax, 32
	mov	ecx, eax
	mov	eax, DWORD PTR -484[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -488[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rsi
	sub	rax, 480
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -492[rbp], 2
	jmp	.L18
.L17:
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 44
	jne	.L18
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 96
	jle	.L18
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 104
	jg	.L18
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -484[rbp], eax
	mov	eax, DWORD PTR -492[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -488[rbp], eax
	mov	eax, DWORD PTR -484[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -488[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 480
	mov	BYTE PTR [rax], 112
	add	DWORD PTR -492[rbp], 2
.L18:
	add	DWORD PTR -492[rbp], 1
.L15:
	mov	eax, DWORD PTR -492[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	test	al, al
	jne	.L19
	mov	DWORD PTR -492[rbp], 0
	jmp	.L20
.L21:
	lea	rcx, -480[rbp]
	mov	eax, DWORD PTR -492[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -492[rbp], 1
.L20:
	cmp	DWORD PTR -492[rbp], 7
	jle	.L21
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
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
