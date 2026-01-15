	.text
	.globl	block_has_only_binders          // -- Begin function block_has_only_binders
	.p2align	2
	.type	block_has_only_binders,@function
block_has_only_binders:                 // @block_has_only_binders
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	adrp	x8, OP_HAS_BINDING
	ldr	w9, [x8, :lo12:OP_HAS_BINDING]
	ldr	w8, [sp, #12]
	orr	w8, w8, w9
	str	w8, [sp, #12]
	adrp	x8, OP_BIND_WILDCARD
	ldr	w9, [x8, :lo12:OP_BIND_WILDCARD]
	ldr	w8, [sp, #12]
	bic	w8, w8, w9
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	cbz	x8, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	opcode_describe
	ldr	w8, [x0]
	ldr	w9, [sp, #12]
	and	w8, w8, w9
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.eq	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, MODULEMETA
	ldr	x9, [x9, :lo12:MODULEMETA]
	subs	x8, x8, x9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_8
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_has_only_binders, .Lfunc_end0-block_has_only_binders
                                        // -- End function
	.type	OP_HAS_BINDING,@object          // @OP_HAS_BINDING
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.word	0                               // 0x0
	.size	OP_HAS_BINDING, 4
	.type	OP_BIND_WILDCARD,@object        // @OP_BIND_WILDCARD
	.globl	OP_BIND_WILDCARD
	.p2align	2
OP_BIND_WILDCARD:
	.word	0                               // 0x0
	.size	OP_BIND_WILDCARD, 4
	.type	MODULEMETA,@object              // @MODULEMETA
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.xword	0                               // 0x0
	.size	MODULEMETA, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym opcode_describe
	.addrsig_sym OP_HAS_BINDING
	.addrsig_sym OP_BIND_WILDCARD
	.addrsig_sym MODULEMETA