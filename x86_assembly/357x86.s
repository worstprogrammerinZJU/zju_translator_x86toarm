	.text
	.p2align	4, 0x90                         # -- Begin function test_while
test_while:                             # @test_while
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100, -8(%rbp)
	jg	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -8(%rbp)
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	-4(%rbp), %esi
	movl	$5050, %edi                     # imm = 0x13BA
	callq	expect@PLT
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100, -8(%rbp)
	jg	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -8(%rbp)
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_6:
	movl	-4(%rbp), %esi
	movl	$5051, %edi                     # imm = 0x13BB
	callq	expect@PLT
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -8(%rbp)
	jge	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$5, %eax
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$9, -8(%rbp)
	jne	.LBB0_12
# %bb.11:
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_13:
	movl	-4(%rbp), %esi
	movl	$30, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$100, %eax
	jge	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_14
.LBB0_16:
	movl	$0, -8(%rbp)
# %bb.17:
	movl	$67, -8(%rbp)
# %bb.18:
	movl	-8(%rbp), %esi
	movl	$67, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_while
	.addrsig_sym expect