	.file	"1656.c"
	.intel_syntax noprefix
	.text
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 10000
p:
	.zero	10000
	.text
	.globl	snuc
	.type	snuc, @function
snuc:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -32[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, p[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -4[rbp], 1
.L3:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	add	DWORD PTR -8[rbp], 1
.L2:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	nop
	nop
	pop	rbp
	ret
	.size	snuc, .-snuc
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	test
	.type	test, @function
test:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L7
.L11:
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, p[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L9
	add	DWORD PTR -4[rbp], 1
.L9:
	add	DWORD PTR -8[rbp], 1
.L8:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	add	DWORD PTR -12[rbp], 1
.L7:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -12[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
	.size	test, .-test
	.section	.rodata
.LC1:
	.string	"%s %d%d%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L13
.L17:
	lea	rsi, -24[rbp]
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -14[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -14[rbp]
	cmp	al, 87
	jne	.L14
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -28[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -32[rbp]
	lea	edi, -1[rdx]
	mov	ecx, 0
	mov	edx, eax
	call	snuc
	jmp	.L15
.L14:
	movzx	eax, BYTE PTR -14[rbp]
	cmp	al, 66
	jne	.L16
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -28[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -32[rbp]
	lea	edi, -1[rdx]
	mov	ecx, 1
	mov	edx, eax
	call	snuc
	jmp	.L15
.L16:
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -28[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -32[rbp]
	lea	ecx, -1[rdx]
	mov	edx, eax
	mov	edi, ecx
	call	test
.L15:
	add	DWORD PTR -20[rbp], 1
.L13:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L17
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
