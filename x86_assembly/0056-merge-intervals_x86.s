	.file	"0056-merge-intervals.c"
	.intel_syntax noprefix
	.text
	.globl	compareIntervals
	.type	compareIntervals, @function
compareIntervals:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
	.size	compareIntervals, .-compareIntervals
	.globl	merge
	.type	merge, @function
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	QWORD PTR -88[rbp], rdx
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -104[rbp], r8
	cmp	DWORD PTR -76[rbp], 1
	jg	.L4
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -76[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -104[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -76[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -56[rbp], 1
.L6:
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	jl	.L7
	mov	esi, DWORD PTR -76[rbp]
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, compareIntervals[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -76[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -48[rbp], 0
	jmp	.L8
.L12:
	cmp	DWORD PTR -52[rbp], 0
	je	.L9
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L10
.L9:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -52[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR [rdx], rax
	jmp	.L11
.L10:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 3
	lea	rcx, -8[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	ecx, DWORD PTR -52[rbp]
	movsx	rcx, ecx
	sal	rcx, 3
	lea	rsi, -8[rcx]
	mov	rcx, QWORD PTR -32[rbp]
	add	rcx, rsi
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR 4[rcx], eax
.L11:
	add	DWORD PTR -48[rbp], 1
.L8:
	mov	eax, DWORD PTR -48[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	jl	.L12
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR -44[rbp], 0
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	lea	rbx, [rdx+rax]
	mov	edi, 8
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -44[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	rdx, QWORD PTR [rdx]
	add	rdx, 4
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 2
	add	DWORD PTR -44[rbp], 1
.L13:
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jl	.L14
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -52[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
.L5:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	merge, .-merge
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
