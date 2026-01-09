Check:
Hide:
Match:
n:
boys:
height:
music:
sport:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 250000
	mov	esi, 0
	lea	rax, Hide[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -64[rbp]
	cmp	al, 77
	jne	.L4
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	sub	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, height[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, sport[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	lea	rcx, music[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR boys[rip], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR boys[rip]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L8
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z7compareii
	movzx	eax, al
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L9
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, Hide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, Hide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L10
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR boys[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	DWORD PTR -24[rbp], 0
	mov	edx, 2000
	mov	esi, -1
	lea	rax, Match[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	edx, 500
	mov	esi, 0
	lea	rax, Check[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z3DFSi
	test	al, al
	je	.L13
	add	DWORD PTR -24[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR boys[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR n[rip]
	sub	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L15
	mov	eax, 0
	leave
	ret
_Z3DFSi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR boys[rip]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L18
	mov	eax, DWORD PTR boys[rip]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L19
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR boys[rip]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L20
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, Hide[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, Check[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	xor	eax, 1
	test	al, al
	je	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, Check[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Match[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Match[rip]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	cmp	DWORD PTR -16[rbp], -1
	je	.L22
	mov	eax, DWORD PTR -16[rbp]
	mov	edi, eax
	call	_Z3DFSi
	test	al, al
	je	.L23
	mov	eax, 1
	jmp	.L24
	mov	eax, 0
	test	al, al
	je	.L25
	mov	eax, 1
	jmp	.L26
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Match[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L27
	mov	eax, 0
	leave
	ret
_Z7compareii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, height[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, height[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	cmp	eax, 40
	jg	.L29
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, height[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, height[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	cmp	eax, 40
	jle	.L30
	mov	eax, 0
	jmp	.L31
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, music[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	lea	rcx, music[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L32
	mov	eax, 0
	jmp	.L31
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, sport[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	lea	rcx, sport[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L33
	mov	eax, 0
	jmp	.L31
	mov	eax, 1
	leave
	ret
0:
1:
2:
3:
4: