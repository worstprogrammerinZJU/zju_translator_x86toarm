	.file	"2388.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3184
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -40024[rbp], 1
	lea	rdx, -40016[rbp]
	lea	rax, -40040[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -40040[rbp]
	sub	eax, 1
	mov	DWORD PTR -40020[rbp], eax
	mov	DWORD PTR -40032[rbp], 1
	jmp	.L2
.L5:
	lea	rax, -40036[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -40016[rbp]
	mov	eax, DWORD PTR -40036[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -40020[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -40020[rbp], edx
	mov	edx, DWORD PTR -40036[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -40024[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -40024[rbp], edx
	mov	edx, DWORD PTR -40036[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
.L4:
	add	DWORD PTR -40032[rbp], 1
.L2:
	mov	eax, DWORD PTR -40040[rbp]
	cmp	DWORD PTR -40032[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -40040[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 1
	mov	DWORD PTR -40036[rbp], eax
	mov	eax, DWORD PTR -40036[rbp]
	cmp	DWORD PTR -40024[rbp], eax
	jne	.L6
	mov	eax, DWORD PTR -40016[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -40036[rbp]
	cmp	DWORD PTR -40024[rbp], eax
	jle	.L8
	mov	DWORD PTR -40032[rbp], 1
	jmp	.L9
.L13:
	mov	eax, DWORD PTR -40032[rbp]
	add	eax, 1
	mov	DWORD PTR -40028[rbp], eax
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -40032[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -40028[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	cmp	edx, eax
	jge	.L11
	mov	eax, DWORD PTR -40032[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	DWORD PTR -40020[rbp], eax
	mov	eax, DWORD PTR -40028[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -40032[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	mov	eax, DWORD PTR -40028[rbp]
	cdqe
	mov	edx, DWORD PTR -40020[rbp]
	mov	DWORD PTR -40016[rbp+rax*4], edx
.L11:
	add	DWORD PTR -40028[rbp], 1
.L10:
	mov	eax, DWORD PTR -40028[rbp]
	cmp	eax, DWORD PTR -40024[rbp]
	jl	.L12
	add	DWORD PTR -40032[rbp], 1
.L9:
	mov	edx, DWORD PTR -40036[rbp]
	mov	eax, DWORD PTR -40024[rbp]
	sub	eax, edx
	cmp	DWORD PTR -40032[rbp], eax
	jle	.L13
	mov	eax, DWORD PTR -40032[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -40024[rbp]
	mov	DWORD PTR -40032[rbp], eax
	jmp	.L14
.L18:
	mov	eax, DWORD PTR -40032[rbp]
	add	eax, 1
	mov	DWORD PTR -40028[rbp], eax
	jmp	.L15
.L17:
	mov	eax, DWORD PTR -40032[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -40028[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	cmp	edx, eax
	jle	.L16
	mov	eax, DWORD PTR -40032[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	DWORD PTR -40020[rbp], eax
	mov	eax, DWORD PTR -40028[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -40032[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	mov	eax, DWORD PTR -40028[rbp]
	cdqe
	mov	edx, DWORD PTR -40020[rbp]
	mov	DWORD PTR -40016[rbp+rax*4], edx
.L16:
	add	DWORD PTR -40028[rbp], 1
.L15:
	mov	eax, DWORD PTR -40040[rbp]
	cmp	DWORD PTR -40028[rbp], eax
	jl	.L17
	add	DWORD PTR -40032[rbp], 1
.L14:
	mov	eax, DWORD PTR -40036[rbp]
	cmp	DWORD PTR -40032[rbp], eax
	jl	.L18
	mov	eax, DWORD PTR -40032[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L7:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
