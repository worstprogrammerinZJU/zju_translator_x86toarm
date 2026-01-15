	.text
	.globl	col2im_add_pixel                # -- Begin function col2im_add_pixel
	.p2align	4, 0x90
col2im_add_pixel:                       # @col2im_add_pixel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	24(%rbp), %ecx
	movl	-24(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movl	24(%rbp), %ecx
	movl	-28(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -24(%rbp)
	jl	.LBB0_4
# %bb.1:
	cmpl	$0, -28(%rbp)
	jl	.LBB0_4
# %bb.2:
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.3:
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB0_5
.LBB0_4:
	jmp	.LBB0_6
.LBB0_5:
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-12(%rbp), %edi
	imull	16(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_6:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig