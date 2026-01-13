	.text
	.globl	translate_image_channel         # -- Begin function translate_image_channel
	.p2align	4, 0x90
translate_image_channel:                # @translate_image_channel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	callq	get_pixel@PLT
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-12(%rbp), %ecx
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	callq	set_pixel@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel