	.text
	.p2align	4, 0x90                         # -- Begin function test_for
test_for:                               # @test_for
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5, -4(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-8(%rbp), %esi
	movl	$10, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5, -4(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	-8(%rbp), %esi
	movl	$10, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100, -4(%rbp)
	jge	.LBB0_16
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$5, -4(%rbp)
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$9, -4(%rbp)
	jne	.LBB0_14
# %bb.13:
	jmp	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_16:
	movl	-8(%rbp), %esi
	movl	$26, %edi
	callq	expect@PLT
	movl	$3, -12(%rbp)
	movl	$5, -16(%rbp)
	movl	$8, -20(%rbp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -12(%rbp)
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	addl	-16(%rbp), %esi
	callq	expect@PLT
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_17
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	movl	$0, -4(%rbp)
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -4(%rbp)
	jge	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_23 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_26:
	movl	$0, -4(%rbp)
# %bb.27:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_28
	jmp	.LBB0_29
.LBB0_28:
	movl	$68, -4(%rbp)
.LBB0_29:
	movl	-4(%rbp), %esi
	movl	$68, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_for
	.addrsig_sym expect