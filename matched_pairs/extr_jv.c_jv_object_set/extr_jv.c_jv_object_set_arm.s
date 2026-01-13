	.text
	.globl	jv_object_set                   // -- Begin function jv_object_set
	.p2align	2
	.type	jv_object_set,@function
jv_object_set:                          // @jv_object_set
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sub	x8, x29, #4
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
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
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-8]
	bl	jvp_object_write
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_free
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_object_set, .Lfunc_end0-jv_object_set
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
	.addrsig_sym jvp_object_write
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING