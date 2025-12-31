	.file	"0013-roman-to-integer.c"
	.intel_syntax noprefix
	.text
	.globl	value
	.type	value, @function
value:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	movsx	eax, BYTE PTR -4[rbp]
	sub	eax, 67
	cmp	eax, 21
	ja	.L2
	mov	eax, eax
	lea	rdx, 0[0+rax*4]
	lea	rax, .L4[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L4[rip]
	add	rax, rdx
	notrack jmp	rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L10-.L4
	.long	.L9-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L8-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L5-.L4
	.long	.L2-.L4
	.long	.L3-.L4
	.text
.L8:
	mov	eax, 1
	jmp	.L11
.L5:
	mov	eax, 5
	jmp	.L11
.L3:
	mov	eax, 10
	jmp	.L11
.L7:
	mov	eax, 50
	jmp	.L11
.L10:
	mov	eax, 100
	jmp	.L11
.L9:
	mov	eax, 500
	jmp	.L11
.L6:
	mov	eax, 1000
	jmp	.L11
.L2:
	mov	eax, 0
.L11:
	pop	rbp
	ret
	.size	value, .-value
	.globl	romanToInt
	.type	romanToInt, @function
romanToInt:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L13
.L18:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	value
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jle	.L14
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	value
	mov	DWORD PTR -16[rbp], eax
	jmp	.L15
.L14:
	mov	DWORD PTR -16[rbp], 0
.L15:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L16
	mov	eax, DWORD PTR -4[rbp]
	sub	DWORD PTR -20[rbp], eax
	jmp	.L17
.L16:
	mov	eax, DWORD PTR -4[rbp]
	add	DWORD PTR -20[rbp], eax
.L17:
	add	DWORD PTR -12[rbp], 1
.L13:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L18
	mov	eax, DWORD PTR -20[rbp]
	leave
	ret
	.size	romanToInt, .-romanToInt
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
