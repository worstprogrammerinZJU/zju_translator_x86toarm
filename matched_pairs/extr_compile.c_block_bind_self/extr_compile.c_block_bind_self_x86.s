	.text
	.globl	block_bind_self                 # -- Begin function block_bind_self
	.p2align	4, 0x90
block_bind_self:                        # @block_bind_self
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	block_has_only_binders@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	OP_HAS_BINDING(%rip), %eax
	orl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	leaq	-4(%rbp), %rdi
	callq	block_take_last@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	inst_block@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	xorl	%ecx, %ecx
	callq	block_bind_subblock@PLT
	movl	-28(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	BLOCK@PLT
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	-12(%rbp), %eax
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
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders
	.addrsig_sym gen_noop
	.addrsig_sym block_take_last
	.addrsig_sym inst_block
	.addrsig_sym block_bind_subblock
	.addrsig_sym BLOCK
	.addrsig_sym OP_HAS_BINDING