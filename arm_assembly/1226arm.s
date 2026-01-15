	.text
	.globl	jv_invalid_has_msg              // -- Begin function jv_invalid_has_msg
	.p2align	2
	.type	jv_invalid_has_msg,@function
jv_invalid_has_msg:                     // @jv_invalid_has_msg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_INVALID
	ldr	w1, [x8, :lo12:JV_KIND_INVALID]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	adrp	x8, JVP_FLAGS_INVALID_MSG
	ldr	w1, [x8, :lo12:JVP_FLAGS_INVALID_MSG]
	bl	JVP_HAS_FLAGS
	str	w0, [sp, #8]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_invalid_has_msg, .Lfunc_end0-jv_invalid_has_msg
                                        // -- End function
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.bss
	.globl	JV_KIND_INVALID
	.p2align	2
JV_KIND_INVALID:
	.word	0                               // 0x0
	.size	JV_KIND_INVALID, 4
	.type	JVP_FLAGS_INVALID_MSG,@object   // @JVP_FLAGS_INVALID_MSG
	.globl	JVP_FLAGS_INVALID_MSG
	.p2align	2
JVP_FLAGS_INVALID_MSG:
	.word	0                               // 0x0
	.size	JVP_FLAGS_INVALID_MSG, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JVP_FLAGS_INVALID_MSG