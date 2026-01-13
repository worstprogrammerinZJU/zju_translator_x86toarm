	.text
	.globl	count_tot_conns                 // -- Begin function count_tot_conns
	.p2align	2
	.type	count_tot_conns,@function
count_tot_conns:                        // @count_tot_conns
// %bb.0:
	adrp	x8, tot_conn_ct
	ldr	w0, [x8, :lo12:tot_conn_ct]
	ret
.Lfunc_end0:
	.size	count_tot_conns, .Lfunc_end0-count_tot_conns
                                        // -- End function
	.type	tot_conn_ct,@object             // @tot_conn_ct
	.bss
	.globl	tot_conn_ct
	.p2align	2
tot_conn_ct:
	.word	0                               // 0x0
	.size	tot_conn_ct, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tot_conn_ct