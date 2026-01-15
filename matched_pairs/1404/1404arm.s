	.text
	.globl	jvp_utf8_is_valid               // -- Begin function jvp_utf8_is_valid
	.p2align	2
	.type	jvp_utf8_is_valid,@function
jvp_utf8_is_valid:                      // @jvp_utf8_is_valid
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	add	x2, sp, #4
	bl	jvp_utf8_next
	str	x0, [sp, #16]
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_5:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_utf8_is_valid, .Lfunc_end0-jvp_utf8_is_valid
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_next