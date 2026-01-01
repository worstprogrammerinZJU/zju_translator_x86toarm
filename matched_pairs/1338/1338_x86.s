	.file	"1338.c"
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
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], 1
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -68[rbp], 1
	jmp	.L2
.L20:
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 2863311531
	imul	rax, rdx
	shr	rax, 32
	shr	eax
	mov	edx, eax
	add	edx, edx
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -64[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L4
.L6:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
.L4:
	cmp	QWORD PTR -40[rbp], 0
	je	.L5
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L6
.L5:
	cmp	QWORD PTR -40[rbp], 0
	jne	.L7
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L8
.L7:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L8:
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
.L3:
	mov	rax, QWORD PTR -64[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L9
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L10
.L12:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
.L10:
	cmp	QWORD PTR -40[rbp], 0
	je	.L11
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L12
.L11:
	cmp	QWORD PTR -40[rbp], 0
	jne	.L13
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L14
.L13:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L14:
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
.L9:
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 2
	add	edx, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L15
.L17:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
.L15:
	cmp	QWORD PTR -40[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L17
.L16:
	cmp	QWORD PTR -40[rbp], 0
	jne	.L18
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L19
.L18:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
.L19:
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -64[rbp], rax
	add	DWORD PTR -68[rbp], 1
.L2:
	cmp	DWORD PTR -68[rbp], 1288
	jle	.L20
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L21
.L24:
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	DWORD PTR -68[rbp], 1
	jmp	.L22
.L23:
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -48[rbp], rax
	add	DWORD PTR -68[rbp], 1
.L22:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L23
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L21:
	mov	eax, DWORD PTR -72[rbp]
	test	eax, eax
	jne	.L24
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
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
