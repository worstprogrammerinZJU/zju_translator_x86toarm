	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__write3
stbiw__write3:                          # @stbiw__write3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%cl, %al
	movb	%dl, %cl
	movb	%sil, %dl
	movq	%rdi, -8(%rbp)
	movb	%dl, -9(%rbp)
	movb	%cl, -10(%rbp)
	movb	%al, -11(%rbp)
	movb	-9(%rbp), %al
	movb	%al, -14(%rbp)
	movb	-10(%rbp), %al
	movb	%al, -13(%rbp)
	movb	-11(%rbp), %al
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-14(%rbp), %rsi
	movl	$3, %edx
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__write3