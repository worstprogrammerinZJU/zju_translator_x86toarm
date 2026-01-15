	.text
	.globl	strip                           # -- Begin function strip
	.p2align	4, 0x90
strip:                                  # @strip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -33(%rbp)
	movsbl	-33(%rbp), %eax
	cmpl	$32, %eax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$9, %eax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	-32(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-32(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen