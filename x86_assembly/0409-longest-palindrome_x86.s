longestPalindrome:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 440
	mov	QWORD PTR -552[rbp], rdi
	lea	rdx, -544[rbp]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
	mov	rax, QWORD PTR -552[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	movsx	rdx, eax
	mov	edx, DWORD PTR -544[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -544[rbp+rax*4], edx
	add	QWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 65
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -544[rbp+rax*4]
	and	eax, 1
	test	eax, eax
	je	.L5
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -544[rbp+rax*4]
	sub	eax, 1
	add	DWORD PTR -16[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -544[rbp+rax*4]
	add	DWORD PTR -16[rbp], eax
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 122
	jle	.L7
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	leave
	ret
0:
1:
2:
3:
4: