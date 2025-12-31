	.file	"3325.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	min
	.align 4
	.type	min, @object
	.size	min, 4
min:
	.zero	4
	.globl	max
	.align 4
	.type	max, @object
	.size	max, 4
max:
	.zero	4
	.globl	sum
	.align 4
	.type	sum, @object
	.size	sum, 4
sum:
	.zero	4
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L7:
	mov	DWORD PTR min[rip], 1001
	mov	DWORD PTR max[rip], -1
	mov	DWORD PTR sum[rip], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L6:
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR sum[rip]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR max[rip]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR max[rip], eax
.L4:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR min[rip]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR min[rip], eax
.L5:
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR sum[rip]
	mov	edx, DWORD PTR min[rip]
	sub	eax, edx
	mov	edx, DWORD PTR max[rip]
	sub	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR sum[rip]
	mov	edx, DWORD PTR n[rip]
	lea	ecx, -2[rdx]
	cdq
	idiv	ecx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR sum[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L7
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
