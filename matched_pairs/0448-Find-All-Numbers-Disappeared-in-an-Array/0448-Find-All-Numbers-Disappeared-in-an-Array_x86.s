	.file	"0448-Find-All-Numbers-Disappeared-in-an-Array.c"
	.intel_syntax noprefix
	.text
	.globl	findDisappearedNumbers
	.type	findDisappearedNumbers, @function
findDisappearedNumbers:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, eax
	neg	edx
	cmovs	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, -4[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	neg	edx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L3
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
.L6:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jle	.L5
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	DWORD PTR [rdx], ecx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -16[rbp]
	add	edx, 1
	mov	DWORD PTR [rax], edx
.L5:
	add	DWORD PTR -16[rbp], 1
.L4:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L6
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	.size	findDisappearedNumbers, .-findDisappearedNumbers
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
