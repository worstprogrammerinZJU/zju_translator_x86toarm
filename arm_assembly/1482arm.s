	.text
	.p2align	2                               // -- Begin function yy_get_previous_state
	.type	yy_get_previous_state,@function
yy_get_previous_state:                  // @yy_get_previous_state
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #8]
	adrp	x9, YY_MORE_ADJ
	ldrsw	x9, [x9, :lo12:YY_MORE_ADJ]
	add	x8, x8, x9
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_8 Depth 2
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	.LBB0_14
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, yy_ec
	ldr	x8, [x8, :lo12:yy_ec]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldrb	w0, [x8]
	bl	YY_SC_TO_UI
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, x0, lsl #2]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #20]                   // 4-byte Folded Reload
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	str	x8, [sp, #24]
	adrp	x8, yy_accept
	ldr	x8, [x8, :lo12:yy_accept]
	ldur	x9, [x29, #-16]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #32]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	adrp	x8, yy_chk
	ldr	x8, [x8, :lo12:yy_chk]
	adrp	x9, yy_base
	ldr	x9, [x9, :lo12:yy_base]
	ldur	x10, [x29, #-16]
	ldr	x9, [x9, x10, lsl #3]
	ldr	x10, [sp, #24]
	add	x9, x9, x10
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.eq	.LBB0_12
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=2
	adrp	x8, yy_def
	ldr	x8, [x8, :lo12:yy_def]
	ldur	x9, [x29, #-16]
	ldr	x8, [x8, x9, lsl #3]
	sxtw	x8, w8
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #157
	b.lo	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=2
	adrp	x8, yy_meta
	ldr	x8, [x8, :lo12:yy_meta]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #24]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=2
	b	.LBB0_8
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, yy_nxt
	ldr	x8, [x8, :lo12:yy_nxt]
	adrp	x9, yy_base
	ldr	x9, [x9, :lo12:yy_base]
	ldur	x10, [x29, #-16]
	ldr	x9, [x9, x10, lsl #3]
	ldr	x10, [sp, #24]
	add	x9, x9, x10
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-16]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_14:
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	yy_get_previous_state, .Lfunc_end0-yy_get_previous_state
                                        // -- End function
	.type	YY_MORE_ADJ,@object             // @YY_MORE_ADJ
	.bss
	.globl	YY_MORE_ADJ
	.p2align	2
YY_MORE_ADJ:
	.word	0                               // 0x0
	.size	YY_MORE_ADJ, 4
	.type	yy_ec,@object                   // @yy_ec
	.globl	yy_ec
	.p2align	3
yy_ec:
	.xword	0
	.size	yy_ec, 8
	.type	yy_accept,@object               // @yy_accept
	.globl	yy_accept
	.p2align	3
yy_accept:
	.xword	0
	.size	yy_accept, 8
	.type	yy_chk,@object                  // @yy_chk
	.globl	yy_chk
	.p2align	3
yy_chk:
	.xword	0
	.size	yy_chk, 8
	.type	yy_base,@object                 // @yy_base
	.globl	yy_base
	.p2align	3
yy_base:
	.xword	0
	.size	yy_base, 8
	.type	yy_def,@object                  // @yy_def
	.globl	yy_def
	.p2align	3
yy_def:
	.xword	0
	.size	yy_def, 8
	.type	yy_meta,@object                 // @yy_meta
	.globl	yy_meta
	.p2align	3
yy_meta:
	.xword	0
	.size	yy_meta, 8
	.type	yy_nxt,@object                  // @yy_nxt
	.globl	yy_nxt
	.p2align	3
yy_nxt:
	.xword	0
	.size	yy_nxt, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_get_previous_state
	.addrsig_sym YY_SC_TO_UI
	.addrsig_sym YY_MORE_ADJ
	.addrsig_sym yy_ec
	.addrsig_sym yy_accept
	.addrsig_sym yy_chk
	.addrsig_sym yy_base
	.addrsig_sym yy_def
	.addrsig_sym yy_meta
	.addrsig_sym yy_nxt