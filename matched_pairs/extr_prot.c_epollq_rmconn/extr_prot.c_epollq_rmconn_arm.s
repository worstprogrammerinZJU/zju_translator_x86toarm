	.text
	.p2align	2                               // -- Begin function epollq_rmconn
	.type	epollq_rmconn,@function
epollq_rmconn:                          // @epollq_rmconn
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, epollq
	ldr	x8, [x8, :lo12:epollq]
	cbz	x8, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, epollq
	ldr	x8, [x9, :lo12:epollq]
	str	x8, [sp, #16]
	ldr	x8, [x9, :lo12:epollq]
	ldr	x8, [x8]
	str	x8, [x9, :lo12:epollq]
	ldr	x8, [sp, #16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_5:
	ldr	x8, [sp, #8]
	adrp	x9, epollq
	str	x8, [x9, :lo12:epollq]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	epollq_rmconn, .Lfunc_end0-epollq_rmconn
                                        // -- End function
	.type	epollq,@object                  // @epollq
	.bss
	.globl	epollq
	.p2align	3
epollq:
	.xword	0
	.size	epollq, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epollq_rmconn
	.addrsig_sym epollq