	.text
	.globl	parse_connected                 // -- Begin function parse_connected
	.p2align	2
	.type	parse_connected,@function
parse_connected:                        // @parse_connected
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	bl	option_find_int
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	option_find_str
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	get_activation
	str	w0, [sp, #20]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, wzr
	bl	option_find_int_quiet
	str	w0, [sp, #16]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldur	w2, [x29, #-28]
	ldr	w3, [sp, #20]
	ldr	w4, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w5, [x8]
	bl	make_connected_layer
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_connected, .Lfunc_end0-parse_connected
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_connected_layer