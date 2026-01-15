	.text
	.globl	unreadc                         // -- Begin function unreadc
	.p2align	2
	.type	unreadc,@function
unreadc:                                // @unreadc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_5
.LBB0_2:
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_tail
	str	x0, [sp]
	ldr	x8, [sp]
	ldrsw	x8, [x8]
	subs	x8, x8, #2
	cset	w8, lo
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	ldr	x9, [x9, #8]
	ldr	x12, [sp]
	ldrsw	x10, [x12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [x12]
	str	w8, [x9, x10, lsl #2]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #10
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #16]
	ldr	x9, [sp]
	ldr	w8, [x9, #20]
	subs	w8, w8, #1
	str	w8, [x9, #20]
	b	.LBB0_5
.LBB0_4:
	ldr	x9, [sp]
	ldr	w8, [x9, #16]
	subs	w8, w8, #1
	str	w8, [x9, #16]
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	unreadc, .Lfunc_end0-unreadc
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
	.addrsig_sym vec_tail
	.addrsig_sym assert
	.addrsig_sym EOF
	.addrsig_sym files