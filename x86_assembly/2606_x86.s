	.file	"2606.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1648
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -1628[rbp], 2
	lea	rax, -1648[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -1644[rbp], 0
	jmp	.L2
.L3:
	lea	rdx, -816[rbp]
	mov	eax, DWORD PTR -1644[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	lea	rcx, -1616[rbp]
	mov	eax, DWORD PTR -1644[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -1644[rbp], 1
.L2:
	mov	eax, DWORD PTR -1648[rbp]
	cmp	DWORD PTR -1644[rbp], eax
	jl	.L3
	mov	DWORD PTR -1644[rbp], 0
	jmp	.L4
.L11:
	mov	eax, DWORD PTR -1644[rbp]
	add	eax, 1
	mov	DWORD PTR -1640[rbp], eax
	jmp	.L5
.L10:
	mov	DWORD PTR -1632[rbp], 2
	mov	eax, DWORD PTR -1640[rbp]
	cdqe
	mov	edx, DWORD PTR -1616[rbp+rax*4]
	mov	eax, DWORD PTR -1644[rbp]
	cdqe
	mov	ecx, DWORD PTR -1616[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -1624[rbp], eax
	mov	eax, DWORD PTR -1640[rbp]
	cdqe
	mov	edx, DWORD PTR -816[rbp+rax*4]
	mov	eax, DWORD PTR -1644[rbp]
	cdqe
	mov	ecx, DWORD PTR -816[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -1620[rbp], eax
	mov	eax, DWORD PTR -1640[rbp]
	add	eax, 1
	mov	DWORD PTR -1636[rbp], eax
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -1636[rbp]
	cdqe
	mov	edx, DWORD PTR -1616[rbp+rax*4]
	mov	eax, DWORD PTR -1644[rbp]
	cdqe
	mov	ecx, DWORD PTR -1616[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	imul	eax, DWORD PTR -1620[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -1636[rbp]
	cdqe
	mov	ecx, DWORD PTR -816[rbp+rax*4]
	mov	eax, DWORD PTR -1644[rbp]
	cdqe
	mov	esi, DWORD PTR -816[rbp+rax*4]
	mov	eax, ecx
	sub	eax, esi
	imul	eax, DWORD PTR -1624[rbp]
	cmp	edx, eax
	jne	.L7
	add	DWORD PTR -1632[rbp], 1
.L7:
	add	DWORD PTR -1636[rbp], 1
.L6:
	mov	eax, DWORD PTR -1648[rbp]
	cmp	DWORD PTR -1636[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -1632[rbp]
	cmp	eax, DWORD PTR -1628[rbp]
	jle	.L9
	mov	eax, DWORD PTR -1632[rbp]
	mov	DWORD PTR -1628[rbp], eax
.L9:
	add	DWORD PTR -1640[rbp], 1
.L5:
	mov	eax, DWORD PTR -1648[rbp]
	cmp	DWORD PTR -1640[rbp], eax
	jl	.L10
	add	DWORD PTR -1644[rbp], 1
.L4:
	mov	eax, DWORD PTR -1648[rbp]
	cmp	DWORD PTR -1644[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -1628[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
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
