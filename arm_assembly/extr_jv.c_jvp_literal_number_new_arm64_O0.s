	.text
	.p2align	2                               // -- Begin function jvp_literal_number_new
	.type	jvp_literal_number_new,@function
jvp_literal_number_new:                 // @jvp_literal_number_new
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	strlen
	bl	jvp_literal_number_alloc
	stur	x0, [x29, #-16]
	adrp	x8, JV_REFCNT_INIT
	ldr	w8, [x8, :lo12:JV_REFCNT_INIT]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	bl	DEC_CONTEXT
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	add	x0, x8, #8
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-24]
	bl	decNumberFromString
	adrp	x8, NAN
	ldr	w8, [x8, :lo12:NAN]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	adrp	x9, DEC_Conversion_syntax
	ldr	w9, [x9, :lo12:DEC_Conversion_syntax]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	jv_mem_free
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, JV_INVALID
	add	x8, x8, :lo12:JV_INVALID
	ldr	q0, [x8]
	str	q0, [x9]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	b	.LBB0_3
.LBB0_2:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldrsw	x8, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	str	x8, [sp, #16]
	str	wzr, [sp, #24]
	str	wzr, [sp, #28]
	adrp	x8, JV_NUMBER_SIZE_INIT
	ldr	w8, [x8, :lo12:JV_NUMBER_SIZE_INIT]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #36]
	ldr	q0, [sp, #16]
	str	q0, [x9]
	ldr	x8, [sp, #32]
	str	x8, [x9, #16]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_literal_number_new, .Lfunc_end0-jvp_literal_number_new
                                        // -- End function
	.type	JV_REFCNT_INIT,@object          // @JV_REFCNT_INIT
	.bss
	.globl	JV_REFCNT_INIT
	.p2align	2
JV_REFCNT_INIT:
	.word	0                               // 0x0
	.size	JV_REFCNT_INIT, 4
	.type	NAN,@object                     // @NAN
	.globl	NAN
	.p2align	2
NAN:
	.word	0                               // 0x0
	.size	NAN, 4
	.type	DEC_Conversion_syntax,@object   // @DEC_Conversion_syntax
	.globl	DEC_Conversion_syntax
	.p2align	2
DEC_Conversion_syntax:
	.word	0                               // 0x0
	.size	DEC_Conversion_syntax, 4
	.type	JV_INVALID,@object              // @JV_INVALID
	.globl	JV_INVALID
	.p2align	3
JV_INVALID:
	.zero	24
	.size	JV_INVALID, 24
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.type	JV_NUMBER_SIZE_INIT,@object     // @JV_NUMBER_SIZE_INIT
	.globl	JV_NUMBER_SIZE_INIT
	.p2align	2
JV_NUMBER_SIZE_INIT:
	.word	0                               // 0x0
	.size	JV_NUMBER_SIZE_INIT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_new
	.addrsig_sym jvp_literal_number_alloc
	.addrsig_sym strlen
	.addrsig_sym DEC_CONTEXT
	.addrsig_sym decNumberFromString
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_REFCNT_INIT
	.addrsig_sym NAN
	.addrsig_sym DEC_Conversion_syntax
	.addrsig_sym JV_INVALID
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL
	.addrsig_sym JV_NUMBER_SIZE_INIT