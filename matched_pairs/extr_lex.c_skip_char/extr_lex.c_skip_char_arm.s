	.text
	.p2align	2                               // -- Begin function skip_char
	.type	skip_char,@function
skip_char:                              // @skip_char
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	readc
	and	w8, w0, #0xff
	subs	w8, w8, #92
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	readc
	b	.LBB0_2
.LBB0_2:
	bl	readc
	and	w8, w0, #0xff
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-4]
	adrp	x8, EOF
	ldr	w10, [x8, :lo12:EOF]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #39
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	bl	readc
	and	w8, w0, #0xff
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_7:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skip_char, .Lfunc_end0-skip_char
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
	.addrsig_sym skip_char
	.addrsig_sym readc
	.addrsig_sym EOF