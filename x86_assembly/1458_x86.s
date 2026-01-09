s:
t:
c:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 8
	jmp	.L2
	lea	rax, t[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, t[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	ebx, eax
	lea	rax, s[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	esi, ebx
	mov	edi, eax
	call	LCS
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
LCS:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	edx, 161604
	mov	esi, 0
	lea	rax, c[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	DWORD PTR -8[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, s[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, t[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 3
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 3
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 3
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 3
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 3
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L10
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L11
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 3
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	leave
	ret
0:
1:
2:
3:
4: