	.text
	.globl	box_union                       # -- Begin function box_union
	.p2align	4, 0x90
box_union:                              # @box_union
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movlpd	%xmm0, -8(%rbp)
	movlpd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1                # xmm1 = mem[0],zero
	callq	box_intersection@PLT
	movss	%xmm0, -20(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	subss	-20(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_intersection