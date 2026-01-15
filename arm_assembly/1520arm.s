	.text
	.p2align	2                               // -- Begin function path_is_relative
	.type	path_is_relative,@function
path_is_relative:                       // @path_is_relative
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	subs	w8, w8, #47
	cset	w8, ne
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	path_is_relative, .Lfunc_end0-path_is_relative
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym path_is_relative
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free