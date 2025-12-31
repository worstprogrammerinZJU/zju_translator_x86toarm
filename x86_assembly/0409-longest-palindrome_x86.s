	.file	"0409-longest-palindrome.c"
	.intel_syntax noprefix
	.text
	.globl	longestPalindrome
	.type	longestPalindrome, @function
longestPalindrome:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 576
	mov	QWORD PTR -568[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -528[rbp]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
	mov	rax, QWORD PTR -568[rbp]
	mov	QWORD PTR -536[rbp], rax
	jmp	.L2
.L3:
	mov	rax, QWORD PTR -536[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	movsx	rdx, eax
	mov	edx, DWORD PTR -528[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -528[rbp+rax*4], edx
	add	QWORD PTR -536[rbp], 1
.L2:
	mov	rax, QWORD PTR -536[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	DWORD PTR -548[rbp], 0
	mov	DWORD PTR -544[rbp], 0
	mov	DWORD PTR -540[rbp], 65
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -540[rbp]
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	and	eax, 1
	test	eax, eax
	je	.L5
	mov	DWORD PTR -548[rbp], 1
	mov	eax, DWORD PTR -540[rbp]
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	sub	eax, 1
	add	DWORD PTR -544[rbp], eax
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -540[rbp]
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	add	DWORD PTR -544[rbp], eax
.L6:
	add	DWORD PTR -540[rbp], 1
.L4:
	cmp	DWORD PTR -540[rbp], 122
	jle	.L7
	mov	eax, DWORD PTR -548[rbp]
	add	DWORD PTR -544[rbp], eax
	mov	eax, DWORD PTR -544[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	ret
	.size	longestPalindrome, .-longestPalindrome
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
