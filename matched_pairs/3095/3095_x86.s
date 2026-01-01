	.file	"3095.c"
	.intel_syntax noprefix
	.text
	.globl	len
	.bss
	.align 4
	.type	len, @object
	.size	len, 4
len:
	.zero	4
	.globl	str
	.align 32
	.type	str, @object
	.size	str, 100
str:
	.zero	100
	.text
	.globl	left
	.type	left, @function
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 46
	jne	.L3
	mov	eax, 100
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	je	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 92
	jne	.L6
.L5:
	mov	eax, 0
	jmp	.L4
.L6:
	sub	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -4[rbp], 0
	jns	.L7
	mov	eax, 100
.L4:
	pop	rbp
	ret
	.size	left, .-left
	.globl	right
	.type	right, @function
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L9
.L14:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 46
	jne	.L10
	mov	eax, 100
	jmp	.L11
.L10:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	je	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 47
	jne	.L13
.L12:
	mov	eax, 0
	jmp	.L11
.L13:
	add	DWORD PTR -4[rbp], 1
.L9:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, 100
.L11:
	pop	rbp
	ret
	.size	right, .-right
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"#"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L16
.L23:
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR len[rip], eax
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L17
.L22:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 46
	jne	.L18
	add	DWORD PTR -24[rbp], 100
	jmp	.L19
.L18:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 47
	jne	.L20
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	left
	add	DWORD PTR -24[rbp], eax
	jmp	.L19
.L20:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 92
	jne	.L21
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	right
	add	DWORD PTR -24[rbp], eax
	jmp	.L19
.L21:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	jne	.L19
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	left
	mov	ebx, eax
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	right
	add	eax, ebx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	DWORD PTR -24[rbp], eax
.L19:
	add	DWORD PTR -20[rbp], 1
.L17:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L22
	mov	ecx, DWORD PTR len[rip]
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	ecx
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
.L16:
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L23
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
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
