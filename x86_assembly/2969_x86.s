	.file	"2969.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"impossible"
.LC2:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1104
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	QWORD PTR -1072[rbp], 0
	mov	QWORD PTR -1064[rbp], 0
	mov	QWORD PTR -1056[rbp], 0
	mov	QWORD PTR -1048[rbp], 0
	mov	QWORD PTR -1040[rbp], 0
	mov	DWORD PTR -1096[rbp], 0
	mov	DWORD PTR -1092[rbp], 0
	lea	rax, -1024[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -1088[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	movzx	eax, BYTE PTR -1024[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	movsx	rdx, eax
	mov	edx, DWORD PTR -1072[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -1072[rbp+rax*4], edx
	add	DWORD PTR -1088[rbp], 1
.L2:
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	movzx	eax, BYTE PTR -1024[rbp+rax]
	test	al, al
	jne	.L3
	mov	eax, DWORD PTR -1072[rbp]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -1052[rbp]
	test	eax, eax
	jne	.L4
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
.L4:
	mov	edx, DWORD PTR -1068[rbp]
	mov	eax, DWORD PTR -1064[rbp]
	add	eax, eax
	lea	ecx, [rdx+rax]
	mov	edx, DWORD PTR -1060[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -1056[rbp]
	sal	eax, 2
	lea	ecx, [rdx+rax]
	mov	edx, DWORD PTR -1052[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	ecx, eax
	mov	edx, DWORD PTR -1048[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	add	ecx, eax
	mov	edx, DWORD PTR -1044[rbp]
	mov	eax, edx
	sal	eax, 3
	sub	eax, edx
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -1040[rbp]
	sal	eax, 3
	lea	ecx, [rdx+rax]
	mov	edx, DWORD PTR -1036[rbp]
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	add	eax, ecx
	mov	DWORD PTR -1080[rbp], eax
	mov	eax, DWORD PTR -1080[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -1076[rbp], eax
	mov	eax, DWORD PTR -1072[rbp]
	test	eax, eax
	jne	.L6
	mov	DWORD PTR -1096[rbp], 1
.L6:
	cmp	DWORD PTR -1076[rbp], 1
	jne	.L7
	mov	DWORD PTR -1088[rbp], 1
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	eax, DWORD PTR -1072[rbp+rax*4]
	test	eax, eax
	jle	.L9
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	eax, DWORD PTR -1072[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	DWORD PTR -1072[rbp+rax*4], edx
	jmp	.L10
.L9:
	add	DWORD PTR -1088[rbp], 3
.L8:
	cmp	DWORD PTR -1088[rbp], 8
	jle	.L11
.L10:
	cmp	DWORD PTR -1088[rbp], 9
	jle	.L12
	mov	eax, DWORD PTR -1064[rbp]
	cmp	eax, 1
	jle	.L13
	mov	eax, DWORD PTR -1064[rbp]
	sub	eax, 2
	mov	DWORD PTR -1064[rbp], eax
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -1064[rbp]
	test	eax, eax
	jle	.L14
	mov	eax, DWORD PTR -1064[rbp]
	sub	eax, 1
	mov	DWORD PTR -1064[rbp], eax
	mov	eax, DWORD PTR -1052[rbp]
	cmp	DWORD PTR -1096[rbp], eax
	jge	.L15
	mov	eax, DWORD PTR -1052[rbp]
	sub	eax, 1
	mov	DWORD PTR -1052[rbp], eax
	jmp	.L12
.L15:
	mov	eax, DWORD PTR -1040[rbp]
	test	eax, eax
	jle	.L16
	mov	eax, DWORD PTR -1040[rbp]
	sub	eax, 1
	mov	DWORD PTR -1040[rbp], eax
	jmp	.L12
.L16:
	mov	DWORD PTR -1092[rbp], 1
	jmp	.L12
.L14:
	mov	eax, DWORD PTR -1052[rbp]
	mov	edx, DWORD PTR -1096[rbp]
	add	edx, 1
	cmp	eax, edx
	jle	.L17
	mov	eax, DWORD PTR -1052[rbp]
	sub	eax, 2
	mov	DWORD PTR -1052[rbp], eax
	jmp	.L12
.L17:
	mov	eax, DWORD PTR -1052[rbp]
	cmp	DWORD PTR -1096[rbp], eax
	jge	.L18
	mov	eax, DWORD PTR -1052[rbp]
	sub	eax, 1
	mov	DWORD PTR -1052[rbp], eax
	mov	eax, DWORD PTR -1040[rbp]
	test	eax, eax
	jle	.L19
	mov	eax, DWORD PTR -1040[rbp]
	sub	eax, 1
	mov	DWORD PTR -1040[rbp], eax
	jmp	.L12
.L19:
	mov	DWORD PTR -1092[rbp], 1
	jmp	.L12
.L18:
	mov	eax, DWORD PTR -1040[rbp]
	cmp	eax, 1
	jle	.L20
	mov	eax, DWORD PTR -1040[rbp]
	sub	eax, 2
	mov	DWORD PTR -1040[rbp], eax
	jmp	.L12
.L20:
	mov	DWORD PTR -1092[rbp], 1
	jmp	.L12
.L7:
	cmp	DWORD PTR -1076[rbp], 2
	jne	.L12
	mov	eax, DWORD PTR -1064[rbp]
	test	eax, eax
	jle	.L21
	mov	eax, DWORD PTR -1064[rbp]
	sub	eax, 1
	mov	DWORD PTR -1064[rbp], eax
	jmp	.L12
.L21:
	mov	eax, DWORD PTR -1052[rbp]
	cmp	DWORD PTR -1096[rbp], eax
	jge	.L22
	mov	eax, DWORD PTR -1052[rbp]
	sub	eax, 1
	mov	DWORD PTR -1052[rbp], eax
	jmp	.L12
.L22:
	mov	eax, DWORD PTR -1040[rbp]
	test	eax, eax
	jle	.L23
	mov	eax, DWORD PTR -1040[rbp]
	sub	eax, 1
	mov	DWORD PTR -1040[rbp], eax
	jmp	.L12
.L23:
	mov	DWORD PTR -1088[rbp], 1
	mov	DWORD PTR -1084[rbp], 2
	jmp	.L24
.L27:
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	eax, DWORD PTR -1072[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	DWORD PTR -1072[rbp+rax*4], edx
	sub	DWORD PTR -1084[rbp], 1
	cmp	DWORD PTR -1084[rbp], 0
	je	.L38
.L25:
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	eax, DWORD PTR -1072[rbp+rax*4]
	test	eax, eax
	jg	.L27
	jmp	.L26
.L38:
	nop
.L26:
	add	DWORD PTR -1088[rbp], 3
.L24:
	cmp	DWORD PTR -1084[rbp], 0
	jle	.L28
	cmp	DWORD PTR -1088[rbp], 8
	jle	.L25
.L28:
	cmp	DWORD PTR -1084[rbp], 0
	jle	.L12
	mov	DWORD PTR -1092[rbp], 1
.L12:
	cmp	DWORD PTR -1092[rbp], 1
	jne	.L30
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
.L30:
	mov	edx, DWORD PTR -1068[rbp]
	mov	eax, DWORD PTR -1064[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1060[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1056[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1052[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1048[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1044[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1040[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -1036[rbp]
	add	eax, edx
	test	eax, eax
	jne	.L31
	mov	edi, 48
	call	putchar@PLT
	jmp	.L5
.L31:
	mov	eax, DWORD PTR -1052[rbp]
	sub	eax, DWORD PTR -1096[rbp]
	mov	DWORD PTR -1052[rbp], eax
	mov	DWORD PTR -1088[rbp], 9
	jmp	.L32
.L35:
	mov	eax, DWORD PTR -1088[rbp]
	cdqe
	mov	eax, DWORD PTR -1072[rbp+rax*4]
	mov	DWORD PTR -1084[rbp], eax
	jmp	.L33
.L34:
	mov	eax, DWORD PTR -1088[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -1084[rbp], 1
.L33:
	cmp	DWORD PTR -1084[rbp], 0
	jg	.L34
	sub	DWORD PTR -1088[rbp], 1
.L32:
	cmp	DWORD PTR -1088[rbp], 0
	jns	.L35
	cmp	DWORD PTR -1096[rbp], 1
	jne	.L5
	mov	edi, 53
	call	putchar@PLT
.L5:
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
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
