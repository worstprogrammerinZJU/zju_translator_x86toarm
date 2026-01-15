	.text
	.p2align	4, 0x90                         # -- Begin function stbi__is_16_main
stbi__is_16_main:                       # @stbi__is_16_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__png_is16@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	stbi__psd_is16@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__is_16_main
	.addrsig_sym stbi__png_is16
	.addrsig_sym stbi__psd_is16