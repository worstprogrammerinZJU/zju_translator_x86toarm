a:
b:
na:
nb:
n:
sa:
sb:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 432
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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -432[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	movsx	rsi, eax
	lea	rax, -432[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -432[rbp+rax*4]
	mov	eax, DWORD PTR sa[rip]
	add	eax, edx
	mov	DWORD PTR sa[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	movsx	rax, edx
	mov	eax, DWORD PTR -432[rbp+rax*4]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -432[rbp+rax*4]
	mov	eax, DWORD PTR sb[rip]
	add	eax, edx
	mov	DWORD PTR sb[rip], eax
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
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
	mov	eax, DWORD PTR -432[rbp+rax*4]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -432[rbp+rax*4]
	mov	eax, DWORD PTR sb[rip]
	add	eax, edx
	mov	DWORD PTR sb[rip], eax
	mov	edx, DWORD PTR sb[rip]
	mov	eax, DWORD PTR sa[rip]
	mov	esi, edx
	mov	edi, eax
	call	Ab
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	call	rand@PLT
	mov	ecx, DWORD PTR na[rip]
	cdq
	idiv	ecx
	mov	DWORD PTR -12[rbp], edx
	call	rand@PLT
	mov	ecx, DWORD PTR nb[rip]
	cdq
	idiv	ecx
	mov	DWORD PTR -16[rbp], edx
	mov	eax, DWORD PTR sb[rip]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR sa[rip]
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rcx, ecx
	lea	rsi, 0[0+rcx*4]
	lea	rcx, a[rip]
	mov	ecx, DWORD PTR [rsi+rcx]
	sub	eax, ecx
	mov	esi, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rcx+rax]
	add	eax, esi
	mov	esi, edx
	mov	edi, eax
	call	Ab
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L8
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR sa[rip]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR sa[rip], eax
	mov	eax, DWORD PTR sb[rip]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, b[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR sb[rip], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, b[rip]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	cmp	DWORD PTR -8[rbp], 0
	je	.L14
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 99999
	jle	.L11
	jmp	.L10
	nop
	mov	edx, DWORD PTR sa[rip]
	mov	eax, DWORD PTR sb[rip]
	cmp	edx, eax
	jle	.L12
	mov	eax, DWORD PTR sb[rip]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR sa[rip]
	mov	DWORD PTR sb[rip], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR sa[rip], eax
	mov	edx, DWORD PTR sb[rip]
	mov	eax, DWORD PTR sa[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L16
	mov	eax, 1
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L18
	mov	eax, -1
	jmp	.L17
	mov	eax, 0
	pop	rbp
	ret
Ab:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L20
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	jmp	.L21
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
0:
1:
2:
3:
4: