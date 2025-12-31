	.file	"2247.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.align 8
.LC1:
	.string	"The %d%s humble number is %d.\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -84[rbp], -1
	mov	WORD PTR -20[rbp], 26740
	mov	BYTE PTR -18[rbp], 0
	mov	WORD PTR -17[rbp], 29811
	mov	BYTE PTR -15[rbp], 0
	mov	WORD PTR -14[rbp], 25710
	mov	BYTE PTR -12[rbp], 0
	mov	WORD PTR -11[rbp], 25714
	mov	BYTE PTR -9[rbp], 0
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	DWORD PTR [rax], 1
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -92[rbp], 1
	jmp	.L2
.L25:
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 2863311531
	imul	rax, rdx
	shr	rax, 32
	shr	eax
	mov	edx, eax
	add	edx, edx
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	imul	rax, rax, 613566757
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 2
	mov	edx, eax
	sal	edx, 3
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -84[rbp]
	shr	edx
	cmp	eax, edx
	ja	.L3
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
	jmp	.L4
.L6:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
.L4:
	cmp	QWORD PTR -56[rbp], 0
	je	.L5
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L6
.L5:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L7
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L8
.L7:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
.L8:
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -40[rbp], rax
.L3:
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L9
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	imul	rax, rax, 613566757
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 2
	mov	edx, eax
	sal	edx, 3
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L9
	mov	rax, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -84[rbp]
	mov	ecx, edx
	mov	edx, 2863311531
	imul	rdx, rcx
	shr	rdx, 32
	shr	edx
	cmp	eax, edx
	ja	.L9
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
	jmp	.L10
.L12:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
.L10:
	cmp	QWORD PTR -56[rbp], 0
	je	.L11
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L12
.L11:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L13
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L14
.L13:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
.L14:
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -40[rbp], rax
.L9:
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	imul	rax, rax, 613566757
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 2
	mov	edx, eax
	sal	edx, 3
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L15
	mov	rax, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -84[rbp]
	mov	ecx, edx
	mov	edx, 3435973837
	imul	rdx, rcx
	shr	rdx, 32
	shr	edx, 2
	cmp	eax, edx
	ja	.L15
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 2
	add	edx, eax
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
	jmp	.L16
.L18:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
.L16:
	cmp	QWORD PTR -56[rbp], 0
	je	.L17
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L18
.L17:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L19
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L15
.L19:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
.L15:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -84[rbp]
	mov	ecx, eax
	imul	rcx, rcx, 613566757
	shr	rcx, 32
	sub	eax, ecx
	shr	eax
	add	eax, ecx
	shr	eax, 2
	cmp	edx, eax
	ja	.L20
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 3
	sub	eax, edx
	mov	ecx, eax
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], ecx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
	jmp	.L21
.L23:
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
.L21:
	cmp	QWORD PTR -56[rbp], 0
	je	.L22
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L23
.L22:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L24
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L20
.L24:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
.L20:
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -80[rbp], rax
	add	DWORD PTR -92[rbp], 1
.L2:
	cmp	DWORD PTR -92[rbp], 4816
	jle	.L25
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L26
.L33:
	mov	ecx, DWORD PTR -96[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 1
	jne	.L27
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	edx, eax
	cmp	edx, 11
	je	.L27
	mov	DWORD PTR -88[rbp], 1
	jmp	.L28
.L27:
	mov	ecx, DWORD PTR -96[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 2
	jne	.L29
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	edx, eax
	cmp	edx, 12
	je	.L29
	mov	DWORD PTR -88[rbp], 2
	jmp	.L28
.L29:
	mov	ecx, DWORD PTR -96[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 3
	jne	.L30
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	edx, eax
	cmp	edx, 13
	je	.L30
	mov	DWORD PTR -88[rbp], 3
	jmp	.L28
.L30:
	mov	DWORD PTR -88[rbp], 0
.L28:
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -92[rbp], 1
	jmp	.L31
.L32:
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -64[rbp], rax
	add	DWORD PTR -92[rbp], 1
.L31:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L32
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR [rax]
	lea	rsi, -20[rbp]
	mov	eax, DWORD PTR -88[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	add	rsi, rax
	mov	eax, DWORD PTR -96[rbp]
	mov	ecx, edx
	mov	rdx, rsi
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L26:
	mov	eax, DWORD PTR -96[rbp]
	test	eax, eax
	jne	.L33
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
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
