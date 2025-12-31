	.file	"3404.c"
	.intel_syntax noprefix
	.text
	.globl	speed
	.bss
	.align 32
	.type	speed, @object
	.size	speed, 400
speed:
	.zero	400
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
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
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, speed[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
.L6:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, speed[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
.L10:
	mov	eax, DWORD PTR n[rip]
	sub	eax, 2
	mov	DWORD PTR n[rip], eax
	mov	ecx, DWORD PTR speed[rip]
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, speed[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR speed[rip+4]
	add	eax, eax
	cmp	edx, eax
	jle	.L9
	mov	edx, DWORD PTR speed[rip]
	mov	eax, DWORD PTR speed[rip+4]
	add	edx, eax
	mov	eax, DWORD PTR speed[rip+4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, speed[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	add	DWORD PTR -4[rbp], eax
	jmp	.L8
.L9:
	mov	eax, DWORD PTR speed[rip]
	lea	ecx, [rax+rax]
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, speed[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, speed[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	add	DWORD PTR -4[rbp], eax
.L8:
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 3
	jg	.L10
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 3
	jne	.L11
	mov	edx, DWORD PTR speed[rip]
	mov	eax, DWORD PTR speed[rip+4]
	add	edx, eax
	mov	eax, DWORD PTR speed[rip+8]
	add	eax, edx
	add	DWORD PTR -4[rbp], eax
	jmp	.L12
.L11:
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 2
	jne	.L13
	mov	eax, DWORD PTR speed[rip+4]
	add	DWORD PTR -4[rbp], eax
	jmp	.L12
.L13:
	mov	eax, DWORD PTR speed[rip]
	add	DWORD PTR -4[rbp], eax
.L12:
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
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
