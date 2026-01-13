	.text
	.p2align	2                               // -- Begin function skip_string
	.type	skip_string,@function
skip_string:                            // @skip_string
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	readc
	stur	w0, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-4]
	adrp	x8, EOF
	ldr	w10, [x8, :lo12:EOF]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #34
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #92
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	bl	readc
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	bl	readc
	stur	w0, [x29, #-4]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skip_string, .Lfunc_end0-skip_string
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_string
	.addrsig_sym readc
	.addrsig_sym EOF