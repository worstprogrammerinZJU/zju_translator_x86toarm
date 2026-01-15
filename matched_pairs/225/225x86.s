	.text
	.globl	base64_decode_value             # -- Begin function base64_decode_value
	.p2align	4, 0x90
base64_decode_value:                    # @base64_decode_value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	-1(%rbp), %edi
	callq	base64_decode_value_signed@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_value_signed