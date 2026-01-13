	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bmp_test_raw
stbi__bmp_test_raw:                     # @stbi__bmp_test_raw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$66, %eax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$77, %eax
	je	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, -24(%rbp)
	movb	$1, %al
	cmpl	$12, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_9
# %bb.5:
	movb	$1, %al
	cmpl	$40, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_9
# %bb.6:
	movb	$1, %al
	cmpl	$56, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_9
# %bb.7:
	movb	$1, %al
	cmpl	$108, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_9
# %bb.8:
	cmpl	$124, -24(%rbp)
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_9:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_test_raw
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__get32le
	.addrsig_sym stbi__get16le