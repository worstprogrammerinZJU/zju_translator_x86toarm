	.text
	.globl	decFloatXor                     # -- Begin function decFloatXor
	.p2align	4, 0x90
decFloatXor:                            # @decFloatXor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	DFISUINT01@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	DFISUINT01@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.2:
	movq	-24(%rbp), %rdi
	callq	DFISCC01@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	DFISCC01@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decInvalid@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ZEROWORD
	.p2align	2
ZEROWORD:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISUINT01
	.addrsig_sym DFISCC01
	.addrsig_sym decInvalid