	.text
	.p2align	4, 0x90                         # -- Begin function decCompare
decCompare:                             # @decCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	ISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -36(%rbp)
.LBB0_2:
	cmpq	$0, -32(%rbp)
	je	.LBB0_8
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	ISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_35
.LBB0_5:
	cmpl	$0, -36(%rbp)
	jne	.LBB0_7
# %bb.6:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_35
.LBB0_7:
	jmp	.LBB0_23
.LBB0_8:
	cmpl	$0, -36(%rbp)
	je	.LBB0_11
# %bb.9:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movl	$-1, -36(%rbp)
.LBB0_11:
	movl	$1, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	ISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_13
# %bb.12:
	movl	$0, -40(%rbp)
	jmp	.LBB0_16
.LBB0_13:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.14:
	movl	$-1, -40(%rbp)
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB0_18
# %bb.17:
	movl	$1, -4(%rbp)
	jmp	.LBB0_35
.LBB0_18:
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_20
# %bb.19:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_35
.LBB0_20:
	cmpl	$0, -36(%rbp)
	jne	.LBB0_22
# %bb.21:
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	orl	(%rcx), %eax
	andl	DECINF(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_30
# %bb.24:
	movq	-24(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_29
# %bb.25:
	movq	-16(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.26:
	movl	$0, -36(%rbp)
	jmp	.LBB0_28
.LBB0_27:
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_28:
	jmp	.LBB0_29
.LBB0_29:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_35
.LBB0_30:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB0_32
# %bb.31:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_32:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	D2U@PLT
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	callq	D2U@PLT
	movl	-68(%rbp), %edi                 # 4-byte Reload
	movl	-64(%rbp), %esi                 # 4-byte Reload
	movl	-60(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %r8
	movq	-16(%rbp), %rax
	subq	8(%rax), %r8
	callq	decUnitCompare@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	BADINT(%rip), %eax
	je	.LBB0_34
# %bb.33:
	movl	-36(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_34:
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_35:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECINF
	.p2align	2
DECINF:
	.long	0                               # 0x0
	.globl	BADINT
	.p2align	2
BADINT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCompare
	.addrsig_sym ISZERO
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decUnitCompare
	.addrsig_sym D2U
	.addrsig_sym DECINF
	.addrsig_sym BADINT