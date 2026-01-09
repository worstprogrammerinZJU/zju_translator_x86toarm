x:
q:
p:
bfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -65536[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 32
	mov	DWORD PTR -65556[rbp], edi
	mov	DWORD PTR -65560[rbp], esi
	mov	DWORD PTR -65564[rbp], edx
	mov	DWORD PTR -65568[rbp], ecx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	QWORD PTR -65552[rbp], 0
	mov	QWORD PTR -65544[rbp], 0
	lea	rax, -65536[rbp]
	mov	edx, 65520
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR q[rip], 0
	cmp	DWORD PTR -65556[rbp], 0
	jne	.L3
	mov	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -65560[rbp]
	mov	DWORD PTR q[rip+8], eax
	mov	DWORD PTR -8[rbp], 3
	mov	BYTE PTR -65552[rbp], 1
	mov	DWORD PTR p[rip+8], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	movzx	eax, BYTE PTR -65552[rbp+rax]
	cmp	al, 1
	jne	.L4
	add	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	BYTE PTR -65552[rbp+rax], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -65556[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -65564[rbp]
	mov	ecx, edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, p[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L16
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -65560[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -65564[rbp]
	mov	ecx, edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, p[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L17
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L8
	jmp	.L6
	nop
	jmp	.L6
	nop
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L9
	mov	DWORD PTR -12[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L11
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -65568[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rcx, 0[0+rax*4]
	lea	rdx, x[rip]
	mov	eax, DWORD PTR -65556[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L12
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -65568[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rcx, 0[0+rax*4]
	lea	rdx, x[rip]
	mov	eax, DWORD PTR -65560[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jne	.L13
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	jmp	.L15
	mov	eax, -1
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L19
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -80[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L20
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], 1
	jmp	.L21
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -80[rbp+rax*4]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jge	.L22
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L23
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -80[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	cmp	edx, eax
	jge	.L24
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 9
	jle	.L25
	cmp	DWORD PTR -4[rbp], 0
	je	.L26
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L27
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 0
	jg	.L28
	jmp	.L29
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L30
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L31
	mov	edx, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	bfs
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], -1
	je	.L32
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L32
	mov	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L33
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jne	.L33
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L34
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	movsx	rcx, ecx
	cdqe
	sal	rax, 16
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L35
	mov	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L33
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	movsx	rcx, ecx
	cdqe
	sal	rax, 16
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jg	.L44
	sub	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	jns	.L37
	jmp	.L33
	nop
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 9
	jle	.L38
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 9
	jle	.L39
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L40
	mov	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L41
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L42
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: