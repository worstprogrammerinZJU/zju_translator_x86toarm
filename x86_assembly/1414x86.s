	.text
	.p2align	4, 0x90                         # -- Begin function iswhitespace
iswhitespace:                           # @iswhitespace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movb	$1, %al
	cmpl	$32, -4(%rbp)
	movb	%al, -5(%rbp)                   # 1-byte Spill
	je	.LBB0_4
# %bb.1:
	movb	$1, %al
	cmpl	$9, -4(%rbp)
	movb	%al, -5(%rbp)                   # 1-byte Spill
	je	.LBB0_4
# %bb.2:
	movb	$1, %al
	cmpl	$12, -4(%rbp)
	movb	%al, -5(%rbp)                   # 1-byte Spill
	je	.LBB0_4
# %bb.3:
	cmpl	$11, -4(%rbp)
	sete	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB0_4:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym iswhitespace