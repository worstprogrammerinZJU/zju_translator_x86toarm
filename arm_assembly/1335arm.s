	.text
	.globl	jv_sort                         // -- Begin function jv_sort
	.p2align	2
	.type	jv_sort,@function
jv_sort:                                // @jv_sort
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_array_length
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	mov	w8, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w0, w8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_array_length
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	sort_items
	str	x0, [sp, #24]
	bl	jv_array
	str	w0, [sp, #20]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	ldr	w0, [x8, #4]
	bl	jv_free
	ldr	w0, [sp, #20]
	ldr	w1, [sp, #16]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	lsl	x9, x9, #3
	ldr	w2, [x8, x9]
	bl	jv_array_set
	str	w0, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #24]
	bl	jv_mem_free
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_sort, .Lfunc_end0-jv_sort
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym sort_items
	.addrsig_sym jv_array
	.addrsig_sym jv_free
	.addrsig_sym jv_array_set
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_ARRAY