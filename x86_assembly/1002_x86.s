	.file	"1002.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"No duplicates."
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
	mov	DWORD PTR -44[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -52[rbp], 1
	jmp	.L2
.L15:
	mov	DWORD PTR -48[rbp], 0
	jmp	.L3
.L6:
	cmp	BYTE PTR -57[rbp], 47
	jle	.L4
	cmp	BYTE PTR -57[rbp], 57
	jg	.L4
	mov	edx, DWORD PTR -48[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	movsx	eax, BYTE PTR -57[rbp]
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -48[rbp], eax
	jmp	.L3
.L4:
	cmp	BYTE PTR -57[rbp], 64
	jle	.L5
	cmp	BYTE PTR -57[rbp], 80
	jg	.L5
	mov	edx, DWORD PTR -48[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	esi, eax
	movsx	eax, BYTE PTR -57[rbp]
	sub	eax, 65
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, esi
	add	eax, 2
	mov	DWORD PTR -48[rbp], eax
	jmp	.L3
.L5:
	cmp	BYTE PTR -57[rbp], 81
	jle	.L3
	cmp	BYTE PTR -57[rbp], 89
	jg	.L3
	mov	edx, DWORD PTR -48[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	esi, eax
	movsx	eax, BYTE PTR -57[rbp]
	sub	eax, 81
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, esi
	add	eax, 7
	mov	DWORD PTR -48[rbp], eax
.L3:
	call	getchar@PLT
	mov	BYTE PTR -57[rbp], al
	cmp	BYTE PTR -57[rbp], 10
	jne	.L6
	cmp	QWORD PTR -40[rbp], 0
	jne	.L7
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rax], 0
	jmp	.L8
.L7:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L9
.L13:
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -48[rbp], eax
	jne	.L10
	mov	DWORD PTR -44[rbp], 1
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 4[rax], edx
	jmp	.L11
.L10:
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -48[rbp], eax
	jle	.L12
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L9
.L12:
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
.L9:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L13
.L11:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L8
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -48[rbp], eax
	jge	.L14
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L8
.L14:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 16[rax], rdx
.L8:
	add	DWORD PTR -52[rbp], 1
.L2:
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jle	.L15
	cmp	DWORD PTR -44[rbp], 0
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L17
.L16:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	dfs
.L17:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	ret
	.size	main, .-main
	.section	.rodata
.LC2:
	.string	"%.3d-%.4d %d\n"
	.text
	.globl	dfs
	.type	dfs, @function
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	je	.L24
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	dfs
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	test	eax, eax
	jle	.L23
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	movsx	rax, edx
	imul	rax, rax, 1759218605
	shr	rax, 32
	sar	eax, 12
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	imul	esi, eax, 10000
	mov	eax, edx
	sub	eax, esi
	mov	rdx, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rdx]
	movsx	rsi, edx
	imul	rsi, rsi, 1759218605
	shr	rsi, 32
	sar	esi, 12
	sar	edx, 31
	sub	esi, edx
	mov	edx, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L23:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	dfs
	jmp	.L20
.L24:
	nop
.L20:
	leave
	ret
	.size	dfs, .-dfs
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
