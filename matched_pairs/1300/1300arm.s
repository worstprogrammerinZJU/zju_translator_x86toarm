	.text
	.p2align	2                               // -- Begin function jvp_object_unshare
	.type	jvp_object_unshare,@function
jvp_object_unshare:                     // @jvp_object_unshare
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	mov	w8, w0
	stur	w8, [x29, #-8]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	ldur	w8, [x29, #-8]
	mov	w0, w8
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jvp_refcnt_unshared
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldur	w8, [x29, #-8]
	mov	w0, w8
	bl	jvp_object_size
	bl	jvp_object_new
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-8]
	mov	w0, w8
	bl	jvp_object_ptr
	ldr	w8, [x0]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-12]
	mov	w0, w8
	bl	jvp_object_ptr
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	str	w8, [x0]
	stur	wzr, [x29, #-16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-12]
	mov	w0, w8
	bl	jvp_object_size
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w1, [x29, #-16]
	ldur	w8, [x29, #-8]
	mov	w0, w8
	bl	jvp_object_get_slot
	stur	x0, [x29, #-24]
	ldur	w1, [x29, #-16]
	ldur	w8, [x29, #-12]
	mov	w0, w8
	bl	jvp_object_get_slot
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	ldr	q0, [x9]
	str	q0, [x8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	bl	jv_copy
	ldur	x8, [x29, #-32]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	bl	jv_copy
	ldur	x8, [x29, #-32]
	str	x0, [x8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_3
.LBB0_8:
	ldur	w8, [x29, #-8]
	mov	w0, w8
	bl	jvp_object_buckets
	str	x0, [sp, #40]
	ldur	w8, [x29, #-12]
	mov	w0, w8
	bl	jvp_object_buckets
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	mov	w0, w8
	bl	jvp_object_size
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x9, w8
	mov	x8, #4
	mul	x8, x8, x9
	lsl	x8, x8, #1
	mov	w2, w8
	bl	memcpy
	ldur	w8, [x29, #-8]
	mov	w0, w8
	bl	jvp_object_free
	ldur	w0, [x29, #-12]
	bl	jvp_refcnt_unshared
	bl	assert
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	jvp_object_unshare, .Lfunc_end0-jvp_object_unshare
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
	.addrsig_sym jvp_object_unshare
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_refcnt_unshared
	.addrsig_sym jvp_object_new
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_ptr
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_copy
	.addrsig_sym jvp_object_buckets
	.addrsig_sym memcpy
	.addrsig_sym jvp_object_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_NULL