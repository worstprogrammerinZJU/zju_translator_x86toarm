	.text
	.p2align	2                               // -- Begin function read_typeof
	.type	read_typeof,@function
read_typeof:                            // @read_typeof
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #40
	bl	expect
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	read_cast_type
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	bl	read_comma_expr
	ldr	x8, [x0]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #8]
	mov	w0, #41
	bl	expect
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_typeof, .Lfunc_end0-read_typeof
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_typeof
	.addrsig_sym expect
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym read_comma_expr