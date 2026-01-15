	.text
	.globl	count_cur_producers             # -- Begin function count_cur_producers
	.p2align	4, 0x90
count_cur_producers:                    # @count_cur_producers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	cur_producer_ct(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cur_producer_ct
	.p2align	2
cur_producer_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cur_producer_ct