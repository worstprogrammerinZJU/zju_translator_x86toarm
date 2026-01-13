	.text
	.globl	jv_group                        // -- Begin function jv_group
	.p2align	2
	.type	jv_group,@function
jv_group:                               // @jv_group
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
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
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	mov	w8, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
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
	stur	x0, [x29, #-24]
	bl	jv_array
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_9
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #4]
	str	w8, [sp, #32]
	bl	jv_array
	ldur	x8, [x29, #-24]
	ldr	w1, [x8]
	bl	jv_array_append
	str	w0, [sp, #28]
	mov	w8, #1
	str	w8, [sp, #24]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w0, [sp, #32]
	bl	jv_copy
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	ldr	w0, [x8, #4]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_equal
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	ldr	w0, [x8, #4]
	bl	jv_free
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w0, [sp, #32]
	bl	jv_free
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	ldr	w8, [x8, #4]
	str	w8, [sp, #32]
	ldur	w0, [x29, #-28]
	ldr	w1, [sp, #28]
	bl	jv_array_append
	stur	w0, [x29, #-28]
	bl	jv_array
	str	w0, [sp, #28]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w0, [sp, #28]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	lsl	x9, x9, #3
	ldr	w1, [x8, x9]
	bl	jv_array_append
	str	w0, [sp, #28]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_2
.LBB0_8:
	ldr	w0, [sp, #32]
	bl	jv_free
	ldur	w0, [x29, #-28]
	ldr	w1, [sp, #28]
	bl	jv_array_append
	stur	w0, [x29, #-28]
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-24]
	bl	jv_mem_free
	ldur	w0, [x29, #-28]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jv_group, .Lfunc_end0-jv_group
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
	.addrsig_sym jv_array_append
	.addrsig_sym jv_equal
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_ARRAY