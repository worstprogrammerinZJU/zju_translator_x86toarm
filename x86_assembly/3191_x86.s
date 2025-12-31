	.file	"3191.c"
	.intel_syntax noprefix
	.text
	.globl	i
	.bss
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	str
	.align 32
	.type	str, @object
	.size	str, 50
str:
	.zero	50
	.text
	.globl	mod
	.type	mod, @function
mod:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 0
	jns	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR i[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR i[rip], edx
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 49
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR i[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR i[rip], edx
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 48
	jmp	.L5
.L4:
	mov	eax, DWORD PTR i[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR i[rip], edx
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 49
.L5:
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
.L3:
	pop	rbp
	ret
	.size	mod, .-mod
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR i[rip], 0
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L7:
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	mod
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L7
	jmp	.L8
.L9:
	mov	eax, DWORD PTR i[rip]
	sub	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	eax, DWORD PTR i[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
.L8:
	mov	eax, DWORD PTR i[rip]
	test	eax, eax
	jns	.L9
	mov	edi, 10
	call	putchar@PLT
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
