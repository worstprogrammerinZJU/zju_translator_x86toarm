	.text
	.globl	rgbgr_image                     # -- Begin function rgbgr_image
	.p2align	4, 0x90
rgbgr_image:                            # @rgbgr_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	imull	-12(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	imull	-12(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig