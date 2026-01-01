	.file	"0003-longest-substring-without-repeating-characters.c"
	.intel_syntax noprefix
	.text
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
	.globl	lengthOfLongestSubstring
	.type	lengthOfLongestSubstring, @function
lengthOfLongestSubstring:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 560
	mov	QWORD PTR -552[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -528[rbp]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -540[rbp], 0
	mov	DWORD PTR -536[rbp], 0
	mov	DWORD PTR -532[rbp], 0
	jmp	.L4
.L8:
	mov	eax, DWORD PTR -536[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -552[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	movsx	rdx, eax
	mov	edx, DWORD PTR -528[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -528[rbp+rax*4], edx
	mov	eax, DWORD PTR -536[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -552[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	cmp	eax, 1
	jle	.L5
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -540[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -552[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	movsx	rdx, eax
	mov	edx, DWORD PTR -528[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -528[rbp+rax*4], edx
	add	DWORD PTR -540[rbp], 1
.L6:
	mov	eax, DWORD PTR -536[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -552[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	cmp	eax, 1
	jg	.L7
.L5:
	mov	eax, DWORD PTR -536[rbp]
	sub	eax, DWORD PTR -540[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -532[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -532[rbp], eax
	add	DWORD PTR -536[rbp], 1
.L4:
	mov	eax, DWORD PTR -536[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -552[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L8
	mov	eax, DWORD PTR -532[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	ret
	.size	lengthOfLongestSubstring, .-lengthOfLongestSubstring
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
