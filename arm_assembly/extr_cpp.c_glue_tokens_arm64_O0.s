	.text
	.p2align	2                               // -- Begin function glue_tokens
	.type	glue_tokens,@function
glue_tokens:                            // @glue_tokens
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	make_buffer
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	buf_printf
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	tok2s
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	buf_printf
	ldur	x0, [x29, #-24]
	bl	buf_body
	bl	lex_string
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	glue_tokens, .Lfunc_end0-glue_tokens
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym glue_tokens
	.addrsig_sym make_buffer
	.addrsig_sym buf_printf
	.addrsig_sym tok2s
	.addrsig_sym lex_string
	.addrsig_sym buf_body