	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__putc
stbiw__putc:                            # @stbiw__putc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-9(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__putc