	.text
	.globl	parse_rnn                       // -- Begin function parse_rnn
	.p2align	2
	.type	parse_rnn,@function
parse_rnn:                              // @parse_rnn
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
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
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	option_find_str
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	get_activation
	str	w0, [sp, #28]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
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
	ldr	w4, [sp, #28]
	ldr	w5, [sp, #24]
	ldr	x8, [x8]
	ldr	w6, [x8]
	bl	make_rnn_layer
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	option_find_int_quiet
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_rnn, .Lfunc_end0-parse_rnn
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"activation"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"logistic"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"batch_normalize"
	.size	.L.str.3, 16
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"shortcut"
	.size	.L.str.4, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_rnn_layer