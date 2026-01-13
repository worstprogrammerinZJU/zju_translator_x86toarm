	.text
	.p2align	2                               // -- Begin function bind_matcher
	.type	bind_matcher,@function
bind_matcher:                           // @bind_matcher
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	cbz	x8, .LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, STOREV
	ldr	x9, [x9, :lo12:STOREV]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, STOREVN
	ldr	x9, [x9, :lo12:STOREVN]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	bl	inst_block
	adrp	x8, OP_HAS_VARIABLE
	ldr	w2, [x8, :lo12:OP_HAS_VARIABLE]
	ldr	x1, [sp, #8]
	mov	w3, wzr
	bl	block_bind_subblock
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_8:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	BLOCK
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	bind_matcher, .Lfunc_end0-bind_matcher
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
	.type	OP_HAS_VARIABLE,@object         // @OP_HAS_VARIABLE
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.word	0                               // 0x0
	.size	OP_HAS_VARIABLE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bind_matcher
	.addrsig_sym block_bind_subblock
	.addrsig_sym inst_block
	.addrsig_sym BLOCK
	.addrsig_sym STOREV
	.addrsig_sym STOREVN
	.addrsig_sym OP_HAS_VARIABLE