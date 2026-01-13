	.text
	.p2align	2                               // -- Begin function jvp_literal_number_literal
	.type	jvp_literal_number_literal,@function
jvp_literal_number_literal:             // @jvp_literal_number_literal
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-12]
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	bl	JVP_HAS_FLAGS
	bl	assert
	ldur	w0, [x29, #-12]
	bl	jvp_dec_number_ptr
	str	x0, [sp, #24]
	ldur	w0, [x29, #-12]
	bl	jvp_literal_number_ptr
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	decNumberIsNaN
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_2:
	ldr	x0, [sp, #24]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #24]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DBL_MIN_STR
	ldr	x8, [x8, :lo12:DBL_MIN_STR]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_5:
	adrp	x8, DBL_MAX_STR
	ldr	x8, [x8, :lo12:DBL_MAX_STR]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-12]
	bl	jvp_dec_number_ptr
	ldr	w8, [x0]
	add	w8, w8, #14
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_mem_alloc
	ldr	x8, [sp, #16]
	str	x0, [x8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	bl	decNumberToString
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_literal_number_literal, .Lfunc_end0-jvp_literal_number_literal
                                        // -- End function
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.bss
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"null"
	.size	.L.str, 5
	.type	DBL_MIN_STR,@object             // @DBL_MIN_STR
	.bss
	.globl	DBL_MIN_STR
	.p2align	3
DBL_MIN_STR:
	.xword	0
	.size	DBL_MIN_STR, 8
	.type	DBL_MAX_STR,@object             // @DBL_MAX_STR
	.globl	DBL_MAX_STR
	.p2align	3
DBL_MAX_STR:
	.xword	0
	.size	DBL_MAX_STR, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_literal
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym jvp_literal_number_ptr
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberIsNegative
	.addrsig_sym jv_mem_alloc
	.addrsig_sym decNumberToString
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL
	.addrsig_sym DBL_MIN_STR
	.addrsig_sym DBL_MAX_STR