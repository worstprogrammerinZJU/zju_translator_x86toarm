	.file	"2909.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"1"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2960
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -7040[rbp], 1
	lea	rdx, -7024[rbp]
	mov	eax, 0
	mov	ecx, 876
	mov	rdi, rdx
	rep stosq
	mov	WORD PTR -7024[rbp], 3
	mov	DWORD PTR -7052[rbp], 5
	jmp	.L2
.L8:
	mov	DWORD PTR -7048[rbp], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -7048[rbp]
	cdqe
	movzx	eax, WORD PTR -7024[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, DWORD PTR -7052[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L22
	add	DWORD PTR -7048[rbp], 1
.L3:
	mov	eax, DWORD PTR -7048[rbp]
	cmp	eax, DWORD PTR -7040[rbp]
	jl	.L6
	jmp	.L5
.L22:
	nop
.L5:
	mov	eax, DWORD PTR -7048[rbp]
	cmp	eax, DWORD PTR -7040[rbp]
	jne	.L7
	mov	eax, DWORD PTR -7040[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -7040[rbp], edx
	mov	edx, DWORD PTR -7052[rbp]
	cdqe
	mov	WORD PTR -7024[rbp+rax*2], dx
.L7:
	add	DWORD PTR -7052[rbp], 2
.L2:
	cmp	DWORD PTR -7052[rbp], 32678
	jle	.L8
	lea	rax, -7056[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L9
.L19:
	mov	DWORD PTR -7036[rbp], 0
	mov	eax, DWORD PTR -7056[rbp]
	cmp	eax, 4
	jne	.L10
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L11
.L10:
	mov	DWORD PTR -7052[rbp], 0
	jmp	.L12
.L18:
	mov	edx, DWORD PTR -7056[rbp]
	mov	eax, DWORD PTR -7052[rbp]
	cdqe
	movzx	eax, WORD PTR -7024[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -7032[rbp], eax
	mov	eax, DWORD PTR -7052[rbp]
	mov	DWORD PTR -7044[rbp], eax
	mov	eax, DWORD PTR -7040[rbp]
	sub	eax, 1
	mov	DWORD PTR -7048[rbp], eax
	jmp	.L13
.L17:
	mov	edx, DWORD PTR -7044[rbp]
	mov	eax, DWORD PTR -7048[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -7028[rbp], eax
	mov	eax, DWORD PTR -7028[rbp]
	cdqe
	movzx	eax, WORD PTR -7024[rbp+rax*2]
	cwde
	cmp	DWORD PTR -7032[rbp], eax
	jle	.L14
	mov	eax, DWORD PTR -7028[rbp]
	add	eax, 1
	mov	DWORD PTR -7044[rbp], eax
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -7028[rbp]
	cdqe
	movzx	eax, WORD PTR -7024[rbp+rax*2]
	cwde
	cmp	DWORD PTR -7032[rbp], eax
	jge	.L15
	mov	eax, DWORD PTR -7028[rbp]
	sub	eax, 1
	mov	DWORD PTR -7048[rbp], eax
	jmp	.L13
.L15:
	add	DWORD PTR -7036[rbp], 1
	jmp	.L16
.L13:
	mov	eax, DWORD PTR -7044[rbp]
	cmp	eax, DWORD PTR -7048[rbp]
	jle	.L17
.L16:
	add	DWORD PTR -7052[rbp], 1
.L12:
	mov	eax, DWORD PTR -7052[rbp]
	cdqe
	movzx	eax, WORD PTR -7024[rbp+rax*2]
	cwde
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -7056[rbp]
	cmp	edx, eax
	jle	.L18
	mov	eax, DWORD PTR -7036[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L11:
	lea	rax, -7056[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L9:
	mov	eax, DWORD PTR -7056[rbp]
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
