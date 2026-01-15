	.text
	.globl	option_find_float_quiet         // -- Begin function option_find_float_quiet
	.p2align	2
	.type	option_find_float_quiet,@function
option_find_float_quiet:                // @option_find_float_quiet
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	s0, [sp, #20]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	option_find
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	atof
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	option_find_float_quiet, .Lfunc_end0-option_find_float_quiet
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atof