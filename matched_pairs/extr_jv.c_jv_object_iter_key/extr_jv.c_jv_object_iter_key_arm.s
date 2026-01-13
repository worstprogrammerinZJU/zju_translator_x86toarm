	.text
	.globl	jv_object_iter_key              // -- Begin function jv_object_iter_key
	.p2align	2
	.type	jv_object_iter_key,@function
jv_object_iter_key:                     // @jv_object_iter_key
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	jvp_object_get_slot
	ldr	w8, [x0]
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	w0, [sp, #4]
	bl	jv_copy
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_object_iter_key, .Lfunc_end0-jv_object_iter_key
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_copy
	.addrsig_sym JV_KIND_STRING