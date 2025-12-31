	.file	"1626-best-team-with-no-conflicts.c"
	.intel_syntax noprefix
	.text
	.globl	comparePlayers
	.type	comparePlayers, @function
comparePlayers:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	je	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, DWORD PTR 4[rax]
	mov	eax, edx
	sub	eax, ecx
.L3:
	pop	rbp
	ret
	.size	comparePlayers, .-comparePlayers
	.globl	bestTeamScore
	.type	bestTeamScore, @function
bestTeamScore:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -120[rbp], rdi
	mov	DWORD PTR -124[rbp], esi
	mov	QWORD PTR -136[rbp], rdx
	mov	DWORD PTR -128[rbp], ecx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L5:
	cmp	rsp, rdx
	je	.L6
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L5
.L6:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L7
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L7:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	DWORD PTR -104[rbp], 0
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -136[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*8], ecx
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	DWORD PTR 4[rax+rdx*8], ecx
	add	DWORD PTR -104[rbp], 1
.L8:
	mov	eax, DWORD PTR -104[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L9
	mov	esi, DWORD PTR -124[rbp]
	mov	rax, QWORD PTR -80[rbp]
	lea	rdx, comparePlayers[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
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
.L10:
	cmp	rsp, rdx
	je	.L11
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L10
.L11:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L12
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L12:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -100[rbp], 0
	mov	DWORD PTR -96[rbp], 0
	jmp	.L13
.L17:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR 4[rax+rdx*8]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	mov	DWORD PTR -92[rbp], 0
	jmp	.L14
.L16:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR 4[rax+rdx*8]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	cmp	ecx, eax
	jg	.L15
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	lea	edx, [rcx+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	ecx, DWORD PTR -96[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	cmp	edx, eax
	cmovge	eax, edx
	mov	ecx, eax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
.L15:
	add	DWORD PTR -92[rbp], 1
.L14:
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, DWORD PTR -96[rbp]
	jl	.L16
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	edx, DWORD PTR -100[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR -100[rbp], eax
	add	DWORD PTR -96[rbp], 1
.L13:
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L17
	mov	eax, DWORD PTR -100[rbp]
	mov	rsp, rbx
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	bestTeamScore, .-bestTeamScore
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
