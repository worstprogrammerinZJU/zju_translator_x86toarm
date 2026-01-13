	.text
	.p2align	2                               // -- Begin function emit_data_charptr
	.type	emit_data_charptr,@function
emit_data_charptr:                      // @emit_data_charptr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	make_label
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	add	w1, w8, #1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	emit
	ldr	x0, [sp, #8]
	bl	emit_label
	ldur	x0, [x29, #-8]
	bl	quote_cstring
	mov	x1, x0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]
	bl	emit
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_data_charptr, .Lfunc_end0-emit_data_charptr
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".data %d"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	".string \"%s\""
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	".quad %s"
	.size	.L.str.2, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data_charptr
	.addrsig_sym make_label
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym quote_cstring