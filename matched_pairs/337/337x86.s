	.text
	.globl	count_cur_workers               # -- Begin function count_cur_workers
	.p2align	4, 0x90
count_cur_workers:                      # @count_cur_workers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	cur_worker_ct(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cur_worker_ct
	.p2align	2
cur_worker_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cur_worker_ct