	.text
	.globl	jv_parser_remaining             // -- Begin function jv_parser_remaining
	.p2align	2
	.type	jv_parser_remaining,@function
jv_parser_remaining:                    // @jv_parser_remaining
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	ldr	x9, [sp]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jv_parser_remaining, .Lfunc_end0-jv_parser_remaining
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig