	.text
	.globl	jv_object_iter_next             // -- Begin function jv_object_iter_next
	.p2align	2
	.type	jv_object_iter_next,@function
jv_object_iter_next:                    // @jv_object_iter_next
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w8, [x29, #-12]
	adrp	x9, ITER_FINISHED
	ldr	w9, [x9, :lo12:ITER_FINISHED]
	subs	w8, w8, w9
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jvp_object_size
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.lt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, ITER_FINISHED
	ldr	w8, [x8, :lo12:ITER_FINISHED]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	jvp_object_get_slot
	str	x0, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.eq	.LBB0_1
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	jvp_object_get_slot
	ldr	w0, [x0]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_object_iter_next, .Lfunc_end0-jv_object_iter_next
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.word	0                               // 0x0
	.size	JV_KIND_OBJECT, 4
	.type	ITER_FINISHED,@object           // @ITER_FINISHED
	.globl	ITER_FINISHED
	.p2align	2
ITER_FINISHED:
	.word	0                               // 0x0
	.size	ITER_FINISHED, 4
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym ITER_FINISHED
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_STRING