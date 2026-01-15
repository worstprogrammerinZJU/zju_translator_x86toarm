	.text
	.globl	scale_image                     # -- Begin function scale_image
	.p2align	4, 0x90
scale_image:                            # @scale_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movss	%xmm0, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	imull	8(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movq	16(%rax), %rax
	movslq	-8(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig