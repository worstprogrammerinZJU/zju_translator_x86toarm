	.text
	.globl	spiGetBitOrder                  // -- Begin function spiGetBitOrder
	.p2align	2
	.type	spiGetBitOrder,@function
spiGetBitOrder:                         // @spiGetBitOrder
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	w9, [x9, #4]
	orr	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	spiGetBitOrder, .Lfunc_end0-spiGetBitOrder
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig