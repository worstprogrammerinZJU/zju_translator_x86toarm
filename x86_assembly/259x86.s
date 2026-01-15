	.text
	.globl	block_drop_unreferenced         # -- Begin function block_drop_unreferenced
	.p2align	4, 0x90
block_drop_unreferenced:                # @block_drop_unreferenced
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	block_mark_referenced@PLT
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	leaq	-4(%rbp), %rdi
	callq	block_take@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	inst_free@PLT
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	inst_block@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	BLOCK@PLT
	movl	%eax, -8(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_7:
	movl	-8(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_mark_referenced
	.addrsig_sym gen_noop
	.addrsig_sym block_take
	.addrsig_sym inst_free
	.addrsig_sym BLOCK
	.addrsig_sym inst_block