link:
num:
posi:
n:
m:
tree:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 5
	sub	rax, rdx
	lea	rdx, tree[rip]
	add	rax, rdx
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L3
	mov	rax, QWORD PTR -16[rbp]
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L6
	jmp	.L5
	nop
	cmp	QWORD PTR -16[rbp], 0
	jne	.L7
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR n[rip]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, link[rip]
	mov	rax, QWORD PTR -16[rbp]
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
	mov	rax, QWORD PTR -16[rbp]
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
	mov	eax, DWORD PTR m[rip]
	add	eax, 1
	mov	DWORD PTR m[rip], eax
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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
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
	mov	eax, DWORD PTR -4[rbp]
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
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
ELFhash:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L15
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -16[rbp]
	shr	rax, 24
	xor	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	not	rax
	and	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L17
	mov	rcx, QWORD PTR -8[rbp]
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
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 5
	sub	rax, rdx
	lea	rdx, tree[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
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
0:
1:
2:
3:
4: