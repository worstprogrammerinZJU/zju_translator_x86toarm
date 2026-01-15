	.text
	.globl	ty2s                            # -- Begin function ty2s
	.p2align	4, 0x90
ty2s:                                   # @ty2s
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_dict@PLT
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	do_ty2s@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_ty2s
	.addrsig_sym make_dict