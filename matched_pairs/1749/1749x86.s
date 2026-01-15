	.text
	.globl	get_network_boxes               # -- Begin function get_network_boxes
	.p2align	4, 0x90
get_network_boxes:                      # @get_network_boxes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rsi
	callq	make_network_boxes@PLT
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	fill_network_boxes@PLT
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_network_boxes
	.addrsig_sym fill_network_boxes