	.text
	.globl	to_utf16                        // -- Begin function to_utf16
	.p2align	2
	.type	to_utf16,@function
to_utf16:                               // @to_utf16
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	make_buffer
	str	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	add	x0, sp, #12
	bl	read_rune
	ldur	x8, [x29, #-8]
	add	x8, x8, w0, sxtw
	stur	x8, [x29, #-8]
	ldr	w8, [sp, #12]
	subs	w8, w8, #16, lsl #12            // =65536
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #12]
	bl	write16
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	ldr	w9, [sp, #12]
	mov	w8, #55232
	add	w1, w8, w9, asr #10
	bl	write16
	ldr	x0, [sp, #24]
	ldr	w8, [sp, #12]
	and	w8, w8, #0x3ff
	mov	w9, #56320
	add	w1, w8, w9
	bl	write16
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	to_utf16, .Lfunc_end0-to_utf16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_buffer
	.addrsig_sym read_rune
	.addrsig_sym write16