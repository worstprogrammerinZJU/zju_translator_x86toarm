	.text
	.p2align	2                               // -- Begin function readc_file
	.type	readc_file,@function
readc_file:                             // @readc_file
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	getc
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #10
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, EOF
	ldr	w8, [x8, :lo12:EOF]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	mov	w8, #10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w8, [x29, #-12]
	b	.LBB0_11
.LBB0_6:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #13
	b.ne	.LBB0_10
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	getc
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #10
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #4]
	bl	ungetc
	b	.LBB0_9
.LBB0_9:
	mov	w8, #10
	stur	w8, [x29, #-12]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	strb	w8, [x9]
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	readc_file, .Lfunc_end0-readc_file
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
	.addrsig_sym readc_file
	.addrsig_sym getc
	.addrsig_sym ungetc
	.addrsig_sym EOF