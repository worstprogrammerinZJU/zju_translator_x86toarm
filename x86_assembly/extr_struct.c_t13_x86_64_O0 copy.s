	.text
	.p2align	4, 0x90                         # -- Begin function t13
t13:                                    # @t13
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	.L__const.t13.v(%rip), %al
	movb	%al, -8(%rbp)
	movl	$97, %edi
	movsbl	-8(%rbp), %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
.L__const.t13.v:
	.byte	97                              # 0x61
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t13
	.addrsig_sym expect