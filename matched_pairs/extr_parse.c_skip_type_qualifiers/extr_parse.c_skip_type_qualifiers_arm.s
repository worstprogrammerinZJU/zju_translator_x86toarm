	.text
	.p2align	2                               // -- Begin function skip_type_qualifiers
	.type	skip_type_qualifiers,@function
skip_type_qualifiers:                   // @skip_type_qualifiers
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, KCONST
	ldr	w0, [x8, :lo12:KCONST]
	bl	next_token
	mov	w8, #1
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	cbnz	x0, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, KVOLATILE
	ldr	w0, [x8, :lo12:KVOLATILE]
	bl	next_token
	mov	w8, #1
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, KRESTRICT
	ldr	w0, [x8, :lo12:KRESTRICT]
	bl	next_token
	subs	x8, x0, #0
	cset	w8, ne
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]                  // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skip_type_qualifiers, .Lfunc_end0-skip_type_qualifiers
                                        // -- End function
	.type	KCONST,@object                  // @KCONST
	.bss
	.globl	KCONST
	.p2align	2
KCONST:
	.word	0                               // 0x0
	.size	KCONST, 4
	.type	KVOLATILE,@object               // @KVOLATILE
	.globl	KVOLATILE
	.p2align	2
KVOLATILE:
	.word	0                               // 0x0
	.size	KVOLATILE, 4
	.type	KRESTRICT,@object               // @KRESTRICT
	.globl	KRESTRICT
	.p2align	2
KRESTRICT:
	.word	0                               // 0x0
	.size	KRESTRICT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_type_qualifiers
	.addrsig_sym next_token
	.addrsig_sym KCONST
	.addrsig_sym KVOLATILE
	.addrsig_sym KRESTRICT