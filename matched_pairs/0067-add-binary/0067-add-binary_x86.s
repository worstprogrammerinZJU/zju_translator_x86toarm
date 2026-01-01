	.file	"0067-add-binary.c"
	.intel_syntax noprefix
	.text
	.globl	addBinary
	.type	addBinary, @function
addBinary:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rbx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	jbe	.L2
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	strlen@PLT
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	strlen@PLT
.L3:
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 2
	cdqe
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 2
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -48[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	jmp	.L4
.L9:
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	jnb	.L5
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	edx, DWORD PTR -44[rbp]
	movsx	rdx, edx
	sub	rax, rdx
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	jmp	.L6
.L5:
	mov	eax, 0
.L6:
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	jnb	.L7
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	edx, DWORD PTR -44[rbp]
	movsx	rdx, edx
	sub	rax, rdx
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	jmp	.L8
.L7:
	mov	eax, 0
.L8:
	mov	DWORD PTR -32[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -48[rbp]
	add	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	and	eax, 1
	add	eax, 48
	mov	BYTE PTR -49[rbp], al
	mov	eax, DWORD PTR -28[rbp]
	shr	eax
	mov	DWORD PTR -48[rbp], eax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memmove@PLT
	mov	rax, QWORD PTR -24[rbp]
	movzx	edx, BYTE PTR -49[rbp]
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -44[rbp], 1
.L4:
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L9
	cmp	DWORD PTR -48[rbp], 0
	je	.L10
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memmove@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], 49
.L10:
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	addBinary, .-addBinary
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
