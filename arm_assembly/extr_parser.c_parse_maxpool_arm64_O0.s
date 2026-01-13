	.text
	.globl	parse_maxpool                   // -- Begin function parse_maxpool
	.p2align	2
	.type	parse_maxpool,@function
parse_maxpool:                          // @parse_maxpool
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
	ldur	w2, [x29, #-28]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_int
	str	w0, [sp, #32]
	ldur	x0, [x29, #-24]
	ldr	w8, [sp, #32]
	subs	w2, w8, #1
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	option_find_int_quiet
	str	w0, [sp, #28]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #20]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #16]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #24]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	ldr	w2, [sp, #16]
	ldr	w3, [sp, #12]
	ldr	w4, [sp, #32]
	ldur	w5, [x29, #-28]
	ldr	w6, [sp, #28]
	bl	make_maxpool_layer
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_maxpool, .Lfunc_end0-parse_maxpool
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stride"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"size"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"padding"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Layer before maxpool layer must output image."
	.size	.L.str.3, 46
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym error
	.addrsig_sym make_maxpool_layer