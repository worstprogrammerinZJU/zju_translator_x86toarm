	.text
	.globl	getApbFrequency                 # -- Begin function getApbFrequency
	.p2align	4, 0x90
getApbFrequency:                        # @getApbFrequency
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rdi
	callq	rtc_clk_cpu_freq_get_config@PLT
	leaq	-4(%rbp), %rdi
	callq	calculateApb@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtc_clk_cpu_freq_get_config
	.addrsig_sym calculateApb