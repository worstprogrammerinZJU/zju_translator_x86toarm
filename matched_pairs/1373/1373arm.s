	.text
	.p2align	2                               // -- Begin function parse_check_done
	.type	parse_check_done,@function
parse_check_done:                       // @parse_check_done
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	jv_is_valid
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	bl	jv_invalid
	ldr	x8, [sp, #16]
	str	w0, [x8, #8]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_check_done, .Lfunc_end0-parse_check_done
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_check_done
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_invalid