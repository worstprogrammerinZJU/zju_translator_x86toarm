	.text
	.globl	box_iou                         # -- Begin function box_iou
	.p2align	4, 0x90
box_iou:                                # @box_iou
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	box_intersection@PLT
	movss	%xmm0, -12(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	box_union@PLT
	movaps	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_intersection
	.addrsig_sym box_union