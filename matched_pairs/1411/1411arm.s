	.text
	.p2align	2                               // -- Begin function do_skip_space
	.type	do_skip_space,@function
do_skip_space:                          // @do_skip_space
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	readc
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_2:
	ldr	w0, [sp, #8]
	bl	iswhitespace
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #47
	b.ne	.LBB0_10
	b	.LBB0_5
.LBB0_5:
	mov	w0, #42
	bl	next
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	bl	skip_block_comment
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_7:
	mov	w0, #47
	bl	next
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	bl	skip_line
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldr	w0, [sp, #8]
	bl	unreadc
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	do_skip_space, .Lfunc_end0-do_skip_space
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
	.addrsig_sym do_skip_space
	.addrsig_sym readc
	.addrsig_sym iswhitespace
	.addrsig_sym next
	.addrsig_sym skip_block_comment
	.addrsig_sym skip_line
	.addrsig_sym unreadc
	.addrsig_sym EOF