	.file	"3075.c"
	.intel_syntax noprefix
	.text
	.globl	s
	.bss
	.align 16
	.type	s, @object
	.size	s, 20
s:
	.zero	20
	.text
	.globl	find
	.type	find, @function
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	movzx	eax, BYTE PTR s[rip]
	cmp	BYTE PTR -4[rbp], al
	jne	.L2
	movzx	eax, BYTE PTR s[rip+1]
	cmp	BYTE PTR -4[rbp], al
	jne	.L2
	movzx	eax, BYTE PTR s[rip+2]
	cmp	BYTE PTR -4[rbp], al
	jne	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	movzx	eax, BYTE PTR s[rip+3]
	cmp	BYTE PTR -4[rbp], al
	jne	.L4
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L4
	movzx	eax, BYTE PTR s[rip+5]
	cmp	BYTE PTR -4[rbp], al
	jne	.L4
	mov	eax, 1
	jmp	.L3
.L4:
	movzx	eax, BYTE PTR s[rip+6]
	cmp	BYTE PTR -4[rbp], al
	jne	.L5
	movzx	eax, BYTE PTR s[rip+7]
	cmp	BYTE PTR -4[rbp], al
	jne	.L5
	movzx	eax, BYTE PTR s[rip+8]
	cmp	BYTE PTR -4[rbp], al
	jne	.L5
	mov	eax, 1
	jmp	.L3
.L5:
	movzx	eax, BYTE PTR s[rip]
	cmp	BYTE PTR -4[rbp], al
	jne	.L6
	movzx	eax, BYTE PTR s[rip+3]
	cmp	BYTE PTR -4[rbp], al
	jne	.L6
	movzx	eax, BYTE PTR s[rip+6]
	cmp	BYTE PTR -4[rbp], al
	jne	.L6
	mov	eax, 1
	jmp	.L3
.L6:
	movzx	eax, BYTE PTR s[rip+1]
	cmp	BYTE PTR -4[rbp], al
	jne	.L7
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L7
	movzx	eax, BYTE PTR s[rip+7]
	cmp	BYTE PTR -4[rbp], al
	jne	.L7
	mov	eax, 1
	jmp	.L3
.L7:
	movzx	eax, BYTE PTR s[rip+2]
	cmp	BYTE PTR -4[rbp], al
	jne	.L8
	movzx	eax, BYTE PTR s[rip+5]
	cmp	BYTE PTR -4[rbp], al
	jne	.L8
	movzx	eax, BYTE PTR s[rip+8]
	cmp	BYTE PTR -4[rbp], al
	jne	.L8
	mov	eax, 1
	jmp	.L3
.L8:
	movzx	eax, BYTE PTR s[rip]
	cmp	BYTE PTR -4[rbp], al
	jne	.L9
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L9
	movzx	eax, BYTE PTR s[rip+8]
	cmp	BYTE PTR -4[rbp], al
	jne	.L9
	mov	eax, 1
	jmp	.L3
.L9:
	movzx	eax, BYTE PTR s[rip+2]
	cmp	BYTE PTR -4[rbp], al
	jne	.L10
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L10
	movzx	eax, BYTE PTR s[rip+6]
	cmp	BYTE PTR -4[rbp], al
	jne	.L10
	mov	eax, 1
	jmp	.L3
.L10:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	find, .-find
	.section	.rodata
.LC0:
	.string	"valid"
.LC1:
	.string	"invalid"
.LC2:
	.string	"%s"
.LC3:
	.string	"end"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L12
.L22:
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L13
.L16:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 88
	jne	.L14
	add	DWORD PTR -20[rbp], 1
.L14:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 79
	jne	.L15
	add	DWORD PTR -16[rbp], 1
.L15:
	add	DWORD PTR -24[rbp], 1
.L13:
	cmp	DWORD PTR -24[rbp], 8
	jle	.L16
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	je	.L17
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jne	.L18
.L17:
	mov	edi, 88
	call	find
	mov	DWORD PTR -8[rbp], eax
	mov	edi, 79
	call	find
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L19
	cmp	DWORD PTR -8[rbp], 0
	jne	.L19
	cmp	DWORD PTR -4[rbp], 1
	jne	.L19
	mov	DWORD PTR -12[rbp], 1
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jne	.L20
	cmp	DWORD PTR -8[rbp], 1
	jne	.L20
	cmp	DWORD PTR -4[rbp], 0
	jne	.L20
	mov	DWORD PTR -12[rbp], 1
	jmp	.L18
.L20:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	cmp	eax, 9
	jne	.L18
	cmp	DWORD PTR -4[rbp], 0
	jne	.L18
	mov	DWORD PTR -12[rbp], 1
.L18:
	cmp	DWORD PTR -12[rbp], 0
	je	.L21
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L12
.L21:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L12:
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, s[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L22
	mov	eax, 0
	leave
	ret
	.size	main, .-main
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
