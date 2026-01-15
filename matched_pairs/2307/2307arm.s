	.text
	.p2align	2                               // -- Begin function stbi__end_write_file
	.type	stbi__end_write_file,@function
stbi__end_write_file:                   // @stbi__end_write_file
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	fclose
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__end_write_file, .Lfunc_end0-stbi__end_write_file
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__end_write_file
	.addrsig_sym fclose