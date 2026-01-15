	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_test
stbi__pnm_test:                         # @stbi__pnm_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $rax
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $rax
	movb	%al, -18(%rbp)
	movsbl	-17(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB0_3
# %bb.1:
	movsbl	-18(%rbp), %eax
	cmpl	$53, %eax
	je	.LBB0_4
# %bb.2:
	movsbl	-18(%rbp), %eax
	cmpl	$54, %eax
	je	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$1, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_test
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__rewind