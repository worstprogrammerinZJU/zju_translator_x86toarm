	.text
	.globl	decFloatIsSubnormal             # -- Begin function decFloatIsSubnormal
	.p2align	4, 0x90
decFloatIsSubnormal:                    # @decFloatIsSubnormal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	DFISSPECIAL@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	decFloatIsNormal@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	DFISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym decFloatIsNormal
	.addrsig_sym DFISZERO