	.file	"2159.c"
	.intel_syntax noprefix
	.text
	.globl	s
	.bss
	.align 32
	.type	s, @object
	.size	s, 104
s:
	.zero	104
	.globl	t
	.align 32
	.type	t, @object
	.size	t, 104
t:
	.zero	104
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L2
	mov	eax, -1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, 1
	jmp	.L3
.L4:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"YES"
.LC2:
	.string	"NO"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -132[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, s[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -132[rbp], 1
.L6:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L7
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -132[rbp], 0
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, t[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -132[rbp], 1
.L8:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L9
	lea	rax, cmp[rip]
	mov	rcx, rax
	mov	edx, 4
	mov	esi, 26
	lea	rax, s[rip]
	mov	rdi, rax
	call	qsort@PLT
	lea	rax, cmp[rip]
	mov	rcx, rax
	mov	edx, 4
	mov	esi, 26
	lea	rax, t[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -132[rbp], 0
	jmp	.L10
.L13:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, s[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L18
	add	DWORD PTR -132[rbp], 1
.L10:
	cmp	DWORD PTR -132[rbp], 25
	jle	.L13
	jmp	.L12
.L18:
	nop
.L12:
	cmp	DWORD PTR -132[rbp], 26
	jne	.L14
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L15
.L14:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L15:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
