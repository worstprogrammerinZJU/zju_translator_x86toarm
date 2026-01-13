	.text
	.globl	get_all_jobs_used               # -- Begin function get_all_jobs_used
	.p2align	4, 0x90
get_all_jobs_used:                      # @get_all_jobs_used
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	all_jobs_used(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	all_jobs_used
	.p2align	3
all_jobs_used:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym all_jobs_used