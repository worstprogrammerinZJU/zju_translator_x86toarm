	.text
	.globl	parse_gru                       // -- Begin function parse_gru
	.p2align	2
	.type	parse_gru,@function
parse_gru:                              // @parse_gru
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	bl	option_find_int
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, wzr
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	str	w9, [sp, #24]
	ldr	w0, [x8, #16]
	ldr	w1, [x8, #12]
	ldur	w2, [x29, #-20]
	ldr	w3, [x8, #8]
	ldr	w4, [sp, #24]
	ldr	x8, [x8]
	ldr	w5, [x8]
	bl	make_gru_layer
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	option_find_int_quiet
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_gru, .Lfunc_end0-parse_gru
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"batch_normalize"
	.size	.L.str.1, 16
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"tanh"
	.size	.L.str.2, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_gru_layer