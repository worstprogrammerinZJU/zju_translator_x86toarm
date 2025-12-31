	.file	"2136.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"* "
.LC1:
	.string	"  "
.LC2:
	.string	"*"
.LC3:
	.string	" "
.LC4:
	.string	"%c "
.LC5:
	.string	"Z"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 224
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -208[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -220[rbp], 0
	jmp	.L2
.L6:
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -216[rbp], 0
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -216[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 64
	jle	.L4
	mov	eax, DWORD PTR -216[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 90
	jg	.L4
	mov	eax, DWORD PTR -216[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -208[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -208[rbp+rax*4], edx
.L4:
	add	DWORD PTR -216[rbp], 1
.L3:
	mov	eax, DWORD PTR -216[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	test	al, al
	jne	.L5
	add	DWORD PTR -220[rbp], 1
.L2:
	cmp	DWORD PTR -220[rbp], 3
	jle	.L6
	mov	eax, DWORD PTR -208[rbp]
	mov	DWORD PTR -216[rbp], eax
	mov	DWORD PTR -220[rbp], 1
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -220[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	cmp	DWORD PTR -216[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -220[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	mov	DWORD PTR -216[rbp], eax
.L8:
	add	DWORD PTR -220[rbp], 1
.L7:
	cmp	DWORD PTR -220[rbp], 25
	jle	.L9
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -220[rbp], eax
	jmp	.L10
.L17:
	mov	DWORD PTR -212[rbp], 0
	jmp	.L11
.L14:
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	cmp	DWORD PTR -220[rbp], eax
	jne	.L12
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	mov	DWORD PTR -208[rbp+rax*4], edx
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L13
.L12:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L13:
	add	DWORD PTR -212[rbp], 1
.L11:
	cmp	DWORD PTR -212[rbp], 24
	jle	.L14
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	cmp	DWORD PTR -220[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	mov	DWORD PTR -208[rbp+rax*4], edx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L16
.L15:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L16:
	sub	DWORD PTR -220[rbp], 1
.L10:
	cmp	DWORD PTR -220[rbp], 0
	jg	.L17
	mov	DWORD PTR -220[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -220[rbp]
	add	eax, 65
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -220[rbp], 1
.L18:
	cmp	DWORD PTR -220[rbp], 24
	jle	.L19
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
