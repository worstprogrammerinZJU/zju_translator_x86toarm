	.file	"3092.c"
	.intel_syntax noprefix
	.text
	.globl	power2
	.bss
	.align 4
	.type	power2, @object
	.size	power2, 4
power2:
	.zero	4
	.globl	power3
	.align 4
	.type	power3, @object
	.size	power3, 4
power3:
	.zero	4
	.text
	.globl	mod
	.type	mod, @function
mod:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR power2[rip], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR power2[rip]
	add	eax, eax
	mov	DWORD PTR power2[rip], eax
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	mod, .-mod
	.globl	term
	.type	term, @function
term:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR power3[rip], 1
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L7:
	mov	edx, DWORD PTR power3[rip]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	mov	DWORD PTR power3[rip], eax
	add	DWORD PTR -4[rbp], 1
.L6:
	mov	edx, DWORD PTR power2[rip]
	mov	eax, DWORD PTR power3[rip]
	imul	eax, edx
	cmp	DWORD PTR -20[rbp], eax
	jnb	.L7
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR power3[rip]
	mov	edx, eax
	mov	eax, 2863311531
	imul	rax, rdx
	shr	rax, 32
	shr	eax
	mov	DWORD PTR power3[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	term, .-term
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%u"
.LC2:
	.string	"%d %d"
.LC3:
	.string	" [%d,%d]"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 848
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -836[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -828[rbp], 1
	jmp	.L10
.L15:
	lea	rax, -832[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -824[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -832[rbp]
	mov	edi, eax
	call	mod
	mov	edx, DWORD PTR -824[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -816[rbp+rdx*4], eax
	mov	eax, DWORD PTR -832[rbp]
	mov	edi, eax
	call	term
	mov	edx, DWORD PTR -824[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -416[rbp+rdx*4], eax
	add	DWORD PTR -824[rbp], 1
	mov	eax, DWORD PTR -832[rbp]
	mov	ecx, DWORD PTR power2[rip]
	mov	edx, DWORD PTR power3[rip]
	imul	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -832[rbp], eax
.L11:
	mov	eax, DWORD PTR -832[rbp]
	test	eax, eax
	jne	.L12
	mov	edx, DWORD PTR -824[rbp]
	mov	eax, DWORD PTR -828[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -820[rbp], 0
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	mov	edx, DWORD PTR -416[rbp+rax*4]
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	mov	eax, DWORD PTR -816[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -820[rbp], 1
.L13:
	mov	eax, DWORD PTR -820[rbp]
	cmp	eax, DWORD PTR -824[rbp]
	jl	.L14
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -828[rbp], 1
.L10:
	mov	eax, DWORD PTR -836[rbp]
	cmp	DWORD PTR -828[rbp], eax
	jle	.L15
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
