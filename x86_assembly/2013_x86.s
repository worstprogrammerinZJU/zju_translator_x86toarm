	.file	"2013.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"SET %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 416
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -404[rbp], 1
	lea	rax, -412[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L9:
	mov	DWORD PTR -408[rbp], 0
	jmp	.L3
.L4:
	lea	rcx, -400[rbp]
	mov	eax, DWORD PTR -408[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -408[rbp], 1
.L3:
	mov	eax, DWORD PTR -412[rbp]
	cmp	DWORD PTR -408[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -404[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -404[rbp], edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -408[rbp], 0
	jmp	.L5
.L6:
	lea	rcx, -400[rbp]
	mov	eax, DWORD PTR -408[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	mov	rdi, rax
	call	puts@PLT
	add	DWORD PTR -408[rbp], 2
.L5:
	mov	eax, DWORD PTR -412[rbp]
	cmp	DWORD PTR -408[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -412[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -412[rbp]
	mov	ecx, eax
	sar	ecx, 31
	shr	ecx, 31
	add	eax, ecx
	and	eax, 1
	sub	eax, ecx
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -408[rbp], eax
	jmp	.L7
.L8:
	lea	rcx, -400[rbp]
	mov	eax, DWORD PTR -408[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	mov	rdi, rax
	call	puts@PLT
	sub	DWORD PTR -408[rbp], 2
.L7:
	cmp	DWORD PTR -408[rbp], 0
	jg	.L8
	lea	rax, -412[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -412[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
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
