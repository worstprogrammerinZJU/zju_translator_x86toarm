	.text
	.p2align	2                               // -- Begin function isheadfail
	.type	isheadfail,@function
isheadfail:                             // @isheadfail
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	ischeck
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldr	x0, [sp]
	bl	sizei
	ldr	x8, [sp]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, IEnd
	ldr	x9, [x9, :lo12:IEnd]
	subs	x8, x8, x9
	b.eq	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp]
	bl	isnofail
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp]
	bl	sizei
	ldr	x8, [sp]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp]
	b	.LBB0_3
.LBB0_8:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	isheadfail, .Lfunc_end0-isheadfail
                                        // -- End function
	.type	IEnd,@object                    // @IEnd
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.xword	0                               // 0x0
	.size	IEnd, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isheadfail
	.addrsig_sym ischeck
	.addrsig_sym sizei
	.addrsig_sym isnofail
	.addrsig_sym IEnd