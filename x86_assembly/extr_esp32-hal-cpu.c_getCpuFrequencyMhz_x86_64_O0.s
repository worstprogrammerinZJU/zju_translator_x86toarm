	.text
	.globl	getCpuFrequencyMhz              # -- Begin function getCpuFrequencyMhz
	.p2align	4, 0x90
getCpuFrequencyMhz:                     # @getCpuFrequencyMhz
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	callq	rtc_clk_cpu_freq_get_config@PLT
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtc_clk_cpu_freq_get_config