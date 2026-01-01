	.file	"1503.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 576
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -560[rbp]
	mov	eax, 0
	mov	ecx, 52
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L7:
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -564[rbp], eax
	mov	DWORD PTR -572[rbp], 0
	mov	eax, DWORD PTR -564[rbp]
	sub	eax, 1
	mov	DWORD PTR -576[rbp], eax
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -572[rbp]
	cdqe
	mov	edx, DWORD PTR -560[rbp+rax*4]
	mov	eax, DWORD PTR -576[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	add	edx, eax
	mov	eax, DWORD PTR -572[rbp]
	cdqe
	mov	DWORD PTR -560[rbp+rax*4], edx
	mov	eax, DWORD PTR -572[rbp]
	mov	DWORD PTR -568[rbp], eax
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -568[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -568[rbp], edx
	movsx	rdx, eax
	mov	edx, DWORD PTR -560[rbp+rdx*4]
	sub	edx, 10
	cdqe
	mov	DWORD PTR -560[rbp+rax*4], edx
	mov	eax, DWORD PTR -568[rbp]
	cdqe
	mov	eax, DWORD PTR -560[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -568[rbp]
	cdqe
	mov	DWORD PTR -560[rbp+rax*4], edx
.L4:
	mov	eax, DWORD PTR -568[rbp]
	cdqe
	mov	eax, DWORD PTR -560[rbp+rax*4]
	cmp	eax, 9
	jg	.L5
	add	DWORD PTR -572[rbp], 1
	sub	DWORD PTR -576[rbp], 1
.L3:
	cmp	DWORD PTR -576[rbp], 0
	jns	.L6
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	movzx	eax, BYTE PTR -128[rbp]
	cmp	al, 48
	jne	.L7
	movzx	eax, BYTE PTR -127[rbp]
	test	al, al
	jne	.L7
	mov	DWORD PTR -576[rbp], 104
	jmp	.L8
.L10:
	sub	DWORD PTR -576[rbp], 1
.L8:
	cmp	DWORD PTR -576[rbp], 0
	jle	.L11
	mov	eax, DWORD PTR -576[rbp]
	cdqe
	mov	eax, DWORD PTR -560[rbp+rax*4]
	test	eax, eax
	je	.L10
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -576[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -576[rbp], edx
	cdqe
	mov	eax, DWORD PTR -560[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L11:
	cmp	DWORD PTR -576[rbp], 0
	jns	.L12
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
