	.file	"2997.c"
	.intel_syntax noprefix
	.text
	.globl	m
	.bss
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	s
	.align 32
	.type	s, @object
	.size	s, 10001
s:
	.zero	10001
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
.L11:
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR j[rip], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 105
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 118
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 120
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 108
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 99
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 100
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 109
	jne	.L5
.L4:
	mov	eax, DWORD PTR j[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR j[rip], edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, s[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
	cdqe
	lea	rcx, s[rip]
	mov	BYTE PTR [rax+rcx], dl
.L5:
	add	DWORD PTR -8[rbp], 1
.L3:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L6
	mov	eax, DWORD PTR j[rip]
	cdqe
	lea	rdx, s[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	DWORD PTR -4[rbp], 0
	mov	edx, 0
	mov	esi, 109
	mov	edi, 0
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 1000
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 1
	mov	esi, 100
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 500
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 3
	mov	esi, 99
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 100
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 99
	mov	esi, 120
	mov	edi, eax
	call	cmpd
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	cmp	eax, 1
	jne	.L7
	add	DWORD PTR -4[rbp], 90
	jmp	.L8
.L7:
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 1
	mov	esi, 108
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	imul	eax, eax, 50
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 3
	mov	esi, 120
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR m[rip]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	DWORD PTR -4[rbp], eax
.L8:
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 120
	mov	esi, 105
	mov	edi, eax
	call	cmpd
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	cmp	eax, 1
	jne	.L9
	add	DWORD PTR -4[rbp], 9
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 1
	mov	esi, 118
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR m[rip]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 3
	mov	esi, 105
	mov	edi, eax
	call	cmp
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR m[rip]
	add	DWORD PTR -4[rbp], eax
.L10:
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, s[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
	jne	.L11
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, esi
	mov	DWORD PTR -28[rbp], edx
	mov	BYTE PTR -24[rbp], al
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR m[rip], 0
	jmp	.L14
.L17:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	BYTE PTR -24[rbp], al
	jne	.L15
	mov	eax, DWORD PTR m[rip]
	add	eax, 1
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -28[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L16
.L15:
	add	DWORD PTR -20[rbp], 1
.L14:
	mov	eax, DWORD PTR j[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR -4[rbp]
.L16:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.globl	cmpd
	.type	cmpd, @function
cmpd:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	ecx, esi
	mov	eax, edx
	mov	edx, ecx
	mov	BYTE PTR -24[rbp], dl
	mov	BYTE PTR -28[rbp], al
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	movzx	eax, BYTE PTR -24[rbp]
	mov	BYTE PTR -5[rbp], al
	mov	DWORD PTR m[rip], 0
	jmp	.L19
.L23:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	BYTE PTR -5[rbp], al
	jne	.L20
	mov	eax, DWORD PTR m[rip]
	cmp	eax, 1
	jne	.L21
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L22
.L21:
	mov	DWORD PTR m[rip], 1
	movzx	eax, BYTE PTR -28[rbp]
	mov	BYTE PTR -5[rbp], al
.L20:
	add	DWORD PTR -20[rbp], 1
.L19:
	mov	eax, DWORD PTR j[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L23
	mov	DWORD PTR m[rip], 0
	mov	eax, DWORD PTR -4[rbp]
.L22:
	pop	rbp
	ret
	.size	cmpd, .-cmpd
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
