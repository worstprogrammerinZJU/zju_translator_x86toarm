	.file	"2497.c"
	.intel_syntax noprefix
	.text
	.globl	difficult
	.bss
	.align 32
	.type	difficult, @object
	.size	difficult, 120
difficult:
	.zero	120
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
	mov	eax, -1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, 1
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
	.string	"%d%d"
.LC2:
	.string	"Scenario #%d:\n"
	.align 8
.LC3:
	.string	"Steve wins with %d solved problems and a score of %d.\n\n"
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
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], 1
	jmp	.L6
.L14:
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -24[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, difficult[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -24[rbp], 1
.L7:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, difficult[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L9
.L13:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, difficult[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jg	.L17
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -24[rbp], 1
.L9:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L13
	jmp	.L12
.L17:
	nop
.L12:
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -28[rbp], 1
.L6:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jle	.L14
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
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
