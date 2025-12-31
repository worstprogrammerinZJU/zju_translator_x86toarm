	.file	"2361.c"
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
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"yes"
.LC3:
	.string	"no"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -36[rbp], 0
	jmp	.L12
.L29:
	mov	DWORD PTR -52[rbp], 0
	jmp	.L13
.L16:
	lea	rax, -18[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -48[rbp], 0
	jmp	.L14
.L15:
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR -48[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	movzx	edx, BYTE PTR -18[rbp+rax]
	movsx	rax, ecx
	lea	rcx, s[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -48[rbp], 1
.L14:
	cmp	DWORD PTR -48[rbp], 2
	jle	.L15
	add	DWORD PTR -52[rbp], 1
.L13:
	cmp	DWORD PTR -52[rbp], 2
	jle	.L16
	mov	DWORD PTR -40[rbp], 0
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -44[rbp], eax
	mov	DWORD PTR -32[rbp], 1
	mov	DWORD PTR -52[rbp], 0
	jmp	.L17
.L20:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 88
	jne	.L18
	add	DWORD PTR -44[rbp], 1
	jmp	.L19
.L18:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 79
	jne	.L19
	add	DWORD PTR -40[rbp], 1
.L19:
	add	DWORD PTR -52[rbp], 1
.L17:
	cmp	DWORD PTR -52[rbp], 8
	jle	.L20
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	je	.L21
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	cmp	DWORD PTR -44[rbp], eax
	jne	.L22
.L21:
	mov	edi, 88
	call	find
	mov	DWORD PTR -28[rbp], eax
	mov	edi, 79
	call	find
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -28[rbp], 1
	jne	.L23
	cmp	DWORD PTR -24[rbp], 1
	jne	.L23
	mov	DWORD PTR -32[rbp], 0
	jmp	.L24
.L23:
	cmp	DWORD PTR -28[rbp], 1
	jne	.L25
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jne	.L25
	mov	DWORD PTR -32[rbp], 0
	jmp	.L24
.L25:
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	cmp	DWORD PTR -44[rbp], eax
	jne	.L32
	cmp	DWORD PTR -28[rbp], 0
	jne	.L32
	cmp	DWORD PTR -24[rbp], 1
	jne	.L32
	mov	DWORD PTR -32[rbp], 0
	jmp	.L32
.L24:
	jmp	.L32
.L22:
	mov	DWORD PTR -32[rbp], 0
	jmp	.L26
.L32:
	nop
.L26:
	cmp	DWORD PTR -32[rbp], 0
	je	.L27
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L28
.L27:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L28:
	add	DWORD PTR -36[rbp], 1
.L12:
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L29
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
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
