	.text
	.p2align	4, 0x90                         # -- Begin function get_pixel_extend
get_pixel_extend:                       # @get_pixel_extend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB0_4
# %bb.1:
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# %bb.2:
	cmpl	$0, -40(%rbp)
	jl	.LBB0_4
# %bb.3:
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB0_5
.LBB0_4:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	cmpl	$0, -44(%rbp)
	jl	.LBB0_7
# %bb.6:
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB0_8
.LBB0_7:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -4(%rbp)
.LBB0_9:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel_extend
	.addrsig_sym get_pixel