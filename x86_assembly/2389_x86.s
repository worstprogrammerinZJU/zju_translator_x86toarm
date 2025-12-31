	.file	"2389.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%c"
.LC1:
	.string	"%d"
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
	mov	QWORD PTR -96[rbp], 0
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	BYTE PTR -16[rbp], 0
	mov	DWORD PTR -208[rbp], 0
	jmp	.L2
.L4:
	lea	rax, -217[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -217[rbp]
	cmp	al, 47
	jle	.L3
	movzx	eax, BYTE PTR -217[rbp]
	cmp	al, 57
	jg	.L3
	movzx	eax, BYTE PTR -217[rbp]
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -208[rbp]
	cdqe
	mov	BYTE PTR -192[rbp+rax], dl
	add	DWORD PTR -208[rbp], 1
.L2:
	cmp	DWORD PTR -208[rbp], 40
	jle	.L4
.L3:
	mov	DWORD PTR -204[rbp], 0
	jmp	.L5
.L7:
	lea	rax, -217[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -217[rbp]
	cmp	al, 47
	jle	.L6
	movzx	eax, BYTE PTR -217[rbp]
	cmp	al, 57
	jg	.L6
	movzx	eax, BYTE PTR -217[rbp]
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -204[rbp]
	cdqe
	mov	BYTE PTR -144[rbp+rax], dl
	add	DWORD PTR -204[rbp], 1
.L5:
	cmp	DWORD PTR -204[rbp], 40
	jle	.L7
.L6:
	mov	eax, DWORD PTR -208[rbp]
	sub	eax, 1
	mov	DWORD PTR -216[rbp], eax
	jmp	.L8
.L13:
	mov	eax, DWORD PTR -208[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -200[rbp], eax
	mov	eax, DWORD PTR -204[rbp]
	sub	eax, 1
	mov	DWORD PTR -212[rbp], eax
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -200[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	mov	esi, eax
	mov	eax, DWORD PTR -216[rbp]
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	mov	ecx, eax
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	movzx	eax, BYTE PTR -144[rbp+rax]
	mov	edx, eax
	mov	eax, ecx
	imul	eax, edx
	add	eax, esi
	mov	edx, eax
	mov	eax, DWORD PTR -200[rbp]
	cdqe
	mov	BYTE PTR -96[rbp+rax], dl
	mov	eax, DWORD PTR -200[rbp]
	mov	DWORD PTR -196[rbp], eax
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -196[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	mov	esi, eax
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	edx, BYTE PTR -96[rbp+rax]
	mov	ecx, 103
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	sar	al, 2
	sar	dl, 7
	sub	eax, edx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -196[rbp]
	add	eax, 1
	cdqe
	mov	BYTE PTR -96[rbp+rax], dl
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	edx, BYTE PTR -96[rbp+rax]
	mov	ecx, 103
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	sar	al, 2
	mov	esi, edx
	sar	sil, 7
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	mov	BYTE PTR -96[rbp+rax], cl
	add	DWORD PTR -196[rbp], 1
.L10:
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 9
	jg	.L11
	add	DWORD PTR -200[rbp], 1
	sub	DWORD PTR -212[rbp], 1
.L9:
	cmp	DWORD PTR -212[rbp], 0
	jns	.L12
	sub	DWORD PTR -216[rbp], 1
.L8:
	cmp	DWORD PTR -216[rbp], 0
	jns	.L13
	mov	edx, DWORD PTR -208[rbp]
	mov	eax, DWORD PTR -204[rbp]
	add	eax, edx
	mov	DWORD PTR -216[rbp], eax
	jmp	.L14
.L16:
	sub	DWORD PTR -216[rbp], 1
.L14:
	mov	eax, DWORD PTR -216[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	test	al, al
	jne	.L15
	cmp	DWORD PTR -216[rbp], 0
	jg	.L16
.L15:
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -212[rbp], eax
	jmp	.L17
.L18:
	mov	eax, DWORD PTR -212[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -212[rbp], 1
.L17:
	cmp	DWORD PTR -212[rbp], 0
	jns	.L18
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
