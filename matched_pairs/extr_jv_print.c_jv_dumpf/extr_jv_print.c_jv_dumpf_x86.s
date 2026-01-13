	.text
	.globl	jv_dumpf                        # -- Begin function jv_dumpf
	.p2align	4, 0x90
jv_dumpf:                               # @jv_dumpf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movb	$0, %al
	callq	tsd_dtoa_context_get@PLT
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %r8
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	callq	jv_dump_term@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_dump_term
	.addrsig_sym tsd_dtoa_context_get