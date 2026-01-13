	.text
	.globl	jv_string_length_bytes          // -- Begin function jv_string_length_bytes
	.p2align	2
	.type	jv_string_length_bytes,@function
jv_string_length_bytes:                 // @jv_string_length_bytes
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jvp_string_ptr
	bl	jvp_string_length
	str	w0, [sp, #8]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_string_length_bytes, .Lfunc_end0-jv_string_length_bytes
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
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_string_length
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING