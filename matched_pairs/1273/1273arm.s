	.text
	.p2align	2                               // -- Begin function jvp_dec_number_ptr
	.type	jvp_dec_number_ptr,@function
jvp_dec_number_ptr:                     // @jvp_dec_number_ptr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	ldr	x0, [sp, #8]
	bl	JVP_HAS_FLAGS
	bl	assert
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_dec_number_ptr, .Lfunc_end0-jvp_dec_number_ptr
                                        // -- End function
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.bss
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL