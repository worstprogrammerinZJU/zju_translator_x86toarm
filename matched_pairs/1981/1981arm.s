	.text
	.globl	parse_crnn                      // -- Begin function parse_crnn
	.p2align	2
	.type	parse_crnn,@function
parse_crnn:                             // @parse_crnn
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	bl	option_find_int
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_int
	stur	w0, [x29, #-24]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	option_find_str
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	get_activation
	stur	w0, [x29, #-36]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	w2, wzr
	str	w2, [sp, #36]                   // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	mov	w9, w0
	str	w9, [sp, #40]
	ldr	w0, [x8, #16]
	ldr	w1, [x8, #12]
	ldr	w2, [x8, #8]
	ldr	w3, [x8, #4]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-20]
	ldr	w6, [x8]
	ldur	w7, [x29, #-36]
	ldr	w8, [sp, #40]
	mov	x9, sp
	str	w8, [x9]
	bl	make_crnn_layer
	ldr	w2, [sp, #36]                   // 4-byte Folded Reload
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	option_find_int_quiet
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	parse_crnn, .Lfunc_end0-parse_crnn
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output_filters"
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"hidden_filters"
	.size	.L.str.1, 15
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"activation"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"logistic"
	.size	.L.str.3, 9
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"batch_normalize"
	.size	.L.str.4, 16
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"shortcut"
	.size	.L.str.5, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_crnn_layer