	.file	"1703.c"
	.intel_syntax noprefix
	.text
	.globl	num
	.bss
	.align 32
	.type	num, @object
	.size	num, 800008
num:
	.zero	800008
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	N
	.align 4
	.type	N, @object
	.size	N, 4
N:
	.zero	4
	.text
	.globl	diff
	.type	diff, @function
diff:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	ecx, DWORD PTR N[rip]
	cdq
	idiv	ecx
	mov	eax, edx
	pop	rbp
	ret
	.size	diff, .-diff
	.globl	root
	.type	root, @function
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
.L4:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L5
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, num[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
.L6:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L7
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	root, .-root
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%c%d%d"
.LC3:
	.string	"Not sure yet."
.LC4:
	.string	"In the same gang."
.LC5:
	.string	"In different gangs."
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L10
.L19:
	lea	rax, -44[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	mov	DWORD PTR N[rip], eax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, num[rip]
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -36[rbp], 1
.L11:
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L12
	mov	DWORD PTR -36[rbp], 0
	jmp	.L13
.L18:
	call	getchar@PLT
	lea	rcx, -48[rbp]
	lea	rdx, -52[rbp]
	lea	rax, -53[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -53[rbp]
	cmp	al, 65
	jne	.L14
	mov	eax, DWORD PTR -52[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -28[rbp], eax
	mov	ecx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	esi, edx
	mov	ecx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -28[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	cmp	esi, eax
	je	.L15
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L16
.L15:
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L17
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L16
.L17:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L16
.L14:
	mov	eax, DWORD PTR -52[rbp]
	mov	edi, eax
	call	diff
	mov	edi, eax
	call	root
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, num[rip]
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	diff
	mov	ebx, eax
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	diff
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, num[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L16:
	add	DWORD PTR -36[rbp], 1
.L13:
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L18
.L10:
	mov	eax, DWORD PTR -40[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -40[rbp], edx
	test	eax, eax
	jne	.L19
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
