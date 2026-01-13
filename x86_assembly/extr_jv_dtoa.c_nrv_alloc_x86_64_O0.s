	.text
	.p2align	4, 0x90                         # -- Begin function nrv_alloc
nrv_alloc:                              # @nrv_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	rv_alloc@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %al
	movq	-48(%rbp), %rcx
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	cmpq	$0, -24(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_5:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nrv_alloc
	.addrsig_sym rv_alloc