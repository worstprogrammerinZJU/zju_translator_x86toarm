	.text
	.globl	parse_upsample                  // -- Begin function parse_upsample
	.p2align	2
	.type	parse_upsample,@function
parse_upsample:                         // @parse_upsample
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x1, [x29, #-20]
	stur	x2, [x29, #-12]
	str	x0, [sp, #16]
	str	x3, [sp, #8]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #2
	bl	option_find_int
	str	w0, [sp, #4]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-20]
	ldr	w4, [sp, #4]
	bl	make_upsample_layer
	stur	w0, [x29, #-4]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #1
	bl	option_find_float_quiet
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_upsample, .Lfunc_end0-parse_upsample
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stride"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"scale"
	.size	.L.str.1, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_upsample_layer
	.addrsig_sym option_find_float_quiet