	.file	"1818.c"
	.intel_syntax noprefix
	.text
	.globl	k
	.bss
	.align 4
	.type	k, @object
	.size	k, 4
k:
	.zero	4
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	p
	.align 32
	.type	p, @object
	.size	p, 32768
p:
	.zero	32768
	.globl	f
	.align 32
	.type	f, @object
	.size	f, 4097
f:
	.zero	4097
	.text
	.globl	find
	.type	find, @function
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR p[rip], eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, f[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
.L11:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -12[rbp], 1
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, p[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR k[rip]
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -16[rbp], 0
	jg	.L6
	mov	DWORD PTR -16[rbp], 1
	jmp	.L6
.L8:
	add	DWORD PTR -16[rbp], 1
.L6:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jg	.L7
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, f[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 1
	je	.L8
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L9
	mov	eax, 0
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, p[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, f[rip]
	mov	BYTE PTR [rax+rdx], 1
.L4:
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L11
	mov	eax, 1
.L10:
	pop	rbp
	ret
	.size	find, .-find
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L13
.L16:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	find
	test	eax, eax
	je	.L14
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L15
.L14:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
.L15:
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	cdqe
	mov	rdx, rax
	mov	esi, 0
	lea	rax, f[rip]
	mov	rdi, rax
	call	memset@PLT
.L13:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jg	.L16
	jmp	.L17
.L18:
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	cdqe
	mov	rdx, rax
	mov	esi, 0
	lea	rax, f[rip]
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	find
	test	eax, eax
	jne	.L18
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
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
