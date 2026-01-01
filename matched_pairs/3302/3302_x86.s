	.file	"3302.c"
	.intel_syntax noprefix
	.text
	.globl	s
	.bss
	.align 32
	.type	s, @object
	.size	s, 200
s:
	.zero	200
	.globl	t
	.align 32
	.type	t, @object
	.size	t, 200
t:
	.zero	200
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%s%s"
.LC2:
	.string	"YES"
.LC3:
	.string	"NO"
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
.L14:
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, t[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L4
	add	DWORD PTR -12[rbp], 1
.L4:
	add	DWORD PTR -16[rbp], 1
.L3:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	je	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L6
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L7
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L8
.L7:
	mov	DWORD PTR -12[rbp], 0
	sub	DWORD PTR -16[rbp], 1
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, t[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L10
	add	DWORD PTR -12[rbp], 1
.L10:
	sub	DWORD PTR -16[rbp], 1
.L9:
	cmp	DWORD PTR -16[rbp], 0
	js	.L11
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L12
.L11:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L13
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L8
.L13:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L8:
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L14
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
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
