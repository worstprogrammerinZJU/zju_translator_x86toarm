i:
j:
k:
n:
m:
l:
p:
check:
s:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	jmp	.L2
	mov	edx, 26
	mov	esi, 0
	lea	rax, p[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 26
	mov	esi, 0
	lea	rax, check[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR m[rip], 0
	lea	rax, s[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR k[rip], eax
	mov	DWORD PTR i[rip], 0
	jmp	.L3
	mov	eax, DWORD PTR i[rip]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR l[rip], eax
	mov	eax, DWORD PTR l[rip]
	cdqe
	lea	rdx, p[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	je	.L4
	mov	eax, DWORD PTR l[rip]
	cdqe
	lea	rdx, p[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR l[rip]
	cdqe
	lea	rdx, check[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	xor	eax, 1
	test	al, al
	je	.L5
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	mov	DWORD PTR n[rip], eax
	jmp	.L6
	mov	eax, DWORD PTR m[rip]
	add	eax, 1
	mov	DWORD PTR m[rip], eax
	jmp	.L6
	mov	eax, DWORD PTR l[rip]
	cdqe
	lea	rdx, p[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	je	.L7
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR n[rip], eax
	jmp	.L6
	mov	eax, DWORD PTR l[rip]
	cdqe
	lea	rdx, check[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	edx, DWORD PTR i[rip]
	mov	eax, DWORD PTR k[rip]
	cmp	edx, eax
	jl	.L8
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR m[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	setne	al
	test	al, al
	jne	.L10
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: