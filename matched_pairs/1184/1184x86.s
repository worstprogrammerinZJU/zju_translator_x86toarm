	.text
	.p2align	4, 0x90                         # -- Begin function _get_job_hash_index
_get_job_hash_index:                    # @_get_job_hash_index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	all_jobs_cap(%rip)
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	all_jobs_cap
	.p2align	2
all_jobs_cap:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _get_job_hash_index
	.addrsig_sym all_jobs_cap