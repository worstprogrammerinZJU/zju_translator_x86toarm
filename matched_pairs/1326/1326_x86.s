	.file	"1326.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"%s%d%s"
.LC2:
	.string	"0"
.LC3:
	.string	"%d\n"
.LC4:
	.string	"#"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 240
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -224[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L9:
	mov	DWORD PTR -228[rbp], 0
	jmp	.L3
.L8:
	lea	rcx, -112[rbp]
	lea	rdx, -232[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 70
	jne	.L4
	mov	eax, DWORD PTR -232[rbp]
	add	eax, eax
	add	DWORD PTR -228[rbp], eax
	jmp	.L5
.L4:
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 66
	jne	.L6
	mov	eax, DWORD PTR -232[rbp]
	add	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -232[rbp]
	add	eax, edx
	add	DWORD PTR -228[rbp], eax
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -232[rbp]
	cmp	eax, 499
	jg	.L7
	add	DWORD PTR -228[rbp], 500
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -232[rbp]
	add	DWORD PTR -228[rbp], eax
.L5:
	lea	rax, -224[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L3:
	lea	rax, -224[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -228[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -224[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	lea	rax, -224[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
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
