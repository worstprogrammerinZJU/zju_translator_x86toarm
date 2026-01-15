	.text
	.p2align	4, 0x90                         # -- Begin function flagusage
flagusage:                              # @flagusage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	warnx@PLT
	movl	$5, %edi
	callq	usage@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"flag requires an argument: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flagusage
	.addrsig_sym warnx
	.addrsig_sym usage