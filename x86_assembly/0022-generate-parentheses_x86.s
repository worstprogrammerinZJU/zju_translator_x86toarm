	.file	"0022-generate-parentheses.c"
	.intel_syntax noprefix
	.text
	.globl	DefStr
	.bss
	.align 16
	.type	DefStr, @object
	.size	DefStr, 16
DefStr:
	.zero	16
	.text
	.globl	push_back
	.type	push_back, @function
push_back:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	BYTE PTR -12[rbp], al
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR 12[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	cmp	edx, eax
	jg	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rdx], ecx
	cdqe
	lea	rdx, [rsi+rax]
	movzx	eax, BYTE PTR -12[rbp]
	mov	BYTE PTR [rdx], al
	jmp	.L1
.L4:
	nop
.L1:
	pop	rbp
	ret
	.size	push_back, .-push_back
	.globl	pop_back
	.type	pop_back, @function
pop_back:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	test	eax, eax
	je	.L8
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	lea	ecx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rdx], ecx
	cdqe
	add	rax, rsi
	mov	BYTE PTR [rax], 0
	jmp	.L5
.L8:
	nop
.L5:
	pop	rbp
	ret
	.size	pop_back, .-pop_back
	.globl	backtrack
	.type	backtrack, @function
backtrack:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -36[rbp], ecx
	mov	QWORD PTR -48[rbp], r8
	mov	QWORD PTR -56[rbp], r9
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jg	.L14
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -36[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, eax
	cmp	edx, eax
	jne	.L12
	mov	eax, DWORD PTR -28[rbp]
	add	eax, eax
	add	eax, 1
	cdqe
	mov	rdx, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR [rdx]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rbx, [rcx+rdx]
	mov	esi, 1
	mov	rdi, rax
	call	calloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, eax
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rsi, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rsi
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jge	.L13
	mov	rax, QWORD PTR -48[rbp]
	mov	esi, 40
	mov	rdi, rax
	call	push_back
	mov	eax, DWORD PTR -32[rbp]
	lea	edi, 1[rax]
	mov	r8, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9, r8
	mov	r8, rcx
	mov	ecx, edx
	mov	edx, edi
	mov	rdi, rax
	call	backtrack
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	pop_back
.L13:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jge	.L9
	mov	rax, QWORD PTR -48[rbp]
	mov	esi, 41
	mov	rdi, rax
	call	push_back
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	r8, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	edx, DWORD PTR -32[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9, r8
	mov	r8, rdi
	mov	rdi, rax
	call	backtrack
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	pop_back
	jmp	.L9
.L14:
	nop
.L9:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	backtrack, .-backtrack
	.globl	generateParenthesis
	.type	generateParenthesis, @function
generateParenthesis:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	eax, DWORD PTR -52[rbp]
	add	eax, eax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	rax, QWORD PTR .LC0[rip]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	movsd	xmm1, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR .LC2[rip]
	jnb	.L16
	cvttsd2si	rax, xmm0
	jmp	.L17
.L16:
	movsd	xmm1, QWORD PTR .LC2[rip]
	subsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	movabs	rdx, -9223372036854775808
	xor	rax, rdx
.L17:
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	eax, DWORD PTR -52[rbp]
	add	eax, eax
	add	eax, 1
	cdqe
	mov	esi, 1
	mov	rdi, rax
	call	calloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	add	eax, eax
	mov	DWORD PTR -24[rbp], eax
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], 0
	mov	rcx, QWORD PTR -64[rbp]
	lea	rdx, -32[rbp]
	mov	esi, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r9, rcx
	mov	r8, rdx
	mov	ecx, 0
	mov	edx, 0
	mov	rdi, rax
	call	backtrack
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	ret
	.size	generateParenthesis, .-generateParenthesis
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC1:
	.long	0
	.long	1075838976
	.align 8
.LC2:
	.long	0
	.long	1138753536
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
