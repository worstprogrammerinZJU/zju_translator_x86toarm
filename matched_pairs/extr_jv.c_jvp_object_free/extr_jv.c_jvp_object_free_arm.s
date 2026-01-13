	.text
	.p2align	2                               // -- Begin function jvp_object_free
	.type	jvp_object_free,@function
jvp_object_free:                        // @jvp_object_free
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w0
	stur	w8, [x29, #-4]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jvp_refcnt_dec
	cbz	x0, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-8]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	jvp_object_size
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w1, [x29, #-8]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	jvp_object_get_slot
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	jvp_string_free
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_free
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_2
.LBB0_7:
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	jvp_object_ptr
	bl	jv_mem_free
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_object_free, .Lfunc_end0-jvp_object_free
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.word	0                               // 0x0
	.size	JV_KIND_OBJECT, 4
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym jvp_string_free
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym jvp_object_ptr
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_NULL