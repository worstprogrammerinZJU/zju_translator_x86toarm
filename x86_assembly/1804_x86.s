	.file	"1804.c"
	.intel_syntax noprefix
	.text
	.globl	x
	.bss
	.align 32
	.type	x, @object
	.size	x, 4000
x:
	.zero	4000
	.globl	z
	.align 32
	.type	z, @object
	.size	z, 4000
z:
	.zero	4000
	.globl	reverse
	.align 4
	.type	reverse, @object
	.size	reverse, 4
reverse:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"Scenario #%d:\n%d\n\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 1
	jmp	.L2
.L5:
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L4
	mov	DWORD PTR reverse[rip], 0
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	esi, eax
	mov	edi, 0
	call	mergesort
	mov	edx, DWORD PTR reverse[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
.L2:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	ret
	.size	main, .-main
	.globl	merge
	.type	merge, @function
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jg	.L10
	mov	edx, DWORD PTR -12[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -4[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
	jmp	.L9
.L10:
	mov	edx, DWORD PTR -8[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -4[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR reverse[rip]
	add	eax, edx
	mov	DWORD PTR reverse[rip], eax
.L9:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jg	.L13
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L12
	jmp	.L13
.L14:
	mov	edx, DWORD PTR -12[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -4[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
.L13:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L14
	jmp	.L15
.L16:
	mov	edx, DWORD PTR -8[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -4[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
.L15:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L16
	mov	DWORD PTR -12[rbp], 0
	jmp	.L17
.L18:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L18
	nop
	nop
	pop	rbp
	ret
	.size	merge, .-merge
	.globl	mergesort
	.type	mergesort, @function
mergesort:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L21
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	mergesort
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, edx
	call	mergesort
	mov	edx, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	merge
.L21:
	nop
	leave
	ret
	.size	mergesort, .-mergesort
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
