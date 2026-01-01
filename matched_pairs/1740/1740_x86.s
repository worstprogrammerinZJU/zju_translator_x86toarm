	.file	"1740.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"0"
.LC2:
	.string	"1"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -116[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L15:
	mov	DWORD PTR -104[rbp], 0
	mov	DWORD PTR -100[rbp], 0
	mov	DWORD PTR -108[rbp], 0
	jmp	.L3
.L9:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	mov	DWORD PTR -48[rbp+rax*4], 1
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -104[rbp], 0
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	mov	edx, DWORD PTR -96[rbp+rax*4]
	mov	eax, DWORD PTR -112[rbp]
	cmp	edx, eax
	jne	.L5
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	mov	DWORD PTR -48[rbp+rax*4], edx
	jmp	.L6
.L5:
	add	DWORD PTR -104[rbp], 1
.L4:
	mov	eax, DWORD PTR -104[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jl	.L7
.L6:
	mov	eax, DWORD PTR -104[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jne	.L8
	mov	eax, DWORD PTR -100[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -100[rbp], edx
	mov	edx, DWORD PTR -112[rbp]
	cdqe
	mov	DWORD PTR -96[rbp+rax*4], edx
.L8:
	add	DWORD PTR -108[rbp], 1
.L3:
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -108[rbp], eax
	jl	.L9
	mov	DWORD PTR -108[rbp], 0
	mov	DWORD PTR -104[rbp], 0
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -108[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	and	eax, 1
	test	eax, eax
	je	.L11
	add	DWORD PTR -104[rbp], 1
.L11:
	add	DWORD PTR -108[rbp], 1
.L10:
	mov	eax, DWORD PTR -108[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jl	.L12
	cmp	DWORD PTR -104[rbp], 0
	jne	.L13
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L14
.L13:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L14:
	lea	rax, -116[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -116[rbp]
	test	eax, eax
	jne	.L15
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
