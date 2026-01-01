	.file	"3047.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d"
.LC1:
	.string	"monday"
.LC2:
	.string	"tuesday"
.LC3:
	.string	"wednesday"
.LC4:
	.string	"thursday"
.LC5:
	.string	"friday"
.LC6:
	.string	"saturday"
.LC7:
	.string	"sunday"
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
	mov	DWORD PTR -64[rbp], 31
	mov	DWORD PTR -60[rbp], 28
	mov	DWORD PTR -56[rbp], 31
	mov	DWORD PTR -52[rbp], 30
	mov	DWORD PTR -48[rbp], 31
	mov	DWORD PTR -44[rbp], 30
	mov	DWORD PTR -40[rbp], 31
	mov	DWORD PTR -36[rbp], 31
	mov	DWORD PTR -32[rbp], 30
	mov	DWORD PTR -28[rbp], 31
	mov	DWORD PTR -24[rbp], 30
	mov	DWORD PTR -20[rbp], 31
	lea	rcx, -76[rbp]
	lea	rdx, -80[rbp]
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	imul	eax, eax, 365
	mov	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	sar	eax, 31
	sub	eax, edx
	add	ecx, eax
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 7
	sar	eax, 31
	mov	esi, eax
	mov	eax, edx
	sub	eax, esi
	add	eax, ecx
	add	DWORD PTR -68[rbp], eax
	mov	DWORD PTR -72[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	add	DWORD PTR -68[rbp], eax
	add	DWORD PTR -72[rbp], 1
.L2:
	mov	eax, DWORD PTR -80[rbp]
	sub	eax, 1
	cmp	DWORD PTR -72[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR -80[rbp]
	cmp	eax, 2
	jle	.L4
	mov	eax, DWORD PTR -84[rbp]
	and	eax, 3
	test	eax, eax
	jne	.L5
	mov	edx, DWORD PTR -84[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 5
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L6
.L5:
	mov	edx, DWORD PTR -84[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 7
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 400
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L4
.L6:
	add	DWORD PTR -68[rbp], 1
.L4:
	mov	eax, DWORD PTR -76[rbp]
	sub	eax, 1
	add	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	sar	edx, 2
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	sal	edx, 3
	sub	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -68[rbp], eax
	cmp	DWORD PTR -68[rbp], 6
	ja	.L7
	mov	eax, DWORD PTR -68[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, .L9[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L9[rip]
	add	rax, rdx
	notrack jmp	rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L15-.L9
	.long	.L14-.L9
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L10-.L9
	.long	.L8-.L9
	.text
.L15:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L14:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L13:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L12:
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L11:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L10:
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L7
.L8:
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
	nop
.L7:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
