	.text
	.p2align	4, 0x90                         # -- Begin function stbi__clamp
stbi__clamp:                            # @stbi__clamp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	cmpl	$255, -8(%rbp)
	jbe	.LBB0_6
# %bb.1:
	cmpl	$0, -8(%rbp)
	jge	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_3:
	cmpl	$255, -8(%rbp)
	jle	.LBB0_5
# %bb.4:
	movl	$255, -4(%rbp)
	jmp	.LBB0_7
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__clamp