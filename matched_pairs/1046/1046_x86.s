	.file	"1046.c"
	.intel_syntax noprefix
	.text
	.globl	color
	.bss
	.align 32
	.type	color, @object
	.size	color, 192
color:
	.zero	192
	.section	.rodata
.LC0:
	.string	"%d%d%d"
	.align 8
.LC1:
	.string	"(%d,%d,%d) maps to (%d,%d,%d)\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -24[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, 8[rax]
	lea	rax, color[rip]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, 4[rax]
	lea	rax, color[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rsi, eax
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, color[rip]
	add	rax, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -24[rbp], 1
.L2:
	cmp	DWORD PTR -24[rbp], 15
	jle	.L3
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L4
.L8:
	mov	DWORD PTR -20[rbp], 200000
	mov	DWORD PTR -24[rbp], 0
	jmp	.L5
.L7:
	mov	ecx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, ecx
	sub	esi, eax
	mov	ecx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	edi, esi
	imul	edi, eax
	mov	ecx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, ecx
	sub	esi, eax
	mov	ecx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	imul	eax, esi
	add	edi, eax
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, ecx
	sub	esi, eax
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+8]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	imul	eax, esi
	add	eax, edi
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L6
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
.L6:
	add	DWORD PTR -24[rbp], 1
.L5:
	cmp	DWORD PTR -24[rbp], 15
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+8]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+4]
	mov	r8d, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -36[rbp]
	sub	rsp, 8
	push	rsi
	mov	r9d, r8d
	mov	r8d, edi
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	rsp, 16
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L4:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, -1
	jne	.L8
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, -1
	jne	.L8
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, -1
	jne	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
