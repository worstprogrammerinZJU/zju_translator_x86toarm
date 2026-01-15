	.text
	.globl	jv_object_get                   // -- Begin function jv_object_get
	.p2align	2
	.type	jv_object_get,@function
jv_object_get:                          // @jv_object_get
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	jvp_object_read
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_copy
	str	w0, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	bl	jv_invalid
	str	w0, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_object_get, .Lfunc_end0-jv_object_get
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.word	0                               // 0x0
	.size	JV_KIND_OBJECT, 4
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_read
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING