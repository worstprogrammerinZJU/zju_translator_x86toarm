	.text
	.globl	jvp_number_cmp                  // -- Begin function jvp_number_cmp
	.p2align	2
	.type	jvp_number_cmp,@function
jvp_number_cmp:                         // @jvp_number_cmp
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_NUMBER
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-8]
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_7
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-12]
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	jvp_dec_number_ptr
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_dec_number_ptr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	DEC_CONTEXT
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	mov	w3, w0
	sub	x0, x29, #16
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	decNumberCompare
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	decNumberIsZero
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_4:
	sub	x0, x29, #16
	bl	decNumberIsNegative
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_7:
	ldur	w0, [x29, #-8]
	bl	jv_number_value
	stur	d0, [x29, #-24]
	ldur	w0, [x29, #-12]
	bl	jv_number_value
	str	d0, [sp, #32]
	ldur	d0, [x29, #-24]
	ldr	d1, [sp, #32]
	fcmp	d0, d1
	b.pl	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_9:
	ldur	d0, [x29, #-24]
	ldr	d1, [sp, #32]
	fcmp	d0, d1
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_number_cmp, .Lfunc_end0-jvp_number_cmp
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.word	0                               // 0x0
	.size	JV_KIND_NUMBER, 4
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym decNumberCompare
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym DEC_CONTEXT
	.addrsig_sym decNumberIsZero
	.addrsig_sym decNumberIsNegative
	.addrsig_sym jv_number_value
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL