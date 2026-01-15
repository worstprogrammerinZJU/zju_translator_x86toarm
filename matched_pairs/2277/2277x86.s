	.text
	.p2align	4, 0x90                         # -- Begin function stbi__psd_is16
stbi__psd_is16:                         # @stbi__psd_is16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	cmpl	$943870035, %eax                # imm = 0x38425053
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	cmpl	$1, %eax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movq	-16(%rbp), %rdi
	movl	$6, %esi
	callq	stbi__skip@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB0_6
# %bb.5:
	cmpl	$16, -20(%rbp)
	jle	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_7:
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -24(%rbp)
	cmpl	$16, -24(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	$1, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_is16
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__skip