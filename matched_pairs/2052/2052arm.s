	.text
	.p2align	2                               // -- Begin function next_awaited_job
	.type	next_awaited_job,@function
next_awaited_job:                       // @next_awaited_job
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, tubes
	add	x8, x8, :lo12:tubes
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	stur	xzr, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	adrp	x9, tubes
	ldr	x9, [x9, :lo12:tubes]
	subs	x8, x8, x9
	b.hs	.LBB0_14
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	str	xzr, [x8, #32]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_12
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_12
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	bl	job_pri_less
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	.LBB0_1
.LBB0_14:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	next_awaited_job, .Lfunc_end0-next_awaited_job
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
	.addrsig_sym next_awaited_job
	.addrsig_sym job_pri_less
	.addrsig_sym tubes