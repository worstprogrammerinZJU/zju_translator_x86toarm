	.text
	.p2align	2                               // -- Begin function get
	.type	get,@function
get:                                    // @get
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_tail
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.ls	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x10, [sp, #8]
	ldr	x9, [x10]
	subs	x9, x9, #1
	str	x9, [x10]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #4]
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	readc_file
	str	w0, [sp, #4]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	readc_string
	str	w0, [sp, #4]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #4]
	subs	w8, w8, #10
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x10, [sp, #8]
	ldr	w9, [x10, #20]
	mov	w8, #1
	add	w9, w9, #1
	str	w9, [x10, #20]
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	b	.LBB0_11
.LBB0_8:
	ldr	w8, [sp, #4]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #16]
	add	w8, w8, #1
	str	w8, [x9, #16]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get, .Lfunc_end0-get
                                        // -- End function
	.type	files,@object                   // @files
	.bss
	.globl	files
	.p2align	2
files:
	.word	0                               // 0x0
	.size	files, 4
	.type	EOF,@object                     // @EOF
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym vec_tail
	.addrsig_sym readc_file
	.addrsig_sym readc_string
	.addrsig_sym files
	.addrsig_sym EOF