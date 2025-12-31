	.file	"2670.c"
	.intel_syntax noprefix
	.text
	.globl	stone
	.bss
	.align 32
	.type	stone, @object
	.size	stone, 30000
stone:
	.zero	30000
	.globl	chest
	.align 32
	.type	chest, @object
	.size	chest, 3000
chest:
	.zero	3000
	.globl	link
	.align 32
	.type	link, @object
	.size	link, 27000
link:
	.zero	27000
	.globl	num
	.align 32
	.type	num, @object
	.size	num, 400
num:
	.zero	400
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	che
	.align 4
	.type	che, @object
	.size	che, 4
che:
	.zero	4
	.globl	flag1
	.align 32
	.type	flag1, @object
	.size	flag1, 400
flag1:
	.zero	400
	.globl	flag2
	.align 32
	.type	flag2, @object
	.size	flag2, 400
flag2:
	.zero	400
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"Sorcerer's Stone"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 352
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L14:
	lea	rax, -320[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -344[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -344[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, stone[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	add	DWORD PTR -344[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -344[rbp], eax
	jl	.L4
	mov	DWORD PTR -340[rbp], 0
	jmp	.L5
.L13:
	lea	rax, -320[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -336[rbp], 0
	mov	DWORD PTR -332[rbp], 0
	mov	DWORD PTR -328[rbp], 0
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -336[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	cmp	al, 44
	jne	.L7
	mov	eax, DWORD PTR -328[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	edx, DWORD PTR -332[rbp]
	movsx	rdx, edx
	imul	rsi, rax, 270
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, [rax+rcx]
	lea	rax, link[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -332[rbp], 1
	mov	DWORD PTR -328[rbp], 0
	add	DWORD PTR -336[rbp], 1
	jmp	.L8
.L7:
	mov	eax, DWORD PTR -328[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -328[rbp], edx
	mov	edx, DWORD PTR -336[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -320[rbp+rdx]
	movsx	rsi, eax
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	ecx, DWORD PTR -332[rbp]
	movsx	rcx, ecx
	imul	rdi, rax, 270
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	add	rax, rdi
	lea	rcx, [rax+rsi]
	lea	rax, link[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
.L8:
	add	DWORD PTR -336[rbp], 1
.L6:
	mov	eax, DWORD PTR -336[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	cmp	al, 58
	jne	.L9
	mov	eax, DWORD PTR -328[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	edx, DWORD PTR -332[rbp]
	movsx	rdx, edx
	imul	rsi, rax, 270
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, [rax+rcx]
	lea	rax, link[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -332[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	DWORD PTR -328[rbp], 0
	add	DWORD PTR -336[rbp], 2
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -328[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -328[rbp], edx
	mov	edx, DWORD PTR -336[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -320[rbp+rdx]
	movsx	rsi, eax
	mov	eax, DWORD PTR -340[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	lea	rcx, [rax+rsi]
	lea	rax, chest[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -336[rbp], 1
.L10:
	mov	eax, DWORD PTR -336[rbp]
	cdqe
	movzx	eax, BYTE PTR -320[rbp+rax]
	test	al, al
	jne	.L11
	mov	eax, DWORD PTR -328[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -340[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, chest[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -340[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, chest[rip]
	add	rax, rdx
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L12
	mov	eax, DWORD PTR -340[rbp]
	mov	DWORD PTR -324[rbp], eax
.L12:
	add	DWORD PTR -340[rbp], 1
.L5:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -340[rbp], eax
	jl	.L13
	mov	DWORD PTR che[rip], 1
	mov	eax, DWORD PTR -324[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -324[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -324[rbp]
	mov	edi, eax
	call	dfs
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, 400
	mov	esi, 0
	lea	rax, flag1[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 400
	mov	esi, 0
	lea	rax, flag2[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L14
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	jne	.L14
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	ret
	.size	main, .-main
	.globl	dfs
	.type	dfs, @function
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
.L31:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L19
.L22:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, stone[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	imul	rcx, rcx, 270
	add	rcx, rax
	lea	rax, link[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L32
	add	DWORD PTR -4[rbp], 1
.L19:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L22
	jmp	.L21
.L32:
	nop
.L21:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L23
	mov	DWORD PTR -4[rbp], 0
	jmp	.L24
.L30:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L25
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, chest[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	imul	rcx, rcx, 270
	add	rcx, rax
	lea	rax, link[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L25
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	dfs
	cmp	eax, -1
	jne	.L26
	mov	eax, -1
	jmp	.L27
.L26:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L28
	mov	eax, DWORD PTR che[rip]
	add	eax, 1
	mov	DWORD PTR che[rip], eax
.L28:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], 0
	jmp	.L29
.L25:
	add	DWORD PTR -4[rbp], 1
.L24:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
.L29:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L23
	mov	eax, -1
	jmp	.L27
.L23:
	add	DWORD PTR -8[rbp], 1
.L18:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L31
	mov	eax, DWORD PTR che[rip]
.L27:
	leave
	ret
	.size	dfs, .-dfs
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
