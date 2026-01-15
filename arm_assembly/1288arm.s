	.text
	.p2align	2                               // -- Begin function jvp_object_equal
	.type	jvp_object_equal,@function
jvp_object_equal:                       // @jvp_object_equal
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	jvp_object_length
	stur	w0, [x29, #-16]
	stur	wzr, [x29, #-20]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jvp_object_size
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-8]
	ldr	w1, [sp, #24]
	bl	jvp_object_get_slot
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-12]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #4]
	bl	jvp_object_read
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_copy
	str	w0, [sp]                        // 4-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	jv_equal
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_10:
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_object_equal, .Lfunc_end0-jvp_object_equal
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
	.addrsig_sym jvp_object_equal
	.addrsig_sym jvp_object_length
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym jvp_object_read
	.addrsig_sym jv_equal
	.addrsig_sym jv_copy
	.addrsig_sym JV_KIND_NULL