	.text
	.globl	jvp_number_is_nan               // -- Begin function jvp_number_is_nan
	.p2align	2
	.type	jvp_number_is_nan,@function
jvp_number_is_nan:                      // @jvp_number_is_nan
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	adrp	x8, JV_KIND_NUMBER
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	ldr	x0, [sp, #16]
	bl	JVP_HAS_KIND
	bl	assert
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	ldr	x0, [sp, #16]
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	jvp_dec_number_ptr
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	decNumberIsNaN
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w8, ne
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_number_is_nan, .Lfunc_end0-jvp_number_is_nan
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
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym decNumberIsNaN
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL