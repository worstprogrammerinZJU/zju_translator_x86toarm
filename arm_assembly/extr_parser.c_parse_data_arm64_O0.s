	.text
	.globl	parse_data                      // -- Begin function parse_data
	.p2align	2
	.type	parse_data,@function
parse_data:                             // @parse_data
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_15
.LBB0_2:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	str	wzr, [sp, #20]
	stur	wzr, [x29, #-24]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
	ldur	w9, [x29, #-24]
	ldur	w10, [x29, #-20]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	add	x9, x8, #1
	str	x9, [sp, #24]
	ldrb	w8, [x8, #1]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	subs	w8, w8, #44
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_7
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #24]
	strb	wzr, [x8]
	ldr	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-24]
	add	x2, x8, x9, lsl #2
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sscanf
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_3
.LBB0_15:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_data, .Lfunc_end0-parse_data
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%g"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sscanf