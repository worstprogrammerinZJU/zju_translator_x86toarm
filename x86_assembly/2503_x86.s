	.file	"2503.c"
	.intel_syntax noprefix
	.text
	.globl	link
	.bss
	.align 32
	.type	link, @object
	.size	link, 165016
link:
	.zero	165016
	.globl	word
	.align 32
	.type	word, @object
	.size	word, 1100000
word:
	.zero	1100000
	.globl	dialect
	.align 32
	.type	dialect, @object
	.size	dialect, 1100000
dialect:
	.zero	1100000
	.section	.rodata
.LC0:
	.string	"eh"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -80[rbp], 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
.L5:
	mov	DWORD PTR -84[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	ecx, BYTE PTR -64[rbp+rax]
	mov	eax, DWORD PTR -84[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rax+rsi]
	lea	rax, word[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -84[rbp], 1
.L3:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	cmp	al, 32
	jne	.L4
	mov	eax, DWORD PTR -84[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -84[rbp], edx
	movsx	rcx, eax
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	lea	rdx, -64[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, dialect[rip]
	add	rax, rdx
	mov	rsi, rcx
	mov	rdi, rax
	call	strcpy@PLT
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, dialect[rip]
	add	rax, rdx
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -76[rbp], eax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -80[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -76[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -76[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, link[rip]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	add	DWORD PTR -80[rbp], 1
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
.L2:
	movzx	eax, BYTE PTR -64[rbp]
	movzx	eax, al
	test	eax, eax
	jne	.L5
	jmp	.L6
.L12:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -76[rbp], eax
	mov	eax, DWORD PTR -76[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -72[rbp], rax
	jmp	.L7
.L10:
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, dialect[rip]
	add	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L15
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -72[rbp], rax
.L7:
	cmp	QWORD PTR -72[rbp], 0
	jne	.L10
	jmp	.L9
.L15:
	nop
.L9:
	cmp	QWORD PTR -72[rbp], 0
	jne	.L11
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L6
.L11:
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
.L6:
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
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
	.globl	ELFhash
	.type	ELFhash, @function
ELFhash:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -16[rbp], 0
	jmp	.L17
.L19:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L18
	mov	rax, QWORD PTR -8[rbp]
	shr	rax, 24
	xor	QWORD PTR -16[rbp], rax
.L18:
	mov	rax, QWORD PTR -8[rbp]
	not	rax
	and	QWORD PTR -16[rbp], rax
.L17:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L19
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7326112738247377071
	mov	rax, rcx
	mul	rdx
	mov	rax, rdx
	shr	rax, 13
	imul	rdx, rax, 20627
	mov	rax, rcx
	sub	rax, rdx
	pop	rbp
	ret
	.size	ELFhash, .-ELFhash
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
