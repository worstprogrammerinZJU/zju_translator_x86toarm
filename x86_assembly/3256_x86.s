G:
n:
m:
k:
cow:
picnic:
flag:
_Z2ORi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, picnic[rip]
	mov	BYTE PTR [rax+rdx], 0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L4
	nop
	nop
	pop	rbp
	ret
_Z3DFSi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	jmp	.L6
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	_Z3DFSi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L8
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, m[rip]
	mov	rcx, rax
	lea	rax, n[rip]
	mov	rdx, rax
	lea	rax, k[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, cow[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, G[rip]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
	mov	edx, 1001
	mov	esi, 1
	lea	rax, picnic[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
	mov	edx, 1001
	mov	esi, 0
	lea	rax, flag[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, cow[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	_Z3DFSi
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, cow[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	_Z2ORi
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, picnic[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	jne	.L17
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L18
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: