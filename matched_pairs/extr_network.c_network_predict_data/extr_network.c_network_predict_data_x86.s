	.text
	.globl	network_predict_data            # -- Begin function network_predict_data
	.p2align	4, 0x90
network_predict_data:                   # @network_predict_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	make_matrix@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %edi
	imull	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_20
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-56(%rbp), %rdi
	movl	-44(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	network_predict@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_18
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$0, -40(%rbp)
.LBB0_13:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=3
	movq	-64(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %edx
	imull	-48(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_13
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_20:
	movq	-56(%rbp), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	addq	$64, %rsp
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