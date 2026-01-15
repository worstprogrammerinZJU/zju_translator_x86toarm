	.text
	.p2align	2                               // -- Begin function f_debug
	.type	f_debug,@function
f_debug:                                // @f_debug
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	add	x1, sp, #24
	add	x2, sp, #16
	bl	jq_get_debug_cb
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_copy
	ldr	x8, [sp]                        // 8-byte Folded Reload
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	blr	x8
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_debug, .Lfunc_end0-f_debug
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_debug
	.addrsig_sym jq_get_debug_cb
	.addrsig_sym jv_copy