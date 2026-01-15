	.text
	.globl	gen_array_matcher               // -- Begin function gen_array_matcher
	.p2align	2
	.type	gen_array_matcher,@function
gen_array_matcher:                      // @gen_array_matcher
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	block_is_noop
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #20]
	b	.LBB0_6
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, DUP
	ldr	x9, [x9, :lo12:DUP]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
                                        // kill: def $x9 killed $xzr
	subs	x8, x8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	str	xzr, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, PUSHK_UNDER
	ldr	x9, [x9, :lo12:PUSHK_UNDER]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, SUBEXP_BEGIN
	ldr	x9, [x9, :lo12:SUBEXP_BEGIN]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	jv_number_value
	mov	w8, w0
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_6
.LBB0_6:
	adrp	x8, DUP
	ldr	x0, [x8, :lo12:DUP]
	bl	gen_op_simple
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	jv_number
	bl	gen_const
	bl	gen_subexp
	str	w0, [sp]                        // 4-byte Folded Spill
	adrp	x8, INDEX
	ldr	x0, [x8, :lo12:INDEX]
	bl	gen_op_simple
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	x3, [sp, #24]
	ldur	x4, [x29, #-16]
	bl	BLOCK
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	gen_array_matcher, .Lfunc_end0-gen_array_matcher
                                        // -- End function
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	3
DUP:
	.xword	0                               // 0x0
	.size	DUP, 8
	.type	PUSHK_UNDER,@object             // @PUSHK_UNDER
	.globl	PUSHK_UNDER
	.p2align	3
PUSHK_UNDER:
	.xword	0                               // 0x0
	.size	PUSHK_UNDER, 8
	.type	SUBEXP_BEGIN,@object            // @SUBEXP_BEGIN
	.globl	SUBEXP_BEGIN
	.p2align	3
SUBEXP_BEGIN:
	.xword	0                               // 0x0
	.size	SUBEXP_BEGIN, 8
	.type	LOADK,@object                   // @LOADK
	.globl	LOADK
	.p2align	3
LOADK:
	.xword	0                               // 0x0
	.size	LOADK, 8
	.type	INDEX,@object                   // @INDEX
	.globl	INDEX
	.p2align	3
INDEX:
	.xword	0                               // 0x0
	.size	INDEX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_noop
	.addrsig_sym assert
	.addrsig_sym jv_number_value
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_subexp
	.addrsig_sym gen_const
	.addrsig_sym jv_number
	.addrsig_sym DUP
	.addrsig_sym PUSHK_UNDER
	.addrsig_sym SUBEXP_BEGIN
	.addrsig_sym LOADK
	.addrsig_sym INDEX