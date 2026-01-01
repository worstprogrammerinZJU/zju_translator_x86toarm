	.file	"2492.c"
	.intel_syntax noprefix
	.text
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 8004
p:
	.zero	8004
	.globl	s
	.align 32
	.type	s, @object
	.size	s, 8004
s:
	.zero	8004
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"Scenario #%d:\n"
.LC3:
	.string	"No suspicious bugs found!\n"
.LC4:
	.string	"Suspicious bugs found!\n"
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
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
.L14:
	lea	rdx, -48[rbp]
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -32[rbp], 0
	mov	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	DWORD PTR [rdx+rax], 0
	sub	DWORD PTR -24[rbp], 1
.L3:
	cmp	DWORD PTR -24[rbp], 0
	jg	.L4
	mov	DWORD PTR -24[rbp], 0
	jmp	.L5
.L11:
	lea	rdx, -40[rbp]
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	DWORD PTR -32[rbp], 0
	jne	.L6
	mov	eax, DWORD PTR -44[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jne	.L7
	mov	DWORD PTR -32[rbp], 1
.L7:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	jmp	.L9
.L8:
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, s[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L9:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L10
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	jmp	.L6
.L10:
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, s[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L6:
	add	DWORD PTR -24[rbp], 1
.L5:
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -32[rbp], 0
	jne	.L12
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L13
.L12:
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
.L13:
	add	DWORD PTR -28[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L14
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	ret
	.size	main, .-main
	.globl	root
	.type	root, @function
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
.L18:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L19
	jmp	.L20
.L21:
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, p[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L20:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L21
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	root, .-root
	.globl	merge
	.type	merge, @function
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L27
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L26
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, p[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L23
.L26:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, p[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L23
.L27:
	nop
.L23:
	leave
	ret
	.size	merge, .-merge
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
