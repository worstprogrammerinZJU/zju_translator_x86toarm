	.file	"1028.c"
	.intel_syntax noprefix
	.text
	.globl	top
	.bss
	.align 4
	.type	top, @object
	.size	top, 4
top:
	.zero	4
	.globl	up
	.align 4
	.type	up, @object
	.size	up, 4
up:
	.zero	4
	.globl	stack
	.data
	.align 32
	.type	stack, @object
	.size	stack, 11000
stack:
	.string	"http://www.acm.org/"
	.zero	80
	.zero	10900
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"VISIT"
.LC2:
	.string	"BACK"
.LC3:
	.string	"Ignored"
.LC4:
	.string	"FORWARD"
.LC5:
	.string	"QUIT"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L8:
	lea	rax, -112[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR top[rip]
	add	eax, 1
	mov	DWORD PTR top[rip], eax
	mov	eax, DWORD PTR top[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, stack[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR top[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, stack[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	mov	eax, DWORD PTR top[rip]
	mov	DWORD PTR up[rip], eax
	jmp	.L4
.L3:
	lea	rax, -112[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR top[rip]
	test	eax, eax
	jne	.L6
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L4
.L6:
	mov	eax, DWORD PTR top[rip]
	sub	eax, 1
	mov	DWORD PTR top[rip], eax
	mov	eax, DWORD PTR top[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, stack[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	jmp	.L4
.L5:
	lea	rax, -112[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L4
	mov	edx, DWORD PTR top[rip]
	mov	eax, DWORD PTR up[rip]
	cmp	edx, eax
	jne	.L7
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L4
.L7:
	mov	eax, DWORD PTR top[rip]
	add	eax, 1
	mov	DWORD PTR top[rip], eax
	mov	eax, DWORD PTR top[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, stack[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
.L4:
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	lea	rax, -112[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
