G:
GT:
c:
bottom:
find:
n:
m:
e:
q:
a1:
a2:
p:
_Z7ADJLISTv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, G[rip]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	edx, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, GT[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, GT[rip]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR e[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	nop
	nop
	leave
	ret
_Z2gtv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L6
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, GT[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, GT[rip]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L7
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L8
	nop
	nop
	leave
	ret
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
	lea	rdx, c[rip]
	mov	BYTE PTR [rax+rdx], 1
	jmp	.L10
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, c[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L11
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edi, eax
	call	_Z15dfs_visit_firsti
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L12
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR m[rip]
	lea	ecx, -1[rax]
	mov	DWORD PTR m[rip], ecx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, a1[rip]
	mov	DWORD PTR [rcx+rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, GT[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, c[rip]
	mov	BYTE PTR [rax+rdx], 1
	jmp	.L14
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, c[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L15
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edi, eax
	call	_Z16dfs_visit_secondi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L16
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR q[rip]
	lea	ecx, 1[rax]
	mov	DWORD PTR q[rip], ecx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, find[rip]
	mov	BYTE PTR [rax+rdx], 1
	nop
	leave
	ret
_Z9dfs_firstv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, 5001
	mov	esi, 0
	lea	rax, c[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR m[rip], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, c[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	_Z15dfs_visit_firsti
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L20
	nop
	nop
	leave
	ret
_Z10dfs_secondv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, 5001
	mov	esi, 0
	lea	rax, c[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L22
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, c[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L23
	mov	DWORD PTR q[rip], 0
	mov	edx, 5001
	mov	esi, 0
	lea	rax, find[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	_Z16dfs_visit_secondi
	mov	DWORD PTR -8[rbp], 0
	jmp	.L24
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L25
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, find[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	je	.L35
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L28
	jmp	.L27
	nop
	cmp	QWORD PTR -16[rbp], 0
	jne	.L36
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L31
	jmp	.L30
	nop
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L23
	mov	DWORD PTR -8[rbp], 0
	jmp	.L32
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, bottom[rip]
	mov	BYTE PTR [rax+rdx], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L33
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L34
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L38
	lea	rax, e[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 40008
	mov	esi, 0
	lea	rax, G[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 40008
	mov	esi, 0
	lea	rax, GT[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 5001
	mov	esi, 0
	lea	rax, bottom[rip]
	mov	rdi, rax
	call	memset@PLT
	call	_Z7ADJLISTv
	mov	DWORD PTR -4[rbp], 1
	jmp	.L39
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, a2[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L40
	call	_Z9dfs_firstv
	mov	DWORD PTR -4[rbp], 1
	jmp	.L41
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a1[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a2[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L42
	call	_Z10dfs_secondv
	mov	DWORD PTR -4[rbp], 1
	jmp	.L43
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, bottom[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	jne	.L44
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L45
	mov	edi, 10
	call	putchar@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	setne	al
	test	al, al
	jne	.L46
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: