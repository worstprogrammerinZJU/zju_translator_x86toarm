	.text
	.globl	read_all_fail                   # -- Begin function read_all_fail
	.p2align	4, 0x90
read_all_fail:                          # @read_all_fail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	addq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	subq	-32(%rbp), %rdx
	callq	read@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_5:
	movl	$0, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read