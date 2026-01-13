	.text
	.p2align	2                               // -- Begin function skipchecks
	.type	skipchecks,@function
skipchecks:                             // @skipchecks
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	str	wzr, [sp, #16]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	add	x0, x8, x9, lsl #2
	bl	ischeck
	cbz	x0, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	add	x0, x8, x9, lsl #2
	bl	op_step
	str	w0, [sp, #12]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	adrp	x9, MAXOFF
	ldr	w9, [x9, :lo12:MAXOFF]
	ldur	w10, [x29, #-12]
	subs	w9, w9, w10
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	add	x0, x8, x9, lsl #2
	bl	sizei
	ldrsw	x8, [sp, #20]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_6:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	skipchecks, .Lfunc_end0-skipchecks
                                        // -- End function
	.type	MAXOFF,@object                  // @MAXOFF
	.bss
	.globl	MAXOFF
	.p2align	2
MAXOFF:
	.word	0                               // 0x0
	.size	MAXOFF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skipchecks
	.addrsig_sym ischeck
	.addrsig_sym op_step
	.addrsig_sym sizei
	.addrsig_sym MAXOFF