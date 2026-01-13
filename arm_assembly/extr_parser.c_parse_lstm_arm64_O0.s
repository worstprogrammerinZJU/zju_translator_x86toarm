	.text
	.globl	parse_lstm                      // -- Begin function parse_lstm
	.p2align	2
	.type	parse_lstm,@function
parse_lstm:                             // @parse_lstm
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x1, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	bl	option_find_int
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, wzr
	bl	option_find_int_quiet
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #16]
	ldr	w0, [x8, #16]
	ldr	w1, [x8, #12]
	ldur	w2, [x29, #-12]
	ldr	w3, [x8, #8]
	ldr	w4, [sp, #16]
	ldr	x8, [x8]
	ldr	w5, [x8]
	bl	make_lstm_layer
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_lstm, .Lfunc_end0-parse_lstm
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_lstm_layer