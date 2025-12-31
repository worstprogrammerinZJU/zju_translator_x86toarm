	.file	"1406-stone-game-iii.c"
	.intel_syntax noprefix
	.text
	.globl	stoneGameIII
	.type	stoneGameIII, @function
stoneGameIII:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -92[rbp]
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -48[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L2:
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
.L3:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L4:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -68[rbp], 0
	jmp	.L5
.L6:
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], -1000000000
	add	DWORD PTR -68[rbp], 1
.L5:
	mov	eax, DWORD PTR -68[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jl	.L6
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, 1
	mov	DWORD PTR -64[rbp], eax
	jmp	.L7
.L13:
	mov	DWORD PTR -60[rbp], 0
	mov	DWORD PTR -56[rbp], 0
	jmp	.L8
.L12:
	mov	edx, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -60[rbp], eax
	mov	edx, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	eax, edx
	add	eax, 1
	cmp	DWORD PTR -52[rbp], eax
	jle	.L9
	mov	edx, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	eax, edx
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	jmp	.L10
.L9:
	mov	ecx, 0
.L10:
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	ecx, DWORD PTR -64[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	cmp	edx, eax
	cmovge	eax, edx
	mov	ecx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -56[rbp], 1
.L8:
	cmp	DWORD PTR -56[rbp], 2
	jg	.L11
	mov	edx, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	eax, edx
	cmp	DWORD PTR -52[rbp], eax
	jg	.L12
.L11:
	sub	DWORD PTR -64[rbp], 1
.L7:
	cmp	DWORD PTR -64[rbp], 0
	jns	.L13
	mov	edi, 6
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jle	.L14
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], 1667853377
	mov	WORD PTR 4[rax], 101
	jmp	.L15
.L14:
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jns	.L16
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], 6451010
	jmp	.L15
.L16:
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], 6646100
.L15:
	mov	rax, QWORD PTR -32[rbp]
	mov	rsp, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	stoneGameIII, .-stoneGameIII
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
