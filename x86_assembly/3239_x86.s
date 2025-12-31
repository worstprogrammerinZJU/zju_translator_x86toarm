	.file	"3239.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d "
.LC1:
	.string	"%d\n"
.LC2:
	.string	"%d"
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
	jmp	.L2
.L41:
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	mov	esi, ecx
	sar	esi, 31
	mov	edx, eax
	sub	edx, esi
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 2
	je	.L3
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	mov	esi, ecx
	sar	esi, 31
	mov	edx, eax
	sub	edx, esi
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 3
	je	.L3
	mov	DWORD PTR -16[rbp], 2
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L4:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L5
	mov	DWORD PTR -16[rbp], 1
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L6:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L7
	mov	edi, 10
	call	putchar@PLT
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L9:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L10
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L11
	mov	DWORD PTR -16[rbp], 2
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L12:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L13
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 3
	mov	DWORD PTR -16[rbp], eax
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L14:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L15
	mov	DWORD PTR -16[rbp], 1
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L16:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jle	.L17
	jmp	.L18
.L11:
	mov	DWORD PTR -16[rbp], 1
	jmp	.L19
.L20:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L19:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L20
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 3
	mov	DWORD PTR -16[rbp], eax
	jmp	.L21
.L22:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L21:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L22
	mov	DWORD PTR -16[rbp], 2
	jmp	.L23
.L24:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L23:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jle	.L24
.L18:
	mov	edi, 10
	call	putchar@PLT
	jmp	.L2
.L8:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L25
.L26:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L25:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L26
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L27
	mov	DWORD PTR -16[rbp], 2
	jmp	.L28
.L29:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L28:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L29
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 3
	mov	DWORD PTR -16[rbp], eax
	jmp	.L30
.L31:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L30:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L31
	mov	DWORD PTR -16[rbp], 1
	jmp	.L32
.L33:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L32:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jle	.L33
	jmp	.L34
.L27:
	mov	DWORD PTR -16[rbp], 1
	jmp	.L35
.L36:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L35:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L36
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 3
	mov	DWORD PTR -16[rbp], eax
	jmp	.L37
.L38:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L37:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L38
	mov	DWORD PTR -16[rbp], 2
	jmp	.L39
.L40:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 2
.L39:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jle	.L40
.L34:
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L41
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
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
