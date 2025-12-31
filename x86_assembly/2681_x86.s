	.file	"2681.c"
	.intel_syntax noprefix
	.text
	.globl	t
	.bss
	.align 32
	.type	t, @object
	.size	t, 104
t:
	.zero	104
	.globl	r
	.align 32
	.type	r, @object
	.size	r, 104
r:
	.zero	104
	.globl	s
	.align 32
	.type	s, @object
	.size	s, 100
s:
	.zero	100
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"Case #%d:  %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
.L11:
	mov	edx, 104
	mov	esi, 0
	lea	rax, t[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 104
	mov	esi, 0
	lea	rax, r[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, s[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, t[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -16[rbp], 1
.L3:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L4
	lea	rax, s[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, r[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -16[rbp], 1
.L5:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L6
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L7
.L10:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L8
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, r[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, t[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
.L9:
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L7:
	cmp	DWORD PTR -16[rbp], 25
	jle	.L10
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L11
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
