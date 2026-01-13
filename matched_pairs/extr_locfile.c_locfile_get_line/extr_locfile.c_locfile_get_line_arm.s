	.text
	.globl	locfile_get_line                // -- Begin function locfile_get_line
	.p2align	2
	.type	locfile_get_line,@function
locfile_get_line:                       // @locfile_get_line
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	mov	w9, #1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_3:
	ldr	w8, [sp, #16]
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #16]
	subs	w0, w8, #1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	locfile_get_line, .Lfunc_end0-locfile_get_line
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert