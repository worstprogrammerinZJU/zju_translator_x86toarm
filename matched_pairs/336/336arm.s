	.text
	.globl	count_cur_producers             // -- Begin function count_cur_producers
	.p2align	2
	.type	count_cur_producers,@function
count_cur_producers:                    // @count_cur_producers
// %bb.0:
	adrp	x8, cur_producer_ct
	ldr	w0, [x8, :lo12:cur_producer_ct]
	ret
.Lfunc_end0:
	.size	count_cur_producers, .Lfunc_end0-count_cur_producers
                                        // -- End function
	.type	cur_producer_ct,@object         // @cur_producer_ct
	.bss
	.globl	cur_producer_ct
	.p2align	2
cur_producer_ct:
	.word	0                               // 0x0
	.size	cur_producer_ct, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cur_producer_ct