	.file	"3007.c"
	.intel_syntax noprefix
	.text
	.globl	len
	.bss
	.align 4
	.type	len, @object
	.size	len, 4
len:
	.zero	4
	.globl	num
	.align 4
	.type	num, @object
	.size	num, 4
num:
	.zero	4
	.globl	str
	.align 32
	.type	str, @object
	.size	str, 36500
str:
	.zero	36500
	.globl	s1
	.align 32
	.type	s1, @object
	.size	s1, 72
s1:
	.zero	72
	.globl	s2
	.align 32
	.type	s2, @object
	.size	s2, 72
s2:
	.zero	72
	.globl	t
	.align 32
	.type	t, @object
	.size	t, 73
t:
	.zero	73
	.globl	r
	.align 32
	.type	r, @object
	.size	r, 73
r:
	.zero	73
	.text
	.globl	reversal
	.type	reversal, @function
reversal:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -5[rbp], al
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR -5[rbp]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	edx, eax
	jl	.L3
	nop
	nop
	pop	rbp
	ret
	.size	reversal, .-reversal
	.globl	store
	.type	store, @function
store:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, r[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
.L5:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L6
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, r[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
.L7:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, str[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, r[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L14
	add	DWORD PTR -4[rbp], 1
.L9:
	mov	eax, DWORD PTR num[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	jmp	.L11
.L14:
	nop
.L11:
	mov	eax, DWORD PTR num[rip]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR num[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR num[rip], edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, str[rip]
	add	rax, rdx
	lea	rdx, r[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
.L15:
	nop
	leave
	ret
	.size	store, .-store
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"%d\n"
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
	mov	DWORD PTR -20[rbp], 0
	jmp	.L17
.L24:
	lea	rax, t[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, t[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcpy@PLT
	mov	DWORD PTR num[rip], 1
	lea	rax, t[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR len[rip], eax
	mov	DWORD PTR -16[rbp], 1
	jmp	.L18
.L23:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L19
.L20:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, s1[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -12[rbp], 1
.L19:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L20
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, s1[rip]
	mov	BYTE PTR [rax+rdx], 0
	jmp	.L21
.L22:
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	movsx	rax, ecx
	lea	rcx, s2[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -12[rbp], 1
.L21:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s2[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	reversal
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s2[rip]
	mov	rsi, rax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	reversal
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s2[rip]
	mov	rsi, rax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	reversal
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s2[rip]
	mov	rsi, rax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	add	DWORD PTR -16[rbp], 1
.L18:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L23
	mov	eax, DWORD PTR num[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
.L17:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L24
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
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
