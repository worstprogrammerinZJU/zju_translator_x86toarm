	.file	"0014-Longest-Common-Prefix.c"
	.intel_syntax noprefix
	.text
	.globl	longestCommonPrefix
	.type	longestCommonPrefix, @function
longestCommonPrefix:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
.L8:
	mov	DWORD PTR -24[rbp], 1
	jmp	.L3
.L7:
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	je	.L4
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L5
.L4:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	jmp	.L6
.L5:
	add	DWORD PTR -24[rbp], 1
.L3:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L7
	add	DWORD PTR -32[rbp], 1
	add	DWORD PTR -28[rbp], 1
.L2:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L8
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
.L6:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	longestCommonPrefix, .-longestCommonPrefix
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
