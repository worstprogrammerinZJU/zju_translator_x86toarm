	.text
	.globl	flatten                         # -- Begin function flatten
	.p2align	4, 0x90
flatten:                                # @flatten
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-12(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_15
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -40(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -36(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_11
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-44(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-12(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	%ecx, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_15:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-32(%rbp), %rdi
	callq	free@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym free