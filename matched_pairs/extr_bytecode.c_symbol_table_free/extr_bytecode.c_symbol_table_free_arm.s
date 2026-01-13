	.text
	.p2align	2                               // -- Begin function symbol_table_free
	.type	symbol_table_free,@function
symbol_table_free:                      // @symbol_table_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	jv_mem_free
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_free
	ldr	x0, [sp, #8]
	bl	jv_mem_free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	symbol_table_free, .Lfunc_end0-symbol_table_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym symbol_table_free
	.addrsig_sym jv_mem_free
	.addrsig_sym jv_free