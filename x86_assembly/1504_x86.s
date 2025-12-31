	.file	"1504.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s %s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 464
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -456[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -452[rbp], 0
	jmp	.L2
.L29:
	lea	rdx, -320[rbp]
	lea	rax, -432[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -208[rbp]
	mov	edx, 200
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -448[rbp], 0
	jmp	.L3
.L4:
	add	DWORD PTR -448[rbp], 1
.L3:
	mov	eax, DWORD PTR -448[rbp]
	cdqe
	movzx	eax, BYTE PTR -432[rbp+rax]
	cmp	al, 48
	je	.L4
	mov	eax, DWORD PTR -448[rbp]
	mov	DWORD PTR -444[rbp], eax
	jmp	.L5
.L6:
	add	DWORD PTR -444[rbp], 1
.L5:
	mov	eax, DWORD PTR -444[rbp]
	cdqe
	movzx	eax, BYTE PTR -432[rbp+rax]
	test	al, al
	jne	.L6
	sub	DWORD PTR -444[rbp], 1
	jmp	.L7
.L9:
	sub	DWORD PTR -444[rbp], 1
.L7:
	mov	eax, DWORD PTR -444[rbp]
	cmp	eax, DWORD PTR -448[rbp]
	jl	.L8
	mov	eax, DWORD PTR -444[rbp]
	cdqe
	movzx	eax, BYTE PTR -432[rbp+rax]
	cmp	al, 48
	je	.L9
.L8:
	mov	DWORD PTR -440[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -440[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -440[rbp], edx
	movsx	rdx, eax
	movzx	edx, BYTE PTR -208[rbp+rdx]
	mov	ecx, edx
	mov	edx, DWORD PTR -448[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -432[rbp+rdx]
	add	edx, ecx
	sub	edx, 48
	cdqe
	mov	BYTE PTR -208[rbp+rax], dl
	add	DWORD PTR -448[rbp], 1
.L10:
	mov	eax, DWORD PTR -444[rbp]
	cmp	eax, DWORD PTR -448[rbp]
	jge	.L11
	mov	DWORD PTR -448[rbp], 0
	jmp	.L12
.L13:
	add	DWORD PTR -448[rbp], 1
.L12:
	mov	eax, DWORD PTR -448[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	cmp	al, 48
	je	.L13
	mov	eax, DWORD PTR -448[rbp]
	mov	DWORD PTR -444[rbp], eax
	jmp	.L14
.L15:
	add	DWORD PTR -444[rbp], 1
.L14:
	mov	eax, DWORD PTR -444[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	test	al, al
	jne	.L15
	sub	DWORD PTR -444[rbp], 1
	jmp	.L16
.L18:
	sub	DWORD PTR -444[rbp], 1
.L16:
	mov	eax, DWORD PTR -444[rbp]
	cmp	eax, DWORD PTR -448[rbp]
	jl	.L17
	mov	eax, DWORD PTR -444[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	cmp	al, 48
	je	.L18
.L17:
	mov	DWORD PTR -440[rbp], 0
	jmp	.L19
.L22:
	mov	eax, DWORD PTR -440[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	mov	edx, eax
	mov	eax, DWORD PTR -448[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	add	eax, edx
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -440[rbp]
	cdqe
	mov	BYTE PTR -208[rbp+rax], dl
	mov	eax, DWORD PTR -440[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -440[rbp], edx
	mov	DWORD PTR -436[rbp], eax
	jmp	.L20
.L21:
	mov	eax, DWORD PTR -436[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -436[rbp], edx
	movsx	rdx, eax
	movzx	edx, BYTE PTR -208[rbp+rdx]
	sub	edx, 10
	cdqe
	mov	BYTE PTR -208[rbp+rax], dl
	mov	eax, DWORD PTR -436[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	add	eax, 1
	mov	edx, eax
	mov	eax, DWORD PTR -436[rbp]
	cdqe
	mov	BYTE PTR -208[rbp+rax], dl
.L20:
	mov	eax, DWORD PTR -436[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 9
	jg	.L21
	add	DWORD PTR -448[rbp], 1
.L19:
	mov	eax, DWORD PTR -444[rbp]
	cmp	eax, DWORD PTR -448[rbp]
	jge	.L22
	mov	DWORD PTR -448[rbp], 199
	jmp	.L23
.L24:
	sub	DWORD PTR -448[rbp], 1
.L23:
	mov	eax, DWORD PTR -448[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	test	al, al
	je	.L24
	mov	DWORD PTR -444[rbp], 0
	jmp	.L25
.L26:
	add	DWORD PTR -444[rbp], 1
.L25:
	mov	eax, DWORD PTR -444[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	test	al, al
	je	.L26
	jmp	.L27
.L28:
	mov	eax, DWORD PTR -444[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -444[rbp], 1
.L27:
	mov	eax, DWORD PTR -444[rbp]
	cmp	eax, DWORD PTR -448[rbp]
	jle	.L28
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -452[rbp], 1
.L2:
	mov	eax, DWORD PTR -456[rbp]
	cmp	DWORD PTR -452[rbp], eax
	jl	.L29
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
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
