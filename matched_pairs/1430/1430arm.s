	.text
	.p2align	2                               // -- Begin function read_octal_char
	.type	read_octal_char,@function
read_octal_char:                        // @read_octal_char
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #48
	stur	w8, [x29, #-12]
	bl	nextoct
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	bl	readc
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w0, #48
	orr	w8, w8, w9, lsl #3
	stur	w8, [x29, #-12]
	bl	nextoct
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	readc
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w0, #48
	orr	w8, w8, w9, lsl #3
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_octal_char, .Lfunc_end0-read_octal_char
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_octal_char
	.addrsig_sym nextoct
	.addrsig_sym readc