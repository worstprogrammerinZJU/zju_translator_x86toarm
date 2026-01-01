	.file	"1799-maximize-score-after-n-operations.c"
	.intel_syntax noprefix
	.text
	.globl	greatestCommonDivisor
	.type	greatestCommonDivisor, @function
greatestCommonDivisor:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -24[rbp], edx
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
.L2:
	cmp	DWORD PTR -24[rbp], 0
	jne	.L3
	mov	eax, DWORD PTR -20[rbp]
	pop	rbp
	ret
	.size	greatestCommonDivisor, .-greatestCommonDivisor
	.globl	max
	.type	max, @function
max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	pop	rbp
	ret
	.size	max, .-max
	.globl	func
	.type	func, @function
func:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	DWORD PTR -64[rbp], edx
	mov	QWORD PTR -72[rbp], rcx
	mov	QWORD PTR -80[rbp], r8
	mov	DWORD PTR -84[rbp], r9d
	mov	eax, DWORD PTR -84[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L8
	mov	eax, 0
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	jmp	.L9
.L10:
	mov	DWORD PTR -36[rbp], 0
	jmp	.L11
.L18:
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -64[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	mov	DWORD PTR -32[rbp], eax
	jmp	.L14
.L17:
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -64[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L20
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, 1
	mov	ecx, eax
	sal	esi, cl
	mov	eax, esi
	or	eax, edx
	or	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	imul	eax, DWORD PTR -60[rbp]
	mov	ebx, eax
	mov	eax, DWORD PTR -60[rbp]
	lea	esi, 1[rax]
	mov	r8d, DWORD PTR -84[rbp]
	mov	rdi, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9d, r8d
	mov	r8, rdi
	mov	rdi, rax
	call	func
	add	eax, ebx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -72[rbp]
	lea	rbx, [rcx+rdx]
	mov	edx, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR [rbx], eax
	jmp	.L16
.L20:
	nop
.L16:
	add	DWORD PTR -32[rbp], 1
.L14:
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -84[rbp]
	jl	.L17
	jmp	.L13
.L19:
	nop
.L13:
	add	DWORD PTR -36[rbp], 1
.L11:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -84[rbp]
	jl	.L18
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
.L9:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	func, .-func
	.globl	maxScore
	.type	maxScore, @function
maxScore:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -76[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -64[rbp], 0
	jmp	.L22
.L23:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	add	DWORD PTR -64[rbp], 1
.L22:
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L23
	mov	DWORD PTR -60[rbp], 0
	jmp	.L24
.L27:
	mov	DWORD PTR -56[rbp], 0
	jmp	.L25
.L26:
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	mov	ecx, DWORD PTR -60[rbp]
	movsx	rcx, ecx
	lea	rsi, 0[0+rcx*8]
	mov	rcx, QWORD PTR -32[rbp]
	add	rcx, rsi
	mov	rsi, QWORD PTR [rcx]
	mov	ecx, DWORD PTR -56[rbp]
	movsx	rcx, ecx
	sal	rcx, 2
	lea	rbx, [rsi+rcx]
	mov	esi, edx
	mov	edi, eax
	call	greatestCommonDivisor
	mov	DWORD PTR [rbx], eax
	add	DWORD PTR -56[rbp], 1
.L25:
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L26
	add	DWORD PTR -60[rbp], 1
.L24:
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L27
	mov	edi, 65536
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L28
.L29:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], -1
	add	DWORD PTR -52[rbp], 1
.L28:
	cmp	DWORD PTR -52[rbp], 16383
	jle	.L29
	mov	esi, DWORD PTR -44[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	r9d, esi
	mov	r8, rcx
	mov	rcx, rdx
	mov	edx, 0
	mov	esi, 1
	mov	rdi, rax
	call	func
	mov	DWORD PTR -36[rbp], eax
	mov	DWORD PTR -48[rbp], 0
	jmp	.L30
.L31:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	add	DWORD PTR -48[rbp], 1
.L30:
	mov	eax, DWORD PTR -48[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L31
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, DWORD PTR -36[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	maxScore, .-maxScore
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
