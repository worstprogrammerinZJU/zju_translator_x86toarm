	.file	"1579.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d %d %d"
.LC1:
	.string	"w(%d, %d, %d) = 1\n"
.LC2:
	.string	"w(%d, %d, %d) = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 208
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -37056[rbp]
	mov	edx, 37044
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -37068[rbp], 0
	jmp	.L2
.L5:
	mov	DWORD PTR -37064[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	mov	DWORD PTR -37056[rbp+rax*4], 1
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 441
	add	rax, rdx
	mov	DWORD PTR -37056[rbp+rax*4], 1
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	movsx	rdx, edx
	movsx	rcx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	imul	rdx, rcx, 1764
	add	rax, rdx
	add	rax, rbp
	sub	rax, 37056
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -37064[rbp]
	add	eax, 1
	mov	DWORD PTR -37064[rbp], eax
.L3:
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, 20
	jle	.L4
	mov	eax, DWORD PTR -37068[rbp]
	add	eax, 1
	mov	DWORD PTR -37068[rbp], eax
.L2:
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, 20
	jle	.L5
	mov	DWORD PTR -37068[rbp], 1
	jmp	.L6
.L13:
	mov	DWORD PTR -37064[rbp], 1
	jmp	.L7
.L12:
	mov	DWORD PTR -37060[rbp], 1
	jmp	.L8
.L11:
	mov	edx, DWORD PTR -37068[rbp]
	mov	eax, DWORD PTR -37064[rbp]
	cmp	edx, eax
	jge	.L9
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37060[rbp]
	cmp	edx, eax
	jge	.L9
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	ecx, DWORD PTR -37060[rbp]
	sub	ecx, 1
	movsx	rcx, ecx
	cdqe
	movsx	rdx, edx
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	esi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	lea	ecx, -1[rdx]
	mov	edx, DWORD PTR -37060[rbp]
	sub	edx, 1
	movsx	rdi, edx
	cdqe
	movsx	rdx, ecx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rdi
	mov	eax, DWORD PTR -37056[rbp+rax*4]
	lea	ecx, [rsi+rax]
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -37060[rbp]
	movsx	rdi, edx
	cdqe
	movsx	rdx, esi
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rdi
	mov	edi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	esi, DWORD PTR -37060[rbp]
	sub	ecx, edi
	movsx	rsi, esi
	cdqe
	movsx	rdx, edx
	imul	rdi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rdi
	add	rax, rsi
	mov	DWORD PTR -37056[rbp+rax*4], ecx
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -37068[rbp]
	lea	ecx, -1[rax]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37060[rbp]
	movsx	rsi, eax
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rsi
	mov	esi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37068[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -37064[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -37060[rbp]
	movsx	rdi, eax
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rdi
	mov	eax, DWORD PTR -37056[rbp+rax*4]
	lea	edi, [rsi+rax]
	mov	eax, DWORD PTR -37068[rbp]
	lea	ecx, -1[rax]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37060[rbp]
	sub	eax, 1
	movsx	rsi, eax
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rsi
	mov	eax, DWORD PTR -37056[rbp+rax*4]
	lea	ecx, [rdi+rax]
	mov	eax, DWORD PTR -37068[rbp]
	lea	esi, -1[rax]
	mov	eax, DWORD PTR -37064[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -37060[rbp]
	sub	eax, 1
	movsx	rdi, eax
	movsx	rax, esi
	movsx	rdx, edx
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rdi
	mov	edi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	esi, DWORD PTR -37060[rbp]
	sub	ecx, edi
	movsx	rsi, esi
	cdqe
	movsx	rdx, edx
	imul	rdi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rdi
	add	rax, rsi
	mov	DWORD PTR -37056[rbp+rax*4], ecx
.L10:
	mov	eax, DWORD PTR -37060[rbp]
	add	eax, 1
	mov	DWORD PTR -37060[rbp], eax
.L8:
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, 20
	jle	.L11
	mov	eax, DWORD PTR -37064[rbp]
	add	eax, 1
	mov	DWORD PTR -37064[rbp], eax
.L7:
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, 20
	jle	.L12
	mov	eax, DWORD PTR -37068[rbp]
	add	eax, 1
	mov	DWORD PTR -37068[rbp], eax
.L6:
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, 20
	jle	.L13
	lea	rcx, -37060[rbp]
	lea	rdx, -37064[rbp]
	lea	rax, -37068[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L14
.L20:
	mov	eax, DWORD PTR -37068[rbp]
	test	eax, eax
	jle	.L15
	mov	eax, DWORD PTR -37064[rbp]
	test	eax, eax
	jle	.L15
	mov	eax, DWORD PTR -37060[rbp]
	test	eax, eax
	jg	.L16
.L15:
	mov	ecx, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37068[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
.L16:
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, 20
	jg	.L18
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, 20
	jg	.L18
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, 20
	jle	.L19
.L18:
	mov	esi, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37068[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
.L19:
	mov	eax, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	ecx, DWORD PTR -37060[rbp]
	movsx	rcx, ecx
	cdqe
	movsx	rdx, edx
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	esi, DWORD PTR -37056[rbp+rax*4]
	mov	ecx, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37068[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L17:
	lea	rcx, -37060[rbp]
	lea	rdx, -37064[rbp]
	lea	rax, -37068[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L14:
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
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
