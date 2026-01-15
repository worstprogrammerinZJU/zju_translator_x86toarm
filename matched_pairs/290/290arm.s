	.text
	.globl	gen_destructure_alt             // -- Begin function gen_destructure_alt
	.p2align	2
	.type	gen_destructure_alt,@function
gen_destructure_alt:                    // @gen_destructure_alt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, STOREV
	ldr	x9, [x9, :lo12:STOREV]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, STOREVN
	ldr	x8, [x8, :lo12:STOREVN]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	adrp	x8, DESTRUCTURE_ALT
	ldr	w0, [x8, :lo12:DESTRUCTURE_ALT]
	bl	inst_new
	str	x0, [sp]
	ldr	x9, [sp]
	ldr	x8, [sp, #16]
	str	x8, [x9, #8]
	ldr	x0, [sp]
	bl	inst_block
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_destructure_alt, .Lfunc_end0-gen_destructure_alt
                                        // -- End function
	.type	STOREV,@object                  // @STOREV
	.bss
	.globl	STOREV
	.p2align	3
STOREV:
	.xword	0                               // 0x0
	.size	STOREV, 8
	.type	STOREVN,@object                 // @STOREVN
	.globl	STOREVN
	.p2align	3
STOREVN:
	.xword	0                               // 0x0
	.size	STOREVN, 8
	.type	DESTRUCTURE_ALT,@object         // @DESTRUCTURE_ALT
	.globl	DESTRUCTURE_ALT
	.p2align	2
DESTRUCTURE_ALT:
	.word	0                               // 0x0
	.size	DESTRUCTURE_ALT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym STOREV
	.addrsig_sym STOREVN
	.addrsig_sym DESTRUCTURE_ALT