	.file	"1291.c"
	.intel_syntax noprefix
	.text
	.globl	Parent
	.bss
	.align 32
	.type	Parent, @object
	.size	Parent, 4004
Parent:
	.zero	4004
	.globl	sen
	.align 32
	.type	sen, @object
	.size	sen, 4004
sen:
	.zero	4004
	.globl	tru
	.align 32
	.type	tru, @object
	.size	tru, 4004
tru:
	.zero	4004
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s%d%s%s"
.LC2:
	.string	"Inconsistent"
.LC3:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -104[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L32:
	mov	DWORD PTR -96[rbp], 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, tru[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -96[rbp], 1
.L3:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jle	.L4
	mov	DWORD PTR -96[rbp], 1
	jmp	.L5
.L13:
	lea	rsi, -58[rbp]
	lea	rcx, -68[rbp]
	lea	rdx, -100[rbp]
	lea	rax, -48[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -96[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -92[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -100[rbp], eax
	movzx	eax, BYTE PTR -58[rbp]
	cmp	al, 116
	jne	.L6
	mov	edx, DWORD PTR -100[rbp]
	mov	eax, DWORD PTR -92[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L7
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L7
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L10
.L7:
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L9
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L9
	mov	edx, DWORD PTR -100[rbp]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR -100[rbp]
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L10
.L6:
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L11
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -100[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
.L11:
	mov	eax, DWORD PTR -100[rbp]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L12
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -92[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
.L12:
	mov	ebx, DWORD PTR -100[rbp]
	mov	eax, DWORD PTR -92[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L10:
	add	DWORD PTR -96[rbp], 1
.L5:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jle	.L13
	mov	DWORD PTR -96[rbp], 1
	jmp	.L14
.L26:
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	js	.L15
	mov	eax, DWORD PTR -96[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -88[rbp], eax
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	DWORD PTR -76[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	je	.L35
	mov	DWORD PTR -92[rbp], 1
	mov	DWORD PTR -84[rbp], 0
	mov	DWORD PTR -80[rbp], 0
	jmp	.L18
.L21:
	mov	eax, DWORD PTR -92[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -72[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	cmp	eax, DWORD PTR -88[rbp]
	jne	.L19
	add	DWORD PTR -84[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	DWORD PTR [rdx+rax], -1
	jmp	.L20
.L19:
	mov	eax, DWORD PTR -72[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	jne	.L20
	add	DWORD PTR -80[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	DWORD PTR [rdx+rax], -1
.L20:
	add	DWORD PTR -92[rbp], 1
.L18:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jle	.L21
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, DWORD PTR -80[rbp]
	jle	.L22
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -88[rbp], eax
.L22:
	mov	DWORD PTR -92[rbp], 1
	jmp	.L23
.L25:
	mov	eax, DWORD PTR -92[rbp]
	mov	edi, eax
	call	root
	cmp	DWORD PTR -88[rbp], eax
	jne	.L24
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, tru[rip]
	mov	DWORD PTR [rdx+rax], 0
.L24:
	add	DWORD PTR -92[rbp], 1
.L23:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jle	.L25
.L15:
	add	DWORD PTR -96[rbp], 1
.L14:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jle	.L26
	jmp	.L17
.L35:
	nop
.L17:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jg	.L27
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L28
.L27:
	mov	DWORD PTR -96[rbp], 1
	mov	DWORD PTR -84[rbp], 0
	jmp	.L29
.L31:
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, tru[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L30
	add	DWORD PTR -84[rbp], 1
.L30:
	add	DWORD PTR -96[rbp], 1
.L29:
	mov	eax, DWORD PTR -104[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jle	.L31
	mov	eax, DWORD PTR -84[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L28:
	lea	rax, -104[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -104[rbp]
	test	eax, eax
	jne	.L32
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	main, .-main
	.globl	root
	.type	root, @function
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L37
.L38:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
.L37:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L38
	jmp	.L39
.L40:
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L39:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L40
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	root, .-root
	.globl	merge
	.type	merge, @function
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L46
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L45
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L42
.L45:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L42
.L46:
	nop
.L42:
	leave
	ret
	.size	merge, .-merge
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
