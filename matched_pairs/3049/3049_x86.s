	.file	"3049.c"
	.intel_syntax noprefix
	.text
	.globl	zuhe
	.bss
	.align 32
	.type	zuhe, @object
	.size	zuhe, 60
zuhe:
	.zero	60
	.globl	letter
	.align 8
	.type	letter, @object
	.size	letter, 15
letter:
	.zero	15
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	k
	.align 4
	.type	k, @object
	.size	k, 4
k:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d%d\n"
.LC1:
	.string	"%c"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rdx, rax
	lea	rax, k[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, letter[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	call	getchar@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 1
	mov	rsi, rax
	lea	rax, letter[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	edi, 0
	call	make
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.globl	equal
	.type	equal, @function
equal:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -24[rbp], eax
	jg	.L7
	mov	eax, 0
	jmp	.L8
.L7:
	add	DWORD PTR -4[rbp], 1
.L6:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L9
	mov	eax, 1
.L8:
	pop	rbp
	ret
	.size	equal, .-equal
	.globl	make
	.type	make, @function
make:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L11
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L12
.L16:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 97
	je	.L13
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 101
	je	.L13
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 105
	je	.L13
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 111
	je	.L13
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 117
	jne	.L14
.L13:
	mov	DWORD PTR -8[rbp], 1
	jmp	.L15
.L14:
	add	DWORD PTR -4[rbp], 1
.L15:
	add	DWORD PTR -12[rbp], 1
.L12:
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L16
	cmp	DWORD PTR -8[rbp], 1
	jne	.L24
	cmp	DWORD PTR -4[rbp], 1
	jle	.L24
	mov	DWORD PTR -12[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -12[rbp], 1
.L18:
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L19
	mov	edi, 10
	call	putchar@PLT
	jmp	.L24
.L11:
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L21
.L23:
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	equal
	cmp	eax, 1
	jne	.L22
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	make
.L22:
	add	DWORD PTR -12[rbp], 1
.L21:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L23
	jmp	.L10
.L24:
	nop
.L10:
	leave
	ret
	.size	make, .-make
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -2[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -1[rbp], al
	movzx	eax, BYTE PTR -2[rbp]
	cmp	al, BYTE PTR -1[rbp]
	jge	.L26
	mov	eax, -1
	jmp	.L27
.L26:
	movzx	eax, BYTE PTR -2[rbp]
	cmp	al, BYTE PTR -1[rbp]
	jle	.L28
	mov	eax, 1
	jmp	.L27
.L28:
	mov	eax, 0
.L27:
	pop	rbp
	ret
	.size	cmp, .-cmp
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
