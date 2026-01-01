	.file	"2664.c"
	.intel_syntax noprefix
	.text
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 400
p:
	.zero	400
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
.L4:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.globl	find
	.type	find, @function
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L6
.L10:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L7
	mov	eax, 1
	jmp	.L8
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
.L6:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L10
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L11
	mov	eax, 1
	jmp	.L8
.L11:
	mov	eax, 0
.L8:
	pop	rbp
	ret
	.size	find, .-find
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
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
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L13
.L24:
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -24[rbp], 0
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -24[rbp], 1
.L14:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L15
	mov	eax, DWORD PTR m[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, p[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -24[rbp], 0
	jmp	.L16
.L21:
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L17
.L19:
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	DWORD PTR -12[rbp], 1
	jne	.L18
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L18
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	find
	cmp	eax, 1
	jne	.L18
	add	DWORD PTR -16[rbp], 1
.L18:
	add	DWORD PTR -20[rbp], 1
.L17:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L20
	mov	DWORD PTR -12[rbp], 0
.L20:
	add	DWORD PTR -24[rbp], 1
.L16:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L21
	cmp	DWORD PTR -12[rbp], 1
	jne	.L22
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L23
.L22:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L23:
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L13:
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	jne	.L24
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
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
