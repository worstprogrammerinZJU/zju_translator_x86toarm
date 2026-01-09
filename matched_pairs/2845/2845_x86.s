s:
t:
r:
reverse:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -9[rbp], al
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR -9[rbp]
	mov	BYTE PTR [rdx], al
	sub	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L3
	nop
	nop
	leave
	ret
addition:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, s[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -12[rbp], eax
	lea	rax, t[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	add	eax, ecx
	sub	eax, 48
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 49
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	sub	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	DWORD PTR -8[rbp], 1
	jmp	.L7
	mov	DWORD PTR -8[rbp], 0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jge	.L10
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L9
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 49
	jle	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	sub	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	DWORD PTR -8[rbp], 1
	jmp	.L12
	mov	DWORD PTR -8[rbp], 0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L13
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 49
	jle	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	sub	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	DWORD PTR -8[rbp], 1
	jmp	.L16
	mov	DWORD PTR -8[rbp], 0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L17
	cmp	DWORD PTR -8[rbp], 1
	jne	.L20
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], 49
	jmp	.L19
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 1
	jle	.L19
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 48
	je	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], 0
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L23
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, s[rip]
	mov	rdi, rax
	call	reverse
	lea	rax, t[rip]
	mov	rdi, rax
	call	reverse
	mov	eax, 0
	call	addition
	lea	rax, r[rip]
	mov	rdi, rax
	call	reverse
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, r[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: