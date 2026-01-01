	.file	"1350.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	d
	.align 16
	.type	d, @object
	.size	d, 16
d:
	.zero	16
	.section	.rodata
.LC0:
	.string	"N=%d:\n"
.LC1:
	.string	"No!!"
.LC2:
	.string	"%d-%d=%d\n"
.LC3:
	.string	"Ok!! %d times\n"
.LC4:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
.L22:
	mov	eax, DWORD PTR n[rip]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 999
	jle	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 9999
	jg	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 1111
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 2222
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 3333
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 4444
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 5555
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 6666
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 7777
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 8888
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 9999
	jne	.L4
.L3:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L2
.L4:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
.L21:
	mov	DWORD PTR d[rip+12], 0
	mov	eax, DWORD PTR d[rip+12]
	mov	DWORD PTR d[rip+8], eax
	mov	eax, DWORD PTR d[rip+8]
	mov	DWORD PTR d[rip+4], eax
	mov	eax, DWORD PTR d[rip+4]
	mov	DWORD PTR d[rip], eax
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L6
.L7:
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
.L6:
	cmp	DWORD PTR -24[rbp], 0
	jg	.L7
	mov	DWORD PTR -28[rbp], 0
	jmp	.L8
.L12:
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L9
.L11:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L10
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, d[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, d[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L10:
	add	DWORD PTR -24[rbp], 1
.L9:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L11
	add	DWORD PTR -28[rbp], 1
.L8:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L12
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L13
.L14:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -28[rbp], 1
.L13:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L14
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
	jmp	.L15
.L17:
	sub	DWORD PTR -28[rbp], 1
.L15:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L16
	cmp	DWORD PTR -28[rbp], 0
	jns	.L17
.L16:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
.L19:
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	sub	DWORD PTR -28[rbp], 1
.L18:
	cmp	DWORD PTR -28[rbp], 0
	jns	.L19
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR n[rip], eax
	add	DWORD PTR -16[rbp], 1
	mov	ecx, DWORD PTR n[rip]
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L5:
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 6174
	je	.L20
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L21
.L20:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	cmp	eax, -1
	jne	.L22
	mov	eax, 0
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
