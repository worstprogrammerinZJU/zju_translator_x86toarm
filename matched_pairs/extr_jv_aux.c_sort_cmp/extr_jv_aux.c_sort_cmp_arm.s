	.text
	.p2align	2                               // -- Begin function sort_cmp
	.type	sort_cmp,@function
sort_cmp:                               // @sort_cmp
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #4]
	bl	jv_copy
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_cmp
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	sort_cmp, .Lfunc_end0-sort_cmp
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sort_cmp
	.addrsig_sym jv_cmp
	.addrsig_sym jv_copy