	.file	"2671.c"
	.intel_syntax noprefix
	.text
	.globl	min
	.bss
	.align 4
	.type	min, @object
	.size	min, 4
min:
	.zero	4
	.globl	m
	.align 32
	.type	m, @object
	.size	m, 1200
m:
	.zero	1200
	.globl	t
	.align 32
	.type	t, @object
	.size	t, 1200
t:
	.zero	1200
	.globl	wise
	.align 32
	.type	wise, @object
	.size	wise, 2408
wise:
	.zero	2408
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L9:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, m[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L4
	mov	DWORD PTR wise[rip], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -12[rbp], 1
.L5:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	DWORD PTR [rdx+rax], ecx
	sub	DWORD PTR -12[rbp], 1
.L7:
	cmp	DWORD PTR -12[rbp], 0
	jns	.L8
	mov	DWORD PTR min[rip], 1000000000
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	r9d, 0
	mov	r8d, 0
	mov	ecx, 0
	mov	edx, 0
	mov	esi, eax
	mov	edi, 1
	call	dp
	mov	eax, DWORD PTR min[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	ret
	.size	main, .-main
	.globl	dp
	.type	dp, @function
dp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	DWORD PTR -36[rbp], r8d
	mov	DWORD PTR -40[rbp], r9d
	mov	eax, DWORD PTR min[rip]
	cmp	DWORD PTR -32[rbp], eax
	jge	.L17
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L15
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR min[rip], eax
	jmp	.L12
.L15:
	cmp	DWORD PTR -36[rbp], 0
	jne	.L16
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edi, 1[rax]
	mov	esi, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	r9d, esi
	mov	r8d, 0
	mov	esi, eax
	call	dp
	cmp	DWORD PTR -40[rbp], 1
	jg	.L12
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	lea	edi, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	esi, -1[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	r9d, edi
	mov	r8d, 1
	mov	edi, eax
	call	dp
	jmp	.L12
.L16:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	esi, -1[rax]
	mov	edi, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	r9d, edi
	mov	r8d, 1
	mov	edi, eax
	call	dp
	cmp	DWORD PTR -40[rbp], 1
	jg	.L12
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	lea	esi, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edi, 1[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	r9d, esi
	mov	r8d, 0
	mov	esi, eax
	call	dp
	jmp	.L12
.L17:
	nop
.L12:
	leave
	ret
	.size	dp, .-dp
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
