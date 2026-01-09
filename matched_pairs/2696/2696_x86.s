a:
b:
c:
d:
e:
f:
g:
h:
I:
fun:
mod:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], edx
	cmp	DWORD PTR -4[rbp], 0
	jns	.L2
	mov	eax, DWORD PTR -24[rbp]
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	lea	rax, I[rip]
	push	rax
	lea	rax, h[rip]
	push	rax
	lea	rax, g[rip]
	push	rax
	lea	rax, f[rip]
	push	rax
	lea	r9, e[rip]
	lea	r8, d[rip]
	lea	rax, c[rip]
	mov	rcx, rax
	lea	rax, b[rip]
	mov	rdx, rax
	lea	rax, a[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 32
	mov	eax, DWORD PTR a[rip]
	mov	DWORD PTR fun[rip], eax
	mov	eax, DWORD PTR b[rip]
	mov	DWORD PTR fun[rip+4], eax
	mov	eax, DWORD PTR c[rip]
	mov	DWORD PTR fun[rip+8], eax
	mov	DWORD PTR -8[rbp], 3
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR g[rip]
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 1
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR d[rip]
	mov	esi, ecx
	imul	esi, edx
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 2
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR e[rip]
	imul	edx, ecx
	add	esi, edx
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 3
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR f[rip]
	imul	ecx, edx
	sub	esi, ecx
	mov	edx, esi
	mov	esi, eax
	mov	edi, edx
	call	mod
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L8
	mov	eax, DWORD PTR h[rip]
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 1
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR f[rip]
	imul	edx, ecx
	mov	ecx, DWORD PTR -8[rbp]
	sub	ecx, 2
	movsx	rcx, ecx
	lea	rsi, 0[0+rcx*4]
	lea	rcx, fun[rip]
	mov	esi, DWORD PTR [rsi+rcx]
	mov	ecx, DWORD PTR d[rip]
	imul	ecx, esi
	mov	esi, edx
	sub	esi, ecx
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 3
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR e[rip]
	imul	edx, ecx
	add	edx, esi
	mov	esi, eax
	mov	edi, edx
	call	mod
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR I[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L9
	mov	eax, DWORD PTR I[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, fun[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: