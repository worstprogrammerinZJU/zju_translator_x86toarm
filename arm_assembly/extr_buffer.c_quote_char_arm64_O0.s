	.text
	.globl	quote_char                      // -- Begin function quote_char
	.p2align	2
	.type	quote_char,@function
quote_char:                             // @quote_char
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	strb	w0, [sp, #7]
	ldrb	w8, [sp, #7]
	subs	w8, w8, #92
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_2:
	ldrb	w8, [sp, #7]
	subs	w8, w8, #39
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_4:
	ldrb	w1, [sp, #7]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	format
	str	x0, [sp, #8]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	quote_char, .Lfunc_end0-quote_char
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\\\"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\\'"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%c"
	.size	.L.str.2, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format