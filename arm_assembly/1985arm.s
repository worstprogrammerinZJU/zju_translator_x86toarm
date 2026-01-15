	.text
	.globl	parse_dropout                   // -- Begin function parse_dropout
	.p2align	2
	.type	parse_dropout,@function
parse_dropout:                          // @parse_dropout
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	fmov	d0, #0.50000000
	bl	option_find_float
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	stur	s0, [x29, #-28]
	ldr	w0, [x1, #16]
	ldr	w1, [x1, #12]
	ldur	s0, [x29, #-28]
	bl	make_dropout_layer
	mov	x8, x1
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [sp, #32]
	str	x8, [sp, #40]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #40]
	stur	w8, [x29, #-8]
	ldr	w8, [x1, #8]
	stur	w8, [x29, #-8]
	ldr	w8, [x1, #4]
	stur	w8, [x29, #-12]
	ldr	w8, [x1]
	stur	w8, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	parse_dropout, .Lfunc_end0-parse_dropout
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"probability"
	.size	.L.str, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_float
	.addrsig_sym make_dropout_layer