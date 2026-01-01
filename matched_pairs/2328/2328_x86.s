	.file	"2328.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"too high"
.LC2:
	.string	"too low"
.LC3:
	.string	"Stan may be honest"
.LC4:
	.string	"Stan is dishonest"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L14:
	call	getchar@PLT
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -32[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -88[rbp]
	mov	DWORD PTR -84[rbp], eax
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], 1
	add	DWORD PTR -84[rbp], 1
.L4:
	cmp	DWORD PTR -84[rbp], 10
	jle	.L5
	jmp	.L6
.L3:
	lea	rax, -32[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -84[rbp], 1
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], 1
	add	DWORD PTR -84[rbp], 1
.L8:
	mov	eax, DWORD PTR -88[rbp]
	cmp	DWORD PTR -84[rbp], eax
	jle	.L9
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	test	eax, eax
	jne	.L10
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L11
.L10:
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
.L11:
	mov	DWORD PTR -84[rbp], 1
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], 0
	add	DWORD PTR -84[rbp], 1
.L12:
	cmp	DWORD PTR -84[rbp], 10
	jle	.L13
.L6:
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -88[rbp]
	test	eax, eax
	jne	.L14
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
