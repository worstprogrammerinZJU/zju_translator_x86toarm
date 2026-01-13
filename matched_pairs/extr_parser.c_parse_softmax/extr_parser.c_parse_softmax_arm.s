	.text
	.globl	parse_softmax                   // -- Begin function parse_softmax
	.p2align	2
	.type	parse_softmax,@function
parse_softmax:                          // @parse_softmax
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	str	w2, [sp, #28]                   // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	mov	w9, w0
	stur	w9, [x29, #-12]
	ldr	w0, [x1, #16]
	ldr	w1, [x1, #12]
	ldur	w2, [x29, #-12]
	bl	make_softmax_layer
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_float_quiet
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #32]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w2, wzr
	bl	option_find_str
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	bl	read_tree
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	w0, [x8, #28]
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w10, [x8, #8]
	str	w10, [x9, #24]
	ldr	w10, [x8, #4]
	str	w10, [x9, #20]
	ldr	w8, [x8]
	str	w8, [x9, #16]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, wzr
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	option_find_float_quiet
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	option_find_int_quiet
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_softmax, .Lfunc_end0-parse_softmax
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"groups"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"temperature"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"tree"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"spatial"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"noloss"
	.size	.L.str.4, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_softmax_layer
	.addrsig_sym option_find_float_quiet
	.addrsig_sym option_find_str
	.addrsig_sym read_tree