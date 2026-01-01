	.file	"1125.c"
	.intel_syntax noprefix
	.text
	.globl	Dist
	.bss
	.align 32
	.type	Dist, @object
	.size	Dist, 40000
Dist:
	.zero	40000
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.text
	.globl	Floyd_Warshall
	.type	Floyd_Warshall, @function
Floyd_Warshall:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L9:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L8:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L5
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L5
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
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jge	.L5
.L6:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L5:
	add	DWORD PTR -8[rbp], 1
.L4:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L7
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L8
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L9
	nop
	nop
	pop	rbp
	ret
	.size	Floyd_Warshall, .-Floyd_Warshall
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"disjoint"
.LC3:
	.string	"%d %d\n"
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
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L11
.L27:
	mov	edx, 40000
	mov	esi, 0
	lea	rax, Dist[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L12
.L15:
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
.L14:
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	edx, DWORD PTR -28[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -16[rbp], 1
.L13:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L14
	add	DWORD PTR -20[rbp], 1
.L12:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L15
	mov	eax, DWORD PTR n[rip]
	mov	edi, eax
	call	Floyd_Warshall
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -32[rbp], 10000
	jmp	.L16
.L24:
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L17
.L22:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	je	.L30
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L31
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L19
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L19
.L30:
	nop
.L19:
	add	DWORD PTR -16[rbp], 1
.L17:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L22
	jmp	.L21
.L31:
	nop
.L21:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jne	.L23
	cmp	DWORD PTR -12[rbp], 0
	je	.L23
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L23
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
.L23:
	add	DWORD PTR -20[rbp], 1
.L16:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L24
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 10000
	jne	.L25
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L26
.L25:
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L26:
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L11:
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L27
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
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
