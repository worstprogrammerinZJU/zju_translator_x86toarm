Dist:
n:
k:
flag:
_Z3bfsv:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -798720[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 1296
	lea	rax, -800016[rbp]
	mov	edx, 800004
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -800016[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -800016[rbp+rax*4]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	je	.L9
	cmp	DWORD PTR -12[rbp], 0
	jle	.L5
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	mov	DWORD PTR -800016[rbp+rax*4], ecx
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	mov	DWORD PTR -800016[rbp+rax*4], ecx
	mov	eax, DWORD PTR -12[rbp]
	add	eax, eax
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	add	eax, eax
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	add	edx, edx
	lea	ecx, 1[rax]
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, [rax+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	mov	DWORD PTR -800016[rbp+rax*4], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L8
	jmp	.L10
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	call	_Z3bfsv
	mov	eax, DWORD PTR k[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: