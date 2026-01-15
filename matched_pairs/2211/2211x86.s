	.text
	.p2align	4, 0x90                         # -- Begin function stbi__gif_test_raw
stbi__gif_test_raw:                     # @stbi__gif_test_raw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$71, %eax
	jne	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$73, %eax
	jne	.LBB0_4
# %bb.2:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$70, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$56, %eax
	je	.LBB0_5
.LBB0_4:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$57, -20(%rbp)
	je	.LBB0_8
# %bb.6:
	cmpl	$55, -20(%rbp)
	je	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$97, %eax
	je	.LBB0_10
# %bb.9:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	$1, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_test_raw
	.addrsig_sym stbi__get8