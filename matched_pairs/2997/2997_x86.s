m:
j:
s:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR j[rip], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 105
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 118
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 120
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 108
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 99
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 100
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 109
	jne	.L5
	mov	eax, DWORD PTR j[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR j[rip], edx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, s[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
	cdqe
	lea	rcx, s[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L6
	mov	eax, DWORD PTR j[rip]
	cdqe
	lea	rdx, s[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	DWORD PTR -8[rbp], 0
	mov	edx, 0
	mov	esi, 109
	mov	edi, 0
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 1000
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 1
	mov	esi, 100
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 500
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 3
	mov	esi, 99
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 100
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 99
	mov	esi, 120
	mov	edi, eax
	call	cmpd
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	cmp	eax, 1
	jne	.L7
	add	DWORD PTR -8[rbp], 90
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 1
	mov	esi, 108
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 50
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 3
	mov	esi, 120
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR m[rip]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 120
	mov	esi, 105
	mov	edi, eax
	call	cmpd
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	cmp	eax, 1
	jne	.L9
	add	DWORD PTR -8[rbp], 9
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 1
	mov	esi, 118
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR m[rip]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, 3
	mov	esi, 105
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, s[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
	jne	.L11
	mov	eax, 0
	leave
	ret
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, esi
	mov	DWORD PTR -28[rbp], edx
	mov	BYTE PTR -24[rbp], al
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR m[rip], 0
	jmp	.L14
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	BYTE PTR -24[rbp], al
	jne	.L15
	mov	eax, DWORD PTR m[rip]
	add	eax, 1
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -28[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L16
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR j[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
cmpd:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	ecx, esi
	mov	eax, edx
	mov	edx, ecx
	mov	BYTE PTR -24[rbp], dl
	mov	BYTE PTR -28[rbp], al
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	movzx	eax, BYTE PTR -24[rbp]
	mov	BYTE PTR -1[rbp], al
	mov	DWORD PTR m[rip], 0
	jmp	.L19
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	BYTE PTR -1[rbp], al
	jne	.L20
	mov	eax, DWORD PTR m[rip]
	cmp	eax, 1
	jne	.L21
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L22
	mov	DWORD PTR m[rip], 1
	movzx	eax, BYTE PTR -28[rbp]
	mov	BYTE PTR -1[rbp], al
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR j[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L23
	mov	DWORD PTR m[rip], 0
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
0:
1:
2:
3:
4: