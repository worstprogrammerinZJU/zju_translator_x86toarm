	.text
	.globl	jv_array_length                 // -- Begin function jv_array_length
	.p2align	2
	.type	jv_array_length,@function
jv_array_length:                        // @jv_array_length
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jvp_array_length
	str	w0, [sp, #8]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_array_length, .Lfunc_end0-jv_array_length
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY