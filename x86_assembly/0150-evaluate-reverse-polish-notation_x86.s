	.file	"0150-evaluate-reverse-polish-notation.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"+"
.LC1:
	.string	"-"
.LC2:
	.string	"*"
.LC3:
	.string	"/"
	.text
	.globl	evalRPN
	.type	evalRPN, @function
evalRPN:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -104[rbp], rdi
	mov	DWORD PTR -108[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -108[rbp]
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
	lea	rdx, 0[0+rax*8]
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -84[rbp], -1
	mov	DWORD PTR -80[rbp], 0
	jmp	.L5
.L11:
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -56[rbp], eax
	sub	DWORD PTR -84[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -52[rbp], eax
	mov	edx, DWORD PTR -56[rbp]
	mov	eax, DWORD PTR -52[rbp]
	add	eax, edx
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -64[rbp], eax
	sub	DWORD PTR -84[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	QWORD PTR -32[rbp], rax
	sub	DWORD PTR -84[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -76[rbp], eax
	sub	DWORD PTR -84[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -72[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	cdq
	idiv	DWORD PTR -76[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
.L10:
	add	DWORD PTR -84[rbp], 1
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	eax, 0
	call	atoi@PLT
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
.L7:
	add	DWORD PTR -80[rbp], 1
.L5:
	mov	eax, DWORD PTR -80[rbp]
	cmp	eax, DWORD PTR -108[rbp]
	jl	.L11
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rsp, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	evalRPN, .-evalRPN
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
