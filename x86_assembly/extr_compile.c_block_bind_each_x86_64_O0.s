	.text
	.p2align	4, 0x90                         # -- Begin function block_bind_each
block_bind_each:                        # @block_bind_each
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rdi
	callq	block_has_only_binders@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	OP_HAS_BINDING(%rip), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	inst_block@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	xorl	%ecx, %ecx
	callq	block_bind_subblock@PLT
	movq	%rax, %rcx
	movslq	-24(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_bind_each
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders
	.addrsig_sym block_bind_subblock
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BINDING