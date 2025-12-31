	.file	"2845.c"
	.intel_syntax noprefix
	.text
	.globl	s
	.bss
	.align 32
	.type	s, @object
	.size	s, 100
s:
	.zero	100
	.globl	t
	.align 32
	.type	t, @object
	.size	t, 100
t:
	.zero	100
	.globl	r
	.align 32
	.type	r, @object
	.size	r, 100
r:
	.zero	100
	.text
	.globl	reverse
	.type	reverse, @function
reverse:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -9[rbp], al
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR -9[rbp]
	mov	BYTE PTR [rdx], al
	sub	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L3
	nop
	nop
	leave
	ret
	.size	reverse, .-reverse
	.globl	addition
	.type	addition, @function
addition:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, s[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -8[rbp], eax
	lea	rax, t[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
.L9:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	add	eax, ecx
	sub	eax, 48
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 49
	jle	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	sub	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	DWORD PTR -12[rbp], 1
	jmp	.L7
.L6:
	mov	DWORD PTR -12[rbp], 0
.L7:
	add	DWORD PTR -16[rbp], 1
.L5:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L10
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L9
	jmp	.L10
.L13:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 49
	jle	.L11
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	sub	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	DWORD PTR -12[rbp], 1
	jmp	.L12
.L11:
	mov	DWORD PTR -12[rbp], 0
.L12:
	add	DWORD PTR -16[rbp], 1
.L10:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L13
	jmp	.L14
.L17:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 49
	jle	.L15
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	sub	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], cl
	mov	DWORD PTR -12[rbp], 1
	jmp	.L16
.L15:
	mov	DWORD PTR -12[rbp], 0
.L16:
	add	DWORD PTR -16[rbp], 1
.L14:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L17
	cmp	DWORD PTR -12[rbp], 1
	jne	.L20
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], 49
	jmp	.L19
.L21:
	sub	DWORD PTR -16[rbp], 1
.L20:
	cmp	DWORD PTR -16[rbp], 1
	jle	.L19
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, r[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 48
	je	.L21
.L19:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], 0
	nop
	leave
	ret
	.size	addition, .-addition
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s%s"
.LC2:
	.string	"%d %s\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 1
	jmp	.L23
.L24:
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, s[rip]
	mov	rdi, rax
	call	reverse
	lea	rax, t[rip]
	mov	rdi, rax
	call	reverse
	mov	eax, 0
	call	addition
	lea	rax, r[rip]
	mov	rdi, rax
	call	reverse
	mov	eax, DWORD PTR -12[rbp]
	lea	rdx, r[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
.L23:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L24
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
