	.file	"1936.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
.LC2:
	.string	"%s %s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -196608[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3424
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L9:
	mov	DWORD PTR -200020[rbp], 0
	mov	DWORD PTR -200024[rbp], 0
	jmp	.L3
.L7:
	mov	eax, DWORD PTR -200020[rbp]
	cdqe
	movzx	eax, BYTE PTR -200016[rbp+rax]
	test	al, al
	je	.L12
	mov	eax, DWORD PTR -200020[rbp]
	cdqe
	movzx	edx, BYTE PTR -200016[rbp+rax]
	mov	eax, DWORD PTR -200024[rbp]
	cdqe
	movzx	eax, BYTE PTR -100016[rbp+rax]
	cmp	dl, al
	jne	.L6
	add	DWORD PTR -200020[rbp], 1
.L6:
	add	DWORD PTR -200024[rbp], 1
.L3:
	mov	eax, DWORD PTR -200024[rbp]
	cdqe
	movzx	eax, BYTE PTR -100016[rbp+rax]
	test	al, al
	jne	.L7
	jmp	.L5
.L12:
	nop
.L5:
	mov	eax, DWORD PTR -200020[rbp]
	cdqe
	movzx	eax, BYTE PTR -200016[rbp+rax]
	test	al, al
	jne	.L8
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L2
.L8:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L2:
	lea	rdx, -100016[rbp]
	lea	rax, -200016[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
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
