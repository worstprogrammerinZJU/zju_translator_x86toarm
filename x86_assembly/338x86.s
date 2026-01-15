	.text
	.globl	count_tot_conns                 # -- Begin function count_tot_conns
	.p2align	4, 0x90
count_tot_conns:                        # @count_tot_conns
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	tot_conn_ct(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tot_conn_ct
	.p2align	2
tot_conn_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tot_conn_ct