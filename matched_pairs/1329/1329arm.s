	.text
	.p2align	2                               // -- Begin function delpaths_sorted
	.type	delpaths_sorted,@function
delpaths_sorted:                        // @delpaths_sorted
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	bl	jv_array
	stur	w0, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-20]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_21
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-24]
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldur	w1, [x29, #-20]
	bl	jv_array_get
	bl	jv_array_length
	ldur	w8, [x29, #-12]
	subs	w8, w0, w8
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldur	w1, [x29, #-20]
	bl	jv_array_get
	bl	jv_array_length
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	subs	w8, w0, w8
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-28]
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldur	w1, [x29, #-20]
	bl	jv_array_get
	ldur	w1, [x29, #-12]
	bl	jv_array_get
	str	w0, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-24]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	mov	w8, #0
	subs	w9, w9, w0
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w0, [sp, #32]
	bl	jv_copy
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldur	w1, [x29, #-24]
	bl	jv_array_get
	ldur	w1, [x29, #-12]
	bl	jv_array_get
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_equal
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_3
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-16]
	ldr	w1, [sp, #32]
	bl	jv_array_append
	stur	w0, [x29, #-16]
	b	.LBB0_20
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	bl	jv_copy
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #32]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_get
	str	w0, [sp, #28]
	ldr	w0, [sp, #28]
	bl	jv_is_valid
	cbnz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	w0, [sp, #32]
	bl	jv_free
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #28]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #32]
	bl	jv_free
	ldr	w0, [sp, #28]
	bl	jv_free
	b	.LBB0_16
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldur	w1, [x29, #-20]
	ldur	w2, [x29, #-24]
	bl	jv_array_slice
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldur	w8, [x29, #-12]
	add	w2, w8, #1
	bl	delpaths_sorted
	str	w0, [sp, #24]
	ldr	w0, [sp, #24]
	bl	jv_is_valid
	cbnz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	w0, [sp, #32]
	bl	jv_free
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #32]
	ldr	w2, [sp, #24]
	bl	jv_set
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	bl	jv_is_valid
	cbnz	x0, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_21
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_21:
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldur	w0, [x29, #-4]
	bl	jv_is_valid
	cbz	x0, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-16]
	bl	jv_dels
	stur	w0, [x29, #-4]
	b	.LBB0_24
.LBB0_23:
	ldur	w0, [x29, #-16]
	bl	jv_free
	b	.LBB0_24
.LBB0_24:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	delpaths_sorted, .Lfunc_end0-delpaths_sorted
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym delpaths_sorted
	.addrsig_sym jv_array
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym assert
	.addrsig_sym jv_array_get
	.addrsig_sym jv_equal
	.addrsig_sym jv_array_append
	.addrsig_sym jv_get
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_set
	.addrsig_sym jv_dels
	.addrsig_sym JV_KIND_NULL