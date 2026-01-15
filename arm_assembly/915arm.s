	.text
	.globl	readc                           // -- Begin function readc
	.p2align	2
	.type	readc,@function
readc:                                  // @readc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	get
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_len
	subs	w8, w0, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_pop
	bl	close_file
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #92
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	bl	get
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #10
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_9:
	ldr	w0, [sp, #4]
	bl	unreadc
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	readc, .Lfunc_end0-readc
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.type	files,@object                   // @files
	.globl	files
	.p2align	2
files:
	.word	0                               // 0x0
	.size	files, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym vec_len
	.addrsig_sym close_file
	.addrsig_sym vec_pop
	.addrsig_sym unreadc
	.addrsig_sym EOF
	.addrsig_sym files