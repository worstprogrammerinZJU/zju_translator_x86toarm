	.text
	.p2align	4, 0x90                         # -- Begin function many_floats
many_floats:                            # @many_floats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movss	80(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	72(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	64(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	56(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	48(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	40(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	32(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	24(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	16(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	%xmm4, -20(%rbp)
	movss	%xmm5, -24(%rbp)
	movss	%xmm6, -28(%rbp)
	movss	%xmm7, -32(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$1, %edi
	callq	expectf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$2, %edi
	callq	expectf@PLT
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	$3, %edi
	callq	expectf@PLT
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	$4, %edi
	callq	expectf@PLT
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	$5, %edi
	callq	expectf@PLT
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	$6, %edi
	callq	expectf@PLT
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	$7, %edi
	callq	expectf@PLT
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	$8, %edi
	callq	expectf@PLT
	movss	16(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$9, %edi
	callq	expectf@PLT
	movss	24(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$10, %edi
	callq	expectf@PLT
	movss	32(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$11, %edi
	callq	expectf@PLT
	movss	40(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$12, %edi
	callq	expectf@PLT
	movss	48(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$13, %edi
	callq	expectf@PLT
	movss	56(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$14, %edi
	callq	expectf@PLT
	movss	64(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$15, %edi
	callq	expectf@PLT
	movss	72(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$16, %edi
	callq	expectf@PLT
	movss	80(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movl	$17, %edi
	callq	expectf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym many_floats
	.addrsig_sym expectf