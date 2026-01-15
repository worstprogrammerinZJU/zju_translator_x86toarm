	.text
	.p2align	4, 0x90                         # -- Begin function test_goto
test_goto:                              # @test_goto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
# %bb.1:
	movl	-4(%rbp), %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -8(%rbp)
	jle	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_2
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$11, -8(%rbp)
	jle	.LBB0_7
# %bb.6:
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%rbp), %esi
	movl	$55, %edi
	callq	expect@PLT
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_2
.LBB0_8:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_goto
	.addrsig_sym expect