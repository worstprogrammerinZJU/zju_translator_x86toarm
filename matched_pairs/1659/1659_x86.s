	.file	"1659.c"
	.intel_syntax noprefix
	.text
	.globl	neighbor
	.bss
	.align 32
	.type	neighbor, @object
	.size	neighbor, 40
neighbor:
	.zero	40
	.globl	place
	.align 32
	.type	place, @object
	.size	place, 40
place:
	.zero	40
	.globl	lake
	.align 32
	.type	lake, @object
	.size	lake, 400
lake:
	.zero	400
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.text
	.globl	sort
	.type	sort, @function
sort:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, neighbor[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, neighbor[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, place[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, place[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, place[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, place[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L4:
	add	DWORD PTR -8[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	add	DWORD PTR -12[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	nop
	nop
	pop	rbp
	ret
	.size	sort, .-sort
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"YES"
.LC2:
	.string	"%d "
.LC3:
	.string	"NO\n"
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
	jmp	.L8
.L25:
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, place[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -16[rbp], 1
.L9:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L10
	mov	DWORD PTR -16[rbp], 0
	jmp	.L11
.L18:
	mov	eax, DWORD PTR -16[rbp]
	mov	edi, eax
	call	sort
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L12
.L15:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jle	.L13
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, place[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, place[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, lake[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, place[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, place[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, lake[rip]
	mov	DWORD PTR [rdx+rax], 1
.L13:
	add	DWORD PTR -12[rbp], 1
.L12:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jle	.L14
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L15
.L14:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neighbor[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L28
	add	DWORD PTR -16[rbp], 1
.L11:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L18
	jmp	.L17
.L28:
	nop
.L17:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jne	.L19
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L20
.L23:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L21
.L22:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, lake[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
.L21:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L22
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -16[rbp], 1
.L20:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L23
	mov	edi, 10
	call	putchar@PLT
	jmp	.L24
.L19:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L24:
	mov	edx, 400
	mov	esi, 0
	lea	rax, lake[rip]
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -20[rbp], 1
.L8:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L25
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
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
