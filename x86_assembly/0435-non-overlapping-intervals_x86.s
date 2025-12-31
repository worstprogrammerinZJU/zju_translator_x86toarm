	.file	"0435-non-overlapping-intervals.c"
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
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR 4[rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
	.size	compareIntervals, .-compareIntervals
	.globl	eraseOverlapIntervals
	.type	eraseOverlapIntervals, @function
eraseOverlapIntervals:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	cmp	DWORD PTR -44[rbp], 1
	jg	.L4
	mov	eax, 0
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -24[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -24[rbp], 1
.L6:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L7
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, compareIntervals[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -16[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -20[rbp], eax
	jg	.L9
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L9:
	add	DWORD PTR -12[rbp], 1
.L8:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L10
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -16[rbp]
.L5:
	leave
	ret
	.size	eraseOverlapIntervals, .-eraseOverlapIntervals
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
