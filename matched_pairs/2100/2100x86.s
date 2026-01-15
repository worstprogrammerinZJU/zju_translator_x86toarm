	.text
	.p2align	4, 0x90                         # -- Begin function resample_flush
resample_flush:                         # @resample_flush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	FFMIN@PLT
	addl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	movq	-16(%rbp), %rax
	addl	(%rax), %esi
	addl	-48(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_2
# %bb.1:
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movq	-32(%rbp), %rax
	movl	16(%rax), %edi
	callq	av_assert0@PLT
	movl	$0, -36(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -40(%rbp)
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	addl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	4(%rcx), %eax
	cltq
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	subl	-40(%rbp), %eax
	subl	$1, %eax
	movq	-32(%rbp), %rcx
	imull	4(%rcx), %eax
	cltq
	addq	%rax, %rsi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	memcpy@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_10:
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_flush
	.addrsig_sym FFMIN
	.addrsig_sym swri_realloc_audio
	.addrsig_sym av_assert0
	.addrsig_sym memcpy