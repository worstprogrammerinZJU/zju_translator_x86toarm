	.text
	.p2align	2                               // -- Begin function skip_line
	.type	skip_line,@function
skip_line:                              // @skip_line
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	readc
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_6
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #10
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	bl	unreadc
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skip_line, .Lfunc_end0-skip_line
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
	.addrsig_sym skip_line
	.addrsig_sym readc
	.addrsig_sym unreadc
	.addrsig_sym EOF