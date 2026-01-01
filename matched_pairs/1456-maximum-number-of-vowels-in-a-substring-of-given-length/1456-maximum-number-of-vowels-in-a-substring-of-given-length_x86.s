	.file	"1456-maximum-number-of-vowels-in-a-substring-of-given-length.c"
	.intel_syntax noprefix
	.text
	.globl	isVowel
	.type	isVowel, @function
isVowel:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	cmp	BYTE PTR -4[rbp], 97
	je	.L2
	cmp	BYTE PTR -4[rbp], 101
	je	.L2
	cmp	BYTE PTR -4[rbp], 105
	je	.L2
	cmp	BYTE PTR -4[rbp], 111
	je	.L2
	cmp	BYTE PTR -4[rbp], 117
	jne	.L3
.L2:
	mov	eax, 1
	jmp	.L5
.L3:
	mov	eax, 0
.L5:
	pop	rbp
	ret
	.size	isVowel, .-isVowel
	.globl	maxVowels
	.type	maxVowels, @function
maxVowels:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	DWORD PTR -36[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isVowel
	add	DWORD PTR -36[rbp], eax
	add	DWORD PTR -28[rbp], 1
.L7:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L8
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L9
.L11:
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isVowel
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, edx
	mov	ebx, eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isVowel
	add	eax, ebx
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jle	.L10
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -32[rbp], eax
.L10:
	add	DWORD PTR -24[rbp], 1
.L9:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L11
	mov	eax, DWORD PTR -32[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	maxVowels, .-maxVowels
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
