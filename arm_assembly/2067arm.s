	.text
	.p2align	2                               // -- Begin function soonest_delayed_job
	.type	soonest_delayed_job,@function
soonest_delayed_job:                    // @soonest_delayed_job
// %bb.0:
	sub	sp, sp, #48
	adrp	x8, tubes
	add	x8, x8, :lo12:tubes
	str	x8, [sp, #8]                    // 8-byte Folded Spill
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	str	xzr, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	adrp	x9, tubes
	ldr	x9, [x9, :lo12:tubes]
	subs	x8, x8, x9
	b.hs	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #32]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #40]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	str	x8, [sp, #40]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_9:
	ldr	x0, [sp, #40]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	soonest_delayed_job, .Lfunc_end0-soonest_delayed_job
                                        // -- End function
	.type	tubes,@object                   // @tubes
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.size	tubes, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym soonest_delayed_job
	.addrsig_sym tubes