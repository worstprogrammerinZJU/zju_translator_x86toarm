	.text
	.globl	network_predict_data_multi      # -- Begin function network_predict_data_multi
	.p2align	4, 0x90
network_predict_data_multi:             # @network_predict_data_multi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %edi
	movl	-56(%rbp), %esi
	callq	make_matrix@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %edi
	imull	-24(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_15 Depth 4
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_24
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -48(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-64(%rbp), %rdi
	movl	-48(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -52(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_15 Depth 4
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_22
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	network_predict@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB0_11:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_15 Depth 4
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_20
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_20
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=3
	movl	$0, -44(%rbp)
.LBB0_15:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=4
	movq	-72(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-44(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=4
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_15
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=3
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_11
.LBB0_20:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_9
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_24:
	movq	-64(%rbp), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym network_predict
	.addrsig_sym free