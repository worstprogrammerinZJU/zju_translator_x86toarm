	.text
	.p2align	2                               // -- Begin function jvp_string_remaining_space
	.type	jvp_string_remaining_space,@function
jvp_string_remaining_space:             // @jvp_string_remaining_space
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	jvp_string_length
	ldr	x8, [sp]                        // 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	jvp_string_length
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	subs	x8, x8, x0
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_string_remaining_space, .Lfunc_end0-jvp_string_remaining_space
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_remaining_space
	.addrsig_sym assert
	.addrsig_sym jvp_string_length