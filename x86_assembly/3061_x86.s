	.file	"3061.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	S
	.align 4
	.type	S, @object
	.size	S, 4
S:
	.zero	4
	.globl	sum
	.align 4
	.type	sum, @object
	.size	sum, 4
sum:
	.zero	4
	.globl	min
	.align 4
	.type	min, @object
	.size	min, 4
min:
	.zero	4
	.globl	sen
	.align 32
	.type	sen, @object
	.size	sen, 200000
sen:
	.zero	200000
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"0"
.LC3:
	.string	"%d\n"
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
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
.L15:
	lea	rax, S[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR S[rip]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L5
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L6
.L5:
	mov	eax, DWORD PTR S[rip]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L7
	mov	eax, DWORD PTR n[rip]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
.L7:
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR sum[rip], 0
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR min[rip], eax
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	eax, WORD PTR [rdx+rax]
	movsx	edx, ax
	mov	eax, DWORD PTR sum[rip]
	add	eax, edx
	mov	DWORD PTR sum[rip], eax
.L9:
	mov	edx, DWORD PTR sum[rip]
	mov	eax, DWORD PTR S[rip]
	cmp	edx, eax
	jl	.L10
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	edx, WORD PTR [rdx+rax]
	mov	eax, DWORD PTR sum[rip]
	movsx	edx, dx
	sub	eax, edx
	mov	DWORD PTR sum[rip], eax
.L11:
	mov	eax, DWORD PTR sum[rip]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, [rdx+rdx]
	lea	rdx, sen[rip]
	movzx	edx, WORD PTR [rcx+rdx]
	movsx	ecx, dx
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR S[rip]
	cmp	edx, eax
	jge	.L12
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR min[rip]
	cmp	edx, eax
	jge	.L13
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR min[rip], eax
.L13:
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	edx, WORD PTR [rdx+rax]
	mov	eax, DWORD PTR sum[rip]
	movsx	edx, dx
	sub	eax, edx
	mov	DWORD PTR sum[rip], eax
.L8:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR min[rip]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L6:
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L15
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
