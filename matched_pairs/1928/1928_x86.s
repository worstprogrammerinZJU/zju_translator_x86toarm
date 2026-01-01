	.file	"1928.c"
	.intel_syntax noprefix
	.text
	.globl	peanut
	.bss
	.align 32
	.type	peanut, @object
	.size	peanut, 30000
peanut:
	.zero	30000
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR -16[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -12[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L2
	mov	eax, 1
	jmp	.L5
.L2:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, -1
	jmp	.L5
.L4:
	mov	eax, 0
.L5:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.globl	fab
	.type	fab, @function
fab:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L7
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	jmp	.L8
.L7:
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
.L8:
	pop	rbp
	ret
	.size	fab, .-fab
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -48[rbp], 0
	jmp	.L10
.L18:
	lea	rcx, -52[rbp]
	lea	rdx, -68[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -44[rbp], 1
	jmp	.L11
.L15:
	mov	DWORD PTR -40[rbp], 1
	jmp	.L12
.L14:
	lea	rax, -60[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -60[rbp]
	test	eax, eax
	je	.L13
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, peanut[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, peanut[rip+4]
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, peanut[rip+8]
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -36[rbp], 1
.L13:
	add	DWORD PTR -40[rbp], 1
.L12:
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -40[rbp], eax
	jle	.L14
	add	DWORD PTR -44[rbp], 1
.L11:
	mov	eax, DWORD PTR -64[rbp]
	cmp	DWORD PTR -44[rbp], eax
	jle	.L15
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 12
	mov	rsi, rax
	lea	rax, peanut[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -60[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	eax, DWORD PTR peanut[rip+8]
	mov	DWORD PTR -28[rbp], eax
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -32[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	mov	ebx, eax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	add	eax, ebx
	add	eax, 1
	add	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -60[rbp]
	add	eax, edx
	mov	DWORD PTR -60[rbp], eax
	add	DWORD PTR -40[rbp], 1
.L16:
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -32[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	mov	edx, DWORD PTR -44[rbp]
	lea	ebx, [rax+rdx]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	lea	ecx, [rbx+rax]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cmp	edx, eax
	jl	.L17
	mov	eax, DWORD PTR -60[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -48[rbp], 1
.L10:
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -48[rbp], eax
	jl	.L18
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	mov	rbx, QWORD PTR -8[rbp]
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
