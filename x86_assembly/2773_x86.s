	.file	"2773.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d%d"
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
	jmp	.L2
.L21:
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -76[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	DWORD PTR -48[rbp], 2
	mov	eax, DWORD PTR -76[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -76[rbp], eax
.L4:
	mov	eax, DWORD PTR -56[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	DWORD PTR -72[rbp], 1
	jmp	.L5
.L3:
	mov	DWORD PTR -72[rbp], 0
.L5:
	mov	DWORD PTR -68[rbp], 3
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -56[rbp]
	cdq
	idiv	DWORD PTR -68[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -72[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -72[rbp], edx
	cdqe
	mov	edx, DWORD PTR -68[rbp]
	mov	DWORD PTR -48[rbp+rax*4], edx
	mov	eax, DWORD PTR -76[rbp]
	cdq
	idiv	DWORD PTR -68[rbp]
	sub	DWORD PTR -76[rbp], eax
.L8:
	mov	eax, DWORD PTR -56[rbp]
	cdq
	idiv	DWORD PTR -68[rbp]
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	cdq
	idiv	DWORD PTR -68[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
.L7:
	add	DWORD PTR -68[rbp], 2
.L6:
	cmp	DWORD PTR -56[rbp], 1
	jg	.L9
	cmp	DWORD PTR -72[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -72[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -72[rbp], edx
	mov	edx, DWORD PTR -84[rbp]
	cdqe
	mov	DWORD PTR -48[rbp+rax*4], edx
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, 1
	je	.L10
	sub	DWORD PTR -76[rbp], 1
.L10:
	mov	eax, DWORD PTR -80[rbp]
	cdq
	idiv	DWORD PTR -76[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -84[rbp]
	imul	eax, edx
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -80[rbp]
	cdq
	idiv	DWORD PTR -76[rbp]
	mov	eax, edx
	mov	DWORD PTR -80[rbp], eax
	mov	eax, DWORD PTR -80[rbp]
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -80[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	sub	DWORD PTR -52[rbp], eax
.L11:
	mov	DWORD PTR -60[rbp], 1
	mov	DWORD PTR -68[rbp], 1
	jmp	.L12
.L20:
	add	DWORD PTR -60[rbp], 1
.L19:
	mov	DWORD PTR -64[rbp], 0
	jmp	.L13
.L16:
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	mov	ecx, DWORD PTR -48[rbp+rax*4]
	mov	eax, DWORD PTR -60[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L25
	add	DWORD PTR -64[rbp], 1
.L13:
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	jl	.L16
	jmp	.L15
.L25:
	nop
.L15:
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	je	.L26
	add	DWORD PTR -60[rbp], 1
	jmp	.L19
.L26:
	nop
	add	DWORD PTR -68[rbp], 1
.L12:
	mov	eax, DWORD PTR -80[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L20
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -60[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rdx, -80[rbp]
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L21
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
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
