	.file	"1833.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d"
.LC2:
	.string	"%d "
.LC3:
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
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -4152[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4140[rbp], 1
	jmp	.L2
.L20:
	lea	rdx, -4144[rbp]
	lea	rax, -4148[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4136[rbp], 0
	jmp	.L3
.L4:
	lea	rdx, -4112[rbp]
	mov	eax, DWORD PTR -4136[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4136[rbp], 1
.L3:
	mov	eax, DWORD PTR -4148[rbp]
	cmp	DWORD PTR -4136[rbp], eax
	jl	.L4
	mov	DWORD PTR -4132[rbp], 1
	jmp	.L5
.L17:
	mov	eax, DWORD PTR -4148[rbp]
	sub	eax, 1
	mov	DWORD PTR -4128[rbp], eax
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -4128[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4112[rbp+rax*4]
	mov	eax, DWORD PTR -4128[rbp]
	cdqe
	mov	eax, DWORD PTR -4112[rbp+rax*4]
	cmp	edx, eax
	jl	.L23
	sub	DWORD PTR -4128[rbp], 1
.L6:
	cmp	DWORD PTR -4128[rbp], 0
	jg	.L9
	jmp	.L8
.L23:
	nop
.L8:
	cmp	DWORD PTR -4128[rbp], 0
	je	.L10
	mov	eax, DWORD PTR -4148[rbp]
	sub	eax, 1
	mov	DWORD PTR -4124[rbp], eax
	jmp	.L11
.L14:
	mov	eax, DWORD PTR -4128[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4112[rbp+rax*4]
	mov	eax, DWORD PTR -4124[rbp]
	cdqe
	mov	eax, DWORD PTR -4112[rbp+rax*4]
	cmp	edx, eax
	jl	.L24
	sub	DWORD PTR -4124[rbp], 1
.L11:
	cmp	DWORD PTR -4124[rbp], 0
	jns	.L14
	jmp	.L13
.L24:
	nop
.L13:
	mov	eax, DWORD PTR -4128[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -4112[rbp+rax*4]
	mov	DWORD PTR -4116[rbp], eax
	mov	eax, DWORD PTR -4128[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4124[rbp]
	cdqe
	mov	edx, DWORD PTR -4112[rbp+rax*4]
	movsx	rax, ecx
	mov	DWORD PTR -4112[rbp+rax*4], edx
	mov	eax, DWORD PTR -4124[rbp]
	cdqe
	mov	edx, DWORD PTR -4116[rbp]
	mov	DWORD PTR -4112[rbp+rax*4], edx
.L10:
	mov	eax, DWORD PTR -4128[rbp]
	mov	DWORD PTR -4120[rbp], eax
	jmp	.L15
.L16:
	mov	eax, DWORD PTR -4120[rbp]
	cdqe
	mov	eax, DWORD PTR -4112[rbp+rax*4]
	mov	DWORD PTR -4116[rbp], eax
	mov	edx, DWORD PTR -4148[rbp]
	mov	eax, DWORD PTR -4128[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -4120[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4112[rbp+rax*4]
	mov	eax, DWORD PTR -4120[rbp]
	cdqe
	mov	DWORD PTR -4112[rbp+rax*4], edx
	mov	edx, DWORD PTR -4148[rbp]
	mov	eax, DWORD PTR -4128[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -4120[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4116[rbp]
	mov	DWORD PTR -4112[rbp+rax*4], edx
	add	DWORD PTR -4120[rbp], 1
.L15:
	mov	edx, DWORD PTR -4148[rbp]
	mov	eax, DWORD PTR -4128[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -4120[rbp], eax
	jl	.L16
	add	DWORD PTR -4132[rbp], 1
.L5:
	mov	eax, DWORD PTR -4144[rbp]
	cmp	DWORD PTR -4132[rbp], eax
	jle	.L17
	mov	DWORD PTR -4136[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -4136[rbp]
	cdqe
	mov	eax, DWORD PTR -4112[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4136[rbp], 1
.L18:
	mov	eax, DWORD PTR -4148[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4136[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR -4136[rbp]
	cdqe
	mov	eax, DWORD PTR -4112[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4140[rbp], 1
.L2:
	mov	eax, DWORD PTR -4152[rbp]
	cmp	DWORD PTR -4140[rbp], eax
	jle	.L20
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
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
