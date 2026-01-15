	.text
	.p2align	2                               // -- Begin function print
	.type	print,@function
print:                                  // @print
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldurb	w0, [x29, #-9]
	bl	quote
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	b	.LBB0_6
.LBB0_2:
	ldurb	w0, [x29, #-9]
	bl	isprint
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldurb	w2, [x29, #-9]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	buf_printf
	b	.LBB0_5
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldurb	w2, [x29, #-9]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	buf_printf
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%c"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\x%02x"
	.size	.L.str.2, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym quote
	.addrsig_sym buf_printf
	.addrsig_sym isprint