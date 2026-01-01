	.file	"1323.c"
	.intel_syntax noprefix
	.text
	.globl	card
	.bss
	.align 32
	.type	card, @object
	.size	card, 200
card:
	.zero	200
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
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
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"Case %d: %d\n"
.LC2:
	.string	"%d%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -4028[rbp], 1
	jmp	.L6
.L19:
	mov	DWORD PTR -4032[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, card[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4032[rbp], 1
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4032[rbp], eax
	jl	.L8
	mov	DWORD PTR -4032[rbp], 1
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], 0
	add	DWORD PTR -4032[rbp], 1
.L9:
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR m[rip]
	imul	eax, edx
	cmp	DWORD PTR -4032[rbp], eax
	jle	.L10
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, card[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR m[rip]
	imul	eax, edx
	mov	DWORD PTR -4024[rbp], eax
	mov	DWORD PTR -4020[rbp], 0
	mov	DWORD PTR -4032[rbp], 0
	jmp	.L11
.L13:
	sub	DWORD PTR -4024[rbp], 1
.L12:
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	eax, 1
	je	.L13
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, card[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4024[rbp], eax
	jne	.L14
	add	DWORD PTR -4020[rbp], 1
.L14:
	mov	eax, DWORD PTR -4024[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], 1
	mov	eax, DWORD PTR -4032[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, card[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], 1
	add	DWORD PTR -4032[rbp], 1
.L11:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4032[rbp], eax
	jl	.L12
	mov	eax, DWORD PTR -4028[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4028[rbp], edx
	mov	edx, DWORD PTR -4020[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L6:
	lea	rax, n[rip]
	mov	rdx, rax
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	jne	.L16
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	je	.L17
.L16:
	mov	eax, 1
	jmp	.L18
.L17:
	mov	eax, 0
.L18:
	test	eax, eax
	jne	.L19
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
