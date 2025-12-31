	.file	"2442.c"
	.intel_syntax noprefix
	.text
	.globl	num
	.bss
	.align 4
	.type	num, @object
	.size	num, 4
num:
	.zero	4
	.globl	K
	.align 32
	.type	K, @object
	.size	K, 120000
K:
	.zero	120000
	.globl	key
	.align 32
	.type	key, @object
	.size	key, 120004
key:
	.zero	120004
	.globl	queue
	.align 32
	.type	queue, @object
	.size	queue, 408000
queue:
	.zero	408000
	.globl	rear
	.align 32
	.type	rear, @object
	.size	rear, 6120204
rear:
	.zero	6120204
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
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
	jmp	.L2
.L7:
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 1
	mov	DWORD PTR K[rip+4], 0
	jmp	.L3
.L6:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
.L4:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 4000
	lea	rcx, queue[rip]
	lea	rdi, [rdx+rcx]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 2
	mov	rsi, rax
	call	qsort@PLT
	mov	ecx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 4000
	lea	rdx, queue[rip]
	movzx	eax, WORD PTR [rax+rdx]
	cwde
	add	eax, ecx
	mov	DWORD PTR K[rip+4], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	mov	WORD PTR [rdx+rax], 0
	add	DWORD PTR -16[rbp], 1
.L3:
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L6
	mov	DWORD PTR num[rip], 1
	mov	eax, DWORD PTR K[rip+4]
	mov	DWORD PTR key[rip], eax
	mov	WORD PTR rear[rip], 1
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	HEAP
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L7
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
	mov	WORD PTR -6[rbp], ax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L11
.L15:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L12
	add	DWORD PTR -4[rbp], 1
.L12:
	movsx	edx, WORD PTR -6[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L16
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	sal	DWORD PTR -4[rbp]
.L11:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L15
	jmp	.L14
.L16:
	nop
.L14:
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	mov	edx, eax
	movsx	eax, WORD PTR -6[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
	.size	ADJUST, .-ADJUST
	.section	.rodata
.LC2:
	.string	"%d "
	.text
	.globl	HEAP
	.type	HEAP, @function
HEAP:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	eax, DWORD PTR K[rip+4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L18
.L29:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L19
.L22:
	mov	edx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	je	.L30
	add	DWORD PTR -16[rbp], 1
.L19:
	mov	eax, DWORD PTR num[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L22
	jmp	.L21
.L30:
	nop
.L21:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 204
	lea	rdx, rear[rip]
	movzx	eax, WORD PTR [rax+rdx]
	cwde
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L23
.L26:
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR -8[rbp]
	mov	ecx, edx
	cdqe
	imul	rax, rax, 204
	lea	rdx, rear[rip]
	mov	WORD PTR [rax+rdx], cx
	mov	DWORD PTR -12[rbp], 1
	jmp	.L24
.L25:
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rcx
	lea	rcx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rcx+rax]
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rcx, ecx
	movsx	rdx, edx
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, rear[rip]
	mov	WORD PTR [rcx+rdx], ax
	add	DWORD PTR -12[rbp], 1
.L24:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L25
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, rear[rip]
	movzx	edx, WORD PTR [rcx+rdx]
	add	edx, 1
	mov	edi, edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, rear[rip]
	mov	WORD PTR [rcx+rdx], di
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	lea	ecx, [rsi+rax]
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	movsx	edx, ax
	mov	eax, DWORD PTR num[rip]
	sub	ecx, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR num[rip]
	add	eax, 1
	mov	DWORD PTR num[rip], eax
	mov	eax, DWORD PTR num[rip]
	sub	eax, 1
	mov	edx, DWORD PTR num[rip]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
.L23:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L26
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	add	eax, 1
	mov	esi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	mov	WORD PTR [rdx+rax], si
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	sub	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR K[rip+4], eax
	mov	eax, DWORD PTR num[rip]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -16[rbp], eax
	jmp	.L27
.L28:
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ADJUST
	sub	DWORD PTR -16[rbp], 1
.L27:
	cmp	DWORD PTR -16[rbp], 0
	jg	.L28
	mov	eax, DWORD PTR K[rip+4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -20[rbp], 1
.L18:
	cmp	DWORD PTR -20[rbp], 1
	jg	.L29
	mov	edi, 10
	call	putchar@PLT
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR -4[rbp], ax
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR -2[rbp], ax
	movzx	eax, WORD PTR -4[rbp]
	cmp	ax, WORD PTR -2[rbp]
	jge	.L32
	mov	eax, -1
	jmp	.L33
.L32:
	movzx	eax, WORD PTR -4[rbp]
	cmp	ax, WORD PTR -2[rbp]
	jle	.L34
	mov	eax, 1
	jmp	.L33
.L34:
	mov	eax, 0
.L33:
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
