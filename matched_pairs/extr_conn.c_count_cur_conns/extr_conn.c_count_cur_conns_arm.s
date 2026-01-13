	.text
	.globl	count_cur_conns                 // -- Begin function count_cur_conns
	.p2align	2
	.type	count_cur_conns,@function
count_cur_conns:                        // @count_cur_conns
// %bb.0:
	adrp	x8, cur_conn_ct
	ldr	w0, [x8, :lo12:cur_conn_ct]
	ret
.Lfunc_end0:
	.size	count_cur_conns, .Lfunc_end0-count_cur_conns
                                        // -- End function
	.type	cur_conn_ct,@object             // @cur_conn_ct
	.bss
	.globl	cur_conn_ct
	.p2align	2
cur_conn_ct:
	.word	0                               // 0x0
	.size	cur_conn_ct, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cur_conn_ct