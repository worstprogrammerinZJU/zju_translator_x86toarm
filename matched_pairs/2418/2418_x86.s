	.file	"2418.c"
	.intel_syntax noprefix
	.text
	.globl	link
	.bss
	.align 32
	.type	link, @object
	.size	link, 80056
link:
	.zero	80056
	.globl	num
	.align 32
	.type	num, @object
	.size	num, 40000
num:
	.zero	40000
	.globl	posi
	.align 32
	.type	posi, @object
	.size	posi, 40000
posi:
	.zero	40000
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	tree
	.align 32
	.type	tree, @object
	.size	tree, 310000
tree:
	.zero	310000
	.section	.rodata
.LC1:
	.string	"%s %.4lf\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
.L9:
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 5
	sub	rax, rdx
	lea	rdx, tree[rip]
	add	rax, rdx
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L3
.L6:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 5
	sub	rax, rdx
	lea	rdx, tree[rip]
	add	rdx, rax
	mov	eax, DWORD PTR n[rip]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 5
	sub	rax, rcx
	lea	rcx, tree[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L13
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
.L3:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L6
	jmp	.L5
.L13:
	nop
.L5:
	cmp	QWORD PTR -8[rbp], 0
	jne	.L7
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	edx, DWORD PTR n[rip]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, link[rip]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, posi[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	mov	DWORD PTR n[rip], eax
	jmp	.L8
.L7:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, num[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L8:
	mov	eax, DWORD PTR m[rip]
	add	eax, 1
	mov	DWORD PTR m[rip], eax
.L2:
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 5
	sub	rax, rdx
	lea	rdx, tree[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, posi[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, posi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR m[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movq	rdx, xmm0
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, posi[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 5
	sub	rax, rcx
	lea	rcx, tree[rip]
	add	rax, rcx
	movq	xmm0, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
.L10:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.globl	ELFhash
	.type	ELFhash, @function
ELFhash:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -16[rbp], 0
	jmp	.L15
.L17:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -8[rbp]
	shr	rax, 24
	xor	QWORD PTR -16[rbp], rax
.L16:
	mov	rax, QWORD PTR -8[rbp]
	not	rax
	and	QWORD PTR -16[rbp], rax
.L15:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L17
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, -6691484059914626997
	mov	rax, rcx
	mul	rdx
	mov	rax, rcx
	sub	rax, rdx
	shr	rax
	add	rax, rdx
	shr	rax, 13
	imul	rdx, rax, 10007
	mov	rax, rcx
	sub	rax, rdx
	pop	rbp
	ret
	.size	ELFhash, .-ELFhash
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 5
	sub	rax, rdx
	lea	rdx, tree[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 5
	sub	rax, rcx
	lea	rcx, tree[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	leave
	ret
	.size	cmp, .-cmp
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
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
