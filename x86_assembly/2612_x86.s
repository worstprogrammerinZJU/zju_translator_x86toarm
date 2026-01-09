n:
f:
add:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rcx, edx
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rcx, edx
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 9
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	DWORD PTR -12[rbp], 0
	lea	rdx, -144[rbp]
	mov	eax, 0
	mov	ecx, 15
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	BYTE PTR [rdx], al
	add	rdx, 1
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	DWORD PTR -8[rbp], 1
	jmp	.L4
	call	getchar@PLT
	cmp	eax, 42
	jne	.L5
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	add
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L6
	call	getchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	DWORD PTR -4[rbp], 1
	jmp	.L8
	mov	DWORD PTR -8[rbp], 1
	jmp	.L9
	call	getchar@PLT
	cmp	eax, 120
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 144
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 8
	jle	.L10
	mov	DWORD PTR -12[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L11
	call	getchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L12
	mov	DWORD PTR -4[rbp], 1
	jmp	.L13
	mov	DWORD PTR -8[rbp], 1
	jmp	.L14
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 8
	jle	.L15
	cmp	DWORD PTR -12[rbp], 1
	jne	.L15
	mov	edi, 42
	call	putchar@PLT
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 144
	movzx	eax, BYTE PTR [rax]
	cmp	al, 1
	jne	.L17
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	add	eax, 48
	mov	edi, eax
	call	putchar@PLT
	jmp	.L16
	mov	edi, 46
	call	putchar@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L18
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L19
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: