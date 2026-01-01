	.file	"2406.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"%d\n"
.LC2:
	.string	"1"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -999424[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 608
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -1000016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L12:
	mov	DWORD PTR -1000024[rbp], 0
	lea	rax, -1000016[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -1000020[rbp], eax
	mov	DWORD PTR -1000032[rbp], 1
	jmp	.L3
.L10:
	mov	eax, DWORD PTR -1000032[rbp]
	cdqe
	movzx	edx, BYTE PTR -1000016[rbp+rax]
	movzx	eax, BYTE PTR -1000016[rbp]
	cmp	dl, al
	jne	.L4
	mov	eax, DWORD PTR -1000020[rbp]
	cdq
	idiv	DWORD PTR -1000032[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -1000032[rbp]
	add	eax, 1
	mov	DWORD PTR -1000028[rbp], eax
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -1000028[rbp]
	cdqe
	movzx	edx, BYTE PTR -1000016[rbp+rax]
	mov	eax, DWORD PTR -1000028[rbp]
	sub	eax, DWORD PTR -1000032[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	cmp	dl, al
	jne	.L15
	add	DWORD PTR -1000028[rbp], 1
.L5:
	mov	eax, DWORD PTR -1000028[rbp]
	cmp	eax, DWORD PTR -1000020[rbp]
	jl	.L8
	jmp	.L7
.L15:
	nop
.L7:
	mov	eax, DWORD PTR -1000028[rbp]
	cmp	eax, DWORD PTR -1000020[rbp]
	jne	.L4
	mov	DWORD PTR -1000024[rbp], 1
	mov	eax, DWORD PTR -1000028[rbp]
	cdq
	idiv	DWORD PTR -1000032[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
.L4:
	add	DWORD PTR -1000032[rbp], 1
.L3:
	mov	eax, DWORD PTR -1000032[rbp]
	cmp	eax, DWORD PTR -1000020[rbp]
	jl	.L10
.L9:
	cmp	DWORD PTR -1000024[rbp], 0
	jne	.L11
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L11:
	lea	rax, -1000016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	movzx	eax, BYTE PTR -1000016[rbp]
	cmp	al, 46
	jne	.L12
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
