	.file	"3087.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	str
	.align 32
	.type	str, @object
	.size	str, 250
str:
	.zero	250
	.text
	.globl	change
	.type	change, @function
change:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], al
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -8[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	cmp	DWORD PTR -8[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	nop
	pop	rbp
	ret
	.size	change, .-change
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"%d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 800
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -796[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -788[rbp], 1
	jmp	.L5
.L10:
	mov	DWORD PTR -792[rbp], 0
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -784[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, -784[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -272[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -784[rbp]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcpy@PLT
	jmp	.L6
.L9:
	lea	rdx, -528[rbp]
	lea	rax, -784[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	change
	lea	rdx, -528[rbp]
	lea	rax, -784[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	lea	rax, -784[rbp]
	lea	rdx, str[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -792[rbp], -1
	jmp	.L8
.L7:
	add	DWORD PTR -792[rbp], 1
.L6:
	lea	rdx, -784[rbp]
	lea	rax, -272[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
.L8:
	mov	edx, DWORD PTR -792[rbp]
	mov	eax, DWORD PTR -788[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -788[rbp], 1
.L5:
	mov	eax, DWORD PTR -796[rbp]
	cmp	DWORD PTR -788[rbp], eax
	jle	.L10
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
