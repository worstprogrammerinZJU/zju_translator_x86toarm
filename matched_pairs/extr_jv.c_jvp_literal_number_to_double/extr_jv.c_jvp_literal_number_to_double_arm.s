	.text
	.p2align	2                               // -- Begin function jvp_literal_number_to_double
	.type	jvp_literal_number_to_double,@function
jvp_literal_number_to_double:           // @jvp_literal_number_to_double
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #80
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	bl	JVP_HAS_FLAGS
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jvp_dec_number_ptr
	stur	x0, [x29, #-16]
	adrp	x8, BIN64_DEC_PRECISION
	ldr	x8, [x8, :lo12:BIN64_DEC_PRECISION]
	adrp	x9, DEC_NUMBER_STRING_GUARD
	ldr	x9, [x9, :lo12:DEC_NUMBER_STRING_GUARD]
	add	x8, x8, x9
	add	x8, x8, #1
	mov	x9, sp
	stur	x9, [x29, #-32]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-56]                 // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-72]                 // 8-byte Folded Spill
	bl	DEC_CONTEXT_TO_DOUBLE
	ldur	x1, [x29, #-72]                 // 8-byte Folded Reload
	mov	w2, w0
	sub	x0, x29, #20
	stur	x0, [x29, #-64]                 // 8-byte Folded Spill
	bl	decNumberReduce
	ldur	x1, [x29, #-56]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-64]                 // 8-byte Folded Reload
	bl	decNumberToString
	bl	tsd_dtoa_context_get
	ldur	x1, [x29, #-56]                 // 8-byte Folded Reload
	sub	x2, x29, #48
	bl	jvp_strtod
	ldur	x8, [x29, #-32]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	jvp_literal_number_to_double, .Lfunc_end0-jvp_literal_number_to_double
                                        // -- End function
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.bss
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.type	BIN64_DEC_PRECISION,@object     // @BIN64_DEC_PRECISION
	.globl	BIN64_DEC_PRECISION
	.p2align	3
BIN64_DEC_PRECISION:
	.xword	0                               // 0x0
	.size	BIN64_DEC_PRECISION, 8
	.type	DEC_NUMBER_STRING_GUARD,@object // @DEC_NUMBER_STRING_GUARD
	.globl	DEC_NUMBER_STRING_GUARD
	.p2align	3
DEC_NUMBER_STRING_GUARD:
	.xword	0                               // 0x0
	.size	DEC_NUMBER_STRING_GUARD, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_to_double
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym decNumberReduce
	.addrsig_sym DEC_CONTEXT_TO_DOUBLE
	.addrsig_sym decNumberToString
	.addrsig_sym jvp_strtod
	.addrsig_sym tsd_dtoa_context_get
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL
	.addrsig_sym BIN64_DEC_PRECISION
	.addrsig_sym DEC_NUMBER_STRING_GUARD