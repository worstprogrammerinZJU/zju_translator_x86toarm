	.text
	.p2align	2                               // -- Begin function minmax_by
	.type	minmax_by,@function
minmax_by:                              // @minmax_by
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_2:
	ldur	w0, [x29, #-12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_4:
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_copy
	bl	jv_array_length
	mov	w8, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w0, w8
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_6:
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldur	w0, [x29, #-12]
	bl	jv_free
	bl	jv_null
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_8:
	ldur	w0, [x29, #-8]
	bl	jv_copy
	mov	w1, wzr
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	jv_array_get
	stur	w0, [x29, #-20]
	ldur	w0, [x29, #-12]
	bl	jv_copy
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	bl	jv_array_get
	stur	w0, [x29, #-24]
	mov	w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	bl	jv_array_length
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_15
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w0, [x29, #-12]
	bl	jv_copy
	ldur	w1, [x29, #-28]
	bl	jv_array_get
	str	w0, [sp, #32]
	ldr	w0, [sp, #32]
	bl	jv_copy
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_cmp
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, lt
	and	w8, w8, #0x1
	ldur	w9, [x29, #-16]
	subs	w9, w9, #1
	cset	w9, eq
	and	w9, w9, #0x1
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldr	w8, [sp, #32]
	stur	w8, [x29, #-24]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_copy
	ldur	w1, [x29, #-28]
	bl	jv_array_get
	stur	w0, [x29, #-20]
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w0, [sp, #32]
	bl	jv_free
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_9
.LBB0_15:
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	minmax_by, .Lfunc_end0-minmax_by
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be iterated over"
	.size	.L.str, 24
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"have wrong length"
	.size	.L.str.1, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym minmax_by
	.addrsig_sym jv_get_kind
	.addrsig_sym type_error2
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_null
	.addrsig_sym jv_array_get
	.addrsig_sym jv_cmp
	.addrsig_sym JV_KIND_ARRAY