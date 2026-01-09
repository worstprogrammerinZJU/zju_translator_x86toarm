_Z5setupv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	ret
n:
ans:
_Z5luckyxx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR n[rip]
	cmp	QWORD PTR -8[rbp], rax
	jg	.L6
	mov	rax, QWORD PTR n[rip]
	cmp	QWORD PTR -8[rbp], rax
	jne	.L5
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR ans[rip], rax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rax
	lea	rdx, 1[rax]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	add	rax, rax
	add	rax, 4
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z5luckyxx
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 1
	lea	rdx, [rax+rax]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	add	rax, rax
	add	rax, 7
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z5luckyxx
	jmp	.L2
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	call	_Z5setupv
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	esi, 0
	mov	edi, 0
	call	_Z5luckyxx
	mov	rax, QWORD PTR ans[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	eax, 0
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: