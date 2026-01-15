	.text
	.p2align	2                               // -- Begin function sort_items
	.type	sort_items,@function
sort_items:                             // @sort_items
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_array_length
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	mov	w8, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w0, w8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_array_length
	stur	w0, [x29, #-12]
	ldur	w1, [x29, #-12]
	mov	w0, #24
	bl	jv_mem_calloc
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	bl	jv_copy
	ldr	w1, [sp, #20]
	bl	jv_array_get
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	mov	x10, #24
	str	x10, [sp]                       // 8-byte Folded Spill
	mul	x9, x9, x10
	add	x8, x8, x9
	str	x0, [x8, #16]
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldr	w1, [sp, #20]
	bl	jv_array_get
	ldr	x11, [sp]                       // 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	mul	x9, x9, x11
	add	x8, x8, x9
	str	x0, [x8, #8]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #20]
	mul	x10, x10, x11
	str	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	x0, [sp, #24]
	ldur	w1, [x29, #-12]
	adrp	x8, sort_cmp
	ldr	w3, [x8, :lo12:sort_cmp]
	mov	w2, #24
	bl	qsort
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	sort_items, .Lfunc_end0-sort_items
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	sort_cmp,@object                // @sort_cmp
	.globl	sort_cmp
	.p2align	2
sort_cmp:
	.word	0                               // 0x0
	.size	sort_cmp, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sort_items
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_array_get
	.addrsig_sym jv_free
	.addrsig_sym qsort
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym sort_cmp