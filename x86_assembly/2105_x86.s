	.file	"2105.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"%d.%d.%d.%d\n"
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
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -92[rbp], 0
	jmp	.L2
.L7:
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -88[rbp], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], 0
	mov	DWORD PTR -84[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -88[rbp]
	lea	ecx, 0[0+rax*8]
	mov	eax, DWORD PTR -84[rbp]
	add	eax, ecx
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	movsx	eax, al
	add	eax, edx
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], edx
	add	DWORD PTR -84[rbp], 1
.L4:
	cmp	DWORD PTR -84[rbp], 7
	jle	.L5
	add	DWORD PTR -88[rbp], 1
.L3:
	cmp	DWORD PTR -88[rbp], 3
	jle	.L6
	mov	esi, DWORD PTR -68[rbp]
	mov	ecx, DWORD PTR -72[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	eax, DWORD PTR -80[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -92[rbp], 1
.L2:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L7
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
