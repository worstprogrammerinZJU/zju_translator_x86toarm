	.text
	.p2align	2                               // -- Begin function jvp_object_delete
	.type	jvp_object_delete,@function
jvp_object_delete:                      // @jvp_object_delete
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w0, [x29, #-20]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	bl	jvp_object_unshare
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldur	w1, [x29, #-20]
	bl	jvp_object_find_bucket
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #24]
	ldur	w0, [x29, #-20]
	bl	jvp_string_hash
	str	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldr	x8, [sp, #32]
	ldr	w1, [x8]
	bl	jvp_object_get_slot
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-20]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #16]
	bl	jvp_string_equal
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	bl	jvp_string_free
	adrp	x8, JV_NULL
	ldr	w8, [x8, :lo12:JV_NULL]
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #12]
	bl	jv_free
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #24]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldr	x1, [sp, #8]
	bl	jvp_object_next_slot
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_object_delete, .Lfunc_end0-jvp_object_delete
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.type	JV_NULL,@object                 // @JV_NULL
	.globl	JV_NULL
	.p2align	2
JV_NULL:
	.word	0                               // 0x0
	.size	JV_NULL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_delete
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_unshare
	.addrsig_sym jvp_object_find_bucket
	.addrsig_sym jvp_string_hash
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jvp_string_equal
	.addrsig_sym jvp_string_free
	.addrsig_sym jv_free
	.addrsig_sym jvp_object_next_slot
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_NULL