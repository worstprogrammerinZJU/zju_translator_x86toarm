	.text
	.globl	connclose                       // -- Begin function connclose
	.p2align	2
	.type	connclose,@function
connclose:                              // @connclose
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #72
	mov	w1, wzr
	bl	sockwant
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #72]
	bl	close
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #72]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #64]
	bl	job_free
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	cbz	x8, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	adrp	x9, Copy
	ldr	x9, [x9, :lo12:Copy]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	job_free
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #64]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, CONN_TYPE_PRODUCER
	ldr	w9, [x9, :lo12:CONN_TYPE_PRODUCER]
	and	w8, w8, w9
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x9, cur_producer_ct
	ldr	w8, [x9, :lo12:cur_producer_ct]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:cur_producer_ct]
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, CONN_TYPE_WORKER
	ldr	w9, [x9, :lo12:CONN_TYPE_WORKER]
	and	w8, w8, w9
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x9, cur_worker_ct
	ldr	w8, [x9, :lo12:cur_worker_ct]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:cur_worker_ct]
	b	.LBB0_9
.LBB0_9:
	adrp	x9, cur_conn_ct
	ldr	w8, [x9, :lo12:cur_conn_ct]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:cur_conn_ct]
	ldr	x0, [sp, #8]
	bl	remove_waiting_conn
	ldr	x0, [sp, #8]
	bl	has_reserved_job
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #8]
	bl	enqueue_reserved_jobs
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #8]
	add	x0, x8, #40
	bl	ms_clear
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #32]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	mov	x1, xzr
	bl	TUBE_ASSIGN
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #16]
	bl	heapremove
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	connclose, .Lfunc_end0-connclose
                                        // -- End function
	.type	verbose,@object                 // @verbose
	.bss
	.globl	verbose
	.p2align	3
verbose:
	.xword	0                               // 0x0
	.size	verbose, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"close %d\n"
	.size	.L.str, 10
	.type	Copy,@object                    // @Copy
	.bss
	.globl	Copy
	.p2align	3
Copy:
	.xword	0                               // 0x0
	.size	Copy, 8
	.type	CONN_TYPE_PRODUCER,@object      // @CONN_TYPE_PRODUCER
	.globl	CONN_TYPE_PRODUCER
	.p2align	2
CONN_TYPE_PRODUCER:
	.word	0                               // 0x0
	.size	CONN_TYPE_PRODUCER, 4
	.type	cur_producer_ct,@object         // @cur_producer_ct
	.globl	cur_producer_ct
	.p2align	2
cur_producer_ct:
	.word	0                               // 0x0
	.size	cur_producer_ct, 4
	.type	CONN_TYPE_WORKER,@object        // @CONN_TYPE_WORKER
	.globl	CONN_TYPE_WORKER
	.p2align	2
CONN_TYPE_WORKER:
	.word	0                               // 0x0
	.size	CONN_TYPE_WORKER, 4
	.type	cur_worker_ct,@object           // @cur_worker_ct
	.globl	cur_worker_ct
	.p2align	2
cur_worker_ct:
	.word	0                               // 0x0
	.size	cur_worker_ct, 4
	.type	cur_conn_ct,@object             // @cur_conn_ct
	.globl	cur_conn_ct
	.p2align	2
cur_conn_ct:
	.word	0                               // 0x0
	.size	cur_conn_ct, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sockwant
	.addrsig_sym close
	.addrsig_sym printf
	.addrsig_sym job_free
	.addrsig_sym remove_waiting_conn
	.addrsig_sym has_reserved_job
	.addrsig_sym enqueue_reserved_jobs
	.addrsig_sym ms_clear
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym heapremove
	.addrsig_sym free
	.addrsig_sym verbose
	.addrsig_sym Copy
	.addrsig_sym CONN_TYPE_PRODUCER
	.addrsig_sym cur_producer_ct
	.addrsig_sym CONN_TYPE_WORKER
	.addrsig_sym cur_worker_ct
	.addrsig_sym cur_conn_ct