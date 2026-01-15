	.text
	.globl	gen_cbinding                    // -- Begin function gen_cbinding
	.p2align	2
	.type	gen_cbinding,@function
gen_cbinding:                           // @gen_cbinding
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CLOSURE_CREATE_C
	ldr	w0, [x8, :lo12:CLOSURE_CREATE_C]
	bl	inst_new
	str	x0, [sp]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #4
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #4
	ldr	w0, [x8, #8]
	bl	strdup
	ldr	x8, [sp]
	str	w0, [x8, #16]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	subs	x8, x8, #1
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	str	xzr, [x8]
	ldr	x0, [sp]
	bl	inst_block
	ldr	w1, [sp, #16]
	bl	BLOCK
	str	w0, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldr	w0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_cbinding, .Lfunc_end0-gen_cbinding
                                        // -- End function
	.type	CLOSURE_CREATE_C,@object        // @CLOSURE_CREATE_C
	.bss
	.globl	CLOSURE_CREATE_C
	.p2align	2
CLOSURE_CREATE_C:
	.word	0                               // 0x0
	.size	CLOSURE_CREATE_C, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym strdup
	.addrsig_sym BLOCK
	.addrsig_sym inst_block
	.addrsig_sym CLOSURE_CREATE_C