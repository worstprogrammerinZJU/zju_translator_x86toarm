	.text
	.globl	count_cur_workers               // -- Begin function count_cur_workers
	.p2align	2
	.type	count_cur_workers,@function
count_cur_workers:                      // @count_cur_workers
// %bb.0:
	adrp	x8, cur_worker_ct
	ldr	w0, [x8, :lo12:cur_worker_ct]
	ret
.Lfunc_end0:
	.size	count_cur_workers, .Lfunc_end0-count_cur_workers
                                        // -- End function
	.type	cur_worker_ct,@object           // @cur_worker_ct
	.bss
	.globl	cur_worker_ct
	.p2align	2
cur_worker_ct:
	.word	0                               // 0x0
	.size	cur_worker_ct, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cur_worker_ct