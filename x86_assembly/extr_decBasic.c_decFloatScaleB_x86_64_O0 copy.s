	.text
	.globl	decFloatScaleB                  # -- Begin function decFloatScaleB
	.p2align	4, 0x90
decFloatScaleB:                         # @decFloatScaleB
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	decNaNs@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_3:
	movq	-32(%rbp), %rdi
	callq	DFISINT@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decInvalid@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_5:
	movq	-32(%rbp), %rdi
	callq	decFloatDigits@PLT
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	cmpl	SCALEBMAX(%rip), %eax
	jle	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decInvalid@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	movq	-24(%rbp), %rdi
	callq	DFISINF@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decInfinity@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_9:
	movq	-32(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	xorl	%eax, %eax
	subl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_11:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	GETEXPUN@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movslq	-48(%rbp), %rax
	addq	%rax, %rdx
	callq	decFloatSetExponent@PLT
	movq	%rax, -8(%rbp)
.LBB0_12:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SCALEBMAX
	.p2align	2
SCALEBMAX:
	.long	0                               # 0x0
	.globl	DPD2BIN
	.p2align	3
DPD2BIN:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym decNaNs
	.addrsig_sym DFISINT
	.addrsig_sym decInvalid
	.addrsig_sym decFloatDigits
	.addrsig_sym DFISINF
	.addrsig_sym decInfinity
	.addrsig_sym DFISSIGNED
	.addrsig_sym decFloatSetExponent
	.addrsig_sym GETEXPUN
	.addrsig_sym SCALEBMAX