	.file	"2576.c"
	.intel_syntax noprefix
	.text
	.globl	a
	.bss
	.align 32
	.type	a, @object
	.size	a, 400
a:
	.zero	400
	.globl	b
	.align 32
	.type	b, @object
	.size	b, 400
b:
	.zero	400
	.globl	na
	.align 4
	.type	na, @object
	.size	na, 4
na:
	.zero	4
	.globl	nb
	.align 4
	.type	nb, @object
	.size	nb, 4
nb:
	.zero	4
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	sa
	.align 4
	.type	sa, @object
	.size	sa, 4
sa:
	.zero	4
	.globl	sb
	.align 4
	.type	sb, @object
	.size	sb, 4
sb:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR na[rip], eax
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR na[rip]
	sub	eax, edx
	mov	DWORD PTR nb[rip], eax
	mov	DWORD PTR -436[rbp], 0
	jmp	.L2
.L3:
	lea	rdx, -416[rbp]
	mov	eax, DWORD PTR -436[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -436[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -436[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	movsx	rsi, eax
	lea	rax, -416[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -436[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -436[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -436[rbp]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -436[rbp]
	cdqe
	mov	edx, DWORD PTR -416[rbp+rax*4]
	mov	eax, DWORD PTR sa[rip]
	add	eax, edx
	mov	DWORD PTR sa[rip], eax
	mov	eax, DWORD PTR -436[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -436[rbp]
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	movsx	rax, edx
	mov	eax, DWORD PTR -416[rbp+rax*4]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -436[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -416[rbp+rax*4]
	mov	eax, DWORD PTR sb[rip]
	add	eax, edx
	mov	DWORD PTR sb[rip], eax
	add	DWORD PTR -436[rbp], 2
.L4:
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cmp	DWORD PTR -436[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR n[rip]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L6
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	edx, DWORD PTR na[rip]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -416[rbp+rax*4]
	mov	eax, DWORD PTR sb[rip]
	add	eax, edx
	mov	DWORD PTR sb[rip], eax
.L6:
	mov	edx, DWORD PTR sb[rip]
	mov	eax, DWORD PTR sa[rip]
	mov	esi, edx
	mov	edi, eax
	call	Ab
	mov	DWORD PTR -432[rbp], eax
	mov	DWORD PTR -436[rbp], 0
	jmp	.L7
.L11:
	call	rand@PLT
	mov	ecx, DWORD PTR na[rip]
	cdq
	idiv	ecx
	mov	DWORD PTR -428[rbp], edx
	call	rand@PLT
	mov	ecx, DWORD PTR nb[rip]
	cdq
	idiv	ecx
	mov	DWORD PTR -424[rbp], edx
	mov	eax, DWORD PTR sb[rip]
	mov	edx, DWORD PTR -424[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -428[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR sa[rip]
	mov	ecx, DWORD PTR -428[rbp]
	movsx	rcx, ecx
	lea	rsi, 0[0+rcx*4]
	lea	rcx, a[rip]
	mov	ecx, DWORD PTR [rsi+rcx]
	sub	eax, ecx
	mov	esi, eax
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rcx+rax]
	add	eax, esi
	mov	esi, edx
	mov	edi, eax
	call	Ab
	mov	DWORD PTR -420[rbp], eax
	mov	eax, DWORD PTR -420[rbp]
	cmp	eax, DWORD PTR -432[rbp]
	jge	.L8
	mov	eax, DWORD PTR -420[rbp]
	mov	DWORD PTR -432[rbp], eax
	mov	eax, DWORD PTR sa[rip]
	mov	edx, DWORD PTR -428[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR sa[rip], eax
	mov	eax, DWORD PTR sb[rip]
	mov	edx, DWORD PTR -424[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -428[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR sb[rip], eax
	mov	eax, DWORD PTR -428[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -420[rbp], eax
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -428[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -424[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, b[rip]
	mov	eax, DWORD PTR -420[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L8:
	cmp	DWORD PTR -432[rbp], 0
	je	.L15
	add	DWORD PTR -436[rbp], 1
.L7:
	cmp	DWORD PTR -436[rbp], 99999
	jle	.L11
	jmp	.L10
.L15:
	nop
.L10:
	mov	edx, DWORD PTR sa[rip]
	mov	eax, DWORD PTR sb[rip]
	cmp	edx, eax
	jle	.L12
	mov	eax, DWORD PTR sb[rip]
	mov	DWORD PTR -420[rbp], eax
	mov	eax, DWORD PTR sa[rip]
	mov	DWORD PTR sb[rip], eax
	mov	eax, DWORD PTR -420[rbp]
	mov	DWORD PTR sa[rip], eax
.L12:
	mov	edx, DWORD PTR sb[rip]
	mov	eax, DWORD PTR sa[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	ret
	.size	main, .-main
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L17
	mov	eax, 1
	jmp	.L18
.L17:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L19
	mov	eax, -1
	jmp	.L18
.L19:
	mov	eax, 0
.L18:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.globl	Ab
	.type	Ab, @function
Ab:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L21
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	jmp	.L22
.L21:
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
.L22:
	pop	rbp
	ret
	.size	Ab, .-Ab
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
