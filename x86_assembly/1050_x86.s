	.file	"1050.c"
	.intel_syntax noprefix
	.text
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
	mov	DWORD PTR -40024[rbp], 0
	lea	rax, -40044[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -40040[rbp], 0
	jmp	.L2
.L5:
	mov	DWORD PTR -40036[rbp], 0
	jmp	.L3
.L4:
	lea	rcx, -40016[rbp]
	mov	eax, DWORD PTR -40036[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -40040[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -40036[rbp], 1
.L3:
	mov	eax, DWORD PTR -40044[rbp]
	cmp	DWORD PTR -40036[rbp], eax
	jl	.L4
	add	DWORD PTR -40040[rbp], 1
.L2:
	mov	eax, DWORD PTR -40044[rbp]
	cmp	DWORD PTR -40040[rbp], eax
	jl	.L5
	mov	DWORD PTR -40040[rbp], 0
	jmp	.L6
.L15:
	mov	DWORD PTR -40036[rbp], 0
	jmp	.L7
.L14:
	mov	DWORD PTR -40020[rbp], 0
	mov	DWORD PTR -40032[rbp], 0
	jmp	.L8
.L13:
	mov	DWORD PTR -40028[rbp], 0
	jmp	.L9
.L10:
	mov	edx, DWORD PTR -40028[rbp]
	mov	eax, DWORD PTR -40036[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -40032[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	add	DWORD PTR -40020[rbp], eax
	add	DWORD PTR -40028[rbp], 1
.L9:
	mov	eax, DWORD PTR -40028[rbp]
	cmp	eax, DWORD PTR -40040[rbp]
	jle	.L10
	mov	eax, DWORD PTR -40020[rbp]
	cmp	eax, DWORD PTR -40024[rbp]
	jle	.L11
	mov	eax, DWORD PTR -40020[rbp]
	mov	DWORD PTR -40024[rbp], eax
.L11:
	cmp	DWORD PTR -40020[rbp], 0
	jns	.L12
	mov	DWORD PTR -40020[rbp], 0
.L12:
	add	DWORD PTR -40032[rbp], 1
.L8:
	mov	eax, DWORD PTR -40044[rbp]
	cmp	DWORD PTR -40032[rbp], eax
	jl	.L13
	add	DWORD PTR -40036[rbp], 1
.L7:
	mov	eax, DWORD PTR -40044[rbp]
	sub	eax, DWORD PTR -40040[rbp]
	cmp	DWORD PTR -40036[rbp], eax
	jl	.L14
	add	DWORD PTR -40040[rbp], 1
.L6:
	mov	eax, DWORD PTR -40044[rbp]
	cmp	DWORD PTR -40040[rbp], eax
	jl	.L15
	mov	eax, DWORD PTR -40024[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
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
