	.text
	.globl	parse_activation                // -- Begin function parse_activation
	.p2align	2
	.type	parse_activation,@function
parse_activation:                       // @parse_activation
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	option_find_str
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	get_activation
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-20]
	ldr	w0, [x1, #16]
	ldr	w1, [x1, #12]
	ldur	w2, [x29, #-20]
	bl	make_activation_layer
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x1, #8]
	str	w8, [x9, #16]
	str	w8, [x9, #20]
	ldr	w8, [x1, #4]
	str	w8, [x9, #8]
	str	w8, [x9, #12]
	ldr	w8, [x1]
	str	w8, [x9]
	str	w8, [x9, #4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_activation, .Lfunc_end0-parse_activation
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"activation"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"linear"
	.size	.L.str.1, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym make_activation_layer