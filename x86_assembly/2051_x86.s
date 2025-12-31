	.file	"2051.c"
	.intel_syntax noprefix
	.text
	.globl	K
	.bss
	.align 32
	.type	K, @object
	.size	K, 4004
K:
	.zero	4004
	.globl	argu
	.align 32
	.type	argu, @object
	.size	argu, 12000
argu:
	.zero	12000
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"#"
.LC3:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -116[rbp], 0
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, argu[rip]
	add	rax, rdx
	lea	rdx, 4[rax]
	mov	eax, DWORD PTR -116[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, argu[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -116[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -116[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	lea	rax, -112[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -116[rbp]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 12
	mov	rsi, rax
	lea	rax, argu[rip]
	mov	rdi, rax
	call	qsort@PLT
	lea	rax, -120[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -120[rbp]
	mov	eax, DWORD PTR -116[rbp]
	mov	esi, edx
	mov	edi, eax
	call	HEAP
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	ret
	.size	main, .-main
	.globl	ADJUST
	.type	ADJUST, @function
ADJUST:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
.L11:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L8
	add	DWORD PTR -8[rbp], 1
.L8:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -8[rbp]
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	sal	DWORD PTR -8[rbp]
.L7:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L11
	jmp	.L10
.L12:
	nop
.L10:
	mov	eax, DWORD PTR -8[rbp]
	sar	eax
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, K[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
	.size	ADJUST, .-ADJUST
	.section	.rodata
.LC4:
	.string	"%d\n"
	.text
	.globl	HEAP
	.type	HEAP, @function
HEAP:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
	jmp	.L14
.L15:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ADJUST
	sub	DWORD PTR -8[rbp], 1
.L14:
	cmp	DWORD PTR -8[rbp], 0
	jg	.L15
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L16
.L21:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
.L20:
	mov	ecx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+4]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, esi
	cmp	ecx, eax
	je	.L22
	add	DWORD PTR -4[rbp], 1
.L17:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L20
	jmp	.L19
.L22:
	nop
.L19:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	ecx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR K[rip+4], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	edi, 1
	call	ADJUST
	sub	DWORD PTR -8[rbp], 1
.L16:
	cmp	DWORD PTR -8[rbp], 0
	jg	.L21
	nop
	nop
	leave
	ret
	.size	HEAP, .-HEAP
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
	jge	.L24
	mov	eax, -1
	jmp	.L27
.L24:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jle	.L26
	mov	eax, 1
	jmp	.L27
.L26:
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
