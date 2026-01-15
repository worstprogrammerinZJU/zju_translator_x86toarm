	.text
	.globl	softmax_cpu                     # -- Begin function softmax_cpu
	.p2align	4, 0x90
softmax_cpu:                            # @softmax_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	16(%rbp), %edx
	movq	24(%rbp), %rcx
	movl	-40(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	movl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	callq	softmax@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym softmax