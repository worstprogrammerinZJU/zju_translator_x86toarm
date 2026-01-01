	.file	"2643.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	vote
	.align 32
	.type	vote, @object
	.size	vote, 80
vote:
	.zero	80
	.globl	name
	.align 32
	.type	name, @object
	.size	name, 2000
name:
	.zero	2000
	.globl	party
	.align 32
	.type	party, @object
	.size	party, 2000
party:
	.zero	2000
	.globl	input
	.align 32
	.type	input, @object
	.size	input, 100
input:
	.zero	100
	.text
	.globl	check
	.type	check, @function
check:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, name[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, input[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L4
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, -1
.L4:
	leave
	ret
	.size	check, .-check
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"tie"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, name[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, party[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	add	DWORD PTR -20[rbp], 1
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L8
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L9
.L11:
	lea	rax, input[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, 0
	call	check
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -16[rbp], -1
	je	.L10
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L10:
	add	DWORD PTR -20[rbp], 1
.L9:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L11
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -20[rbp], 1
	jmp	.L12
.L15:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L13
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -12[rbp], 1
	jmp	.L14
.L13:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L14
	mov	DWORD PTR -12[rbp], 0
.L14:
	add	DWORD PTR -20[rbp], 1
.L12:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L15
	cmp	DWORD PTR -12[rbp], 0
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L17
.L16:
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, party[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
.L17:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
