	.text
	.p2align	2                               // -- Begin function skip_block_comment
	.type	skip_block_comment,@function
skip_block_comment:                     // @skip_block_comment
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #-2
	bl	get_pos
	stur	w0, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	readc
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errorp
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #47
	b.ne	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #42
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #8]
	b	.LBB0_1
.Lfunc_end0:
	.size	skip_block_comment, .Lfunc_end0-skip_block_comment
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of block comment"
	.size	.L.str, 31
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_block_comment
	.addrsig_sym get_pos
	.addrsig_sym readc
	.addrsig_sym errorp
	.addrsig_sym EOF