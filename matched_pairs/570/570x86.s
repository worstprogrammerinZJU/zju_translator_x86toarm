	.text
	.globl	node2s                          # -- Begin function node2s
	.p2align	4, 0x90
node2s:                                 # @node2s
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	do_node2s@PLT
	movq	-16(%rbp), %rdi
	callq	buf_body@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_buffer
	.addrsig_sym do_node2s
	.addrsig_sym buf_body