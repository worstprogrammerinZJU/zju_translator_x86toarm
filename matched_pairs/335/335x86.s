	.text
	.globl	count_cur_conns                 # -- Begin function count_cur_conns
	.p2align	4, 0x90
count_cur_conns:                        # @count_cur_conns
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	cur_conn_ct(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cur_conn_ct
	.p2align	2
cur_conn_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cur_conn_ct