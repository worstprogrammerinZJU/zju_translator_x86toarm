	.text
	.globl	jv_number_get_literal           // -- Begin function jv_number_get_literal
	.p2align	2
	.type	jv_number_get_literal,@function
jv_number_get_literal:                  // @jv_number_get_literal
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	adrp	x8, JV_KIND_NUMBER
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	w0, [sp, #4]
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #4]
	bl	jvp_literal_number_literal
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_number_get_literal, .Lfunc_end0-jv_number_get_literal
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.word	0                               // 0x0
	.size	JV_KIND_NUMBER, 4
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_literal_number_literal
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL