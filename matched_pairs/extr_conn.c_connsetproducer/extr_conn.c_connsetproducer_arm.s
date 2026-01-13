	.text
	.globl	connsetproducer                 // -- Begin function connsetproducer
	.p2align	2
	.type	connsetproducer,@function
connsetproducer:                        // @connsetproducer
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, CONN_TYPE_PRODUCER
	ldr	w9, [x9, :lo12:CONN_TYPE_PRODUCER]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	adrp	x8, CONN_TYPE_PRODUCER
	ldr	w10, [x8, :lo12:CONN_TYPE_PRODUCER]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	adrp	x9, cur_producer_ct
	ldr	w8, [x9, :lo12:cur_producer_ct]
	add	w8, w8, #1
	str	w8, [x9, :lo12:cur_producer_ct]
	b	.LBB0_3
.LBB0_3:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	connsetproducer, .Lfunc_end0-connsetproducer
                                        // -- End function
	.type	CONN_TYPE_PRODUCER,@object      // @CONN_TYPE_PRODUCER
	.bss
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CONN_TYPE_PRODUCER
	.addrsig_sym cur_producer_ct