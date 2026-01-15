	.text
	.globl	parse_convolutional             // -- Begin function parse_convolutional
	.p2align	2
	.type	parse_convolutional,@function
parse_convolutional:                    // @parse_convolutional
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	str	x1, [sp, #56]                   // 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	str	w2, [sp, #68]                   // 4-byte Folded Spill
	bl	option_find_int
	ldr	w2, [sp, #68]                   // 4-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_int
	ldr	w2, [sp, #68]                   // 4-byte Folded Reload
	stur	w0, [x29, #-32]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	option_find_int
	stur	w0, [x29, #-36]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, wzr
	str	w2, [sp, #64]                   // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	w2, [sp, #64]                   // 4-byte Folded Reload
	mov	w8, w0
	stur	w8, [x29, #-40]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	option_find_int_quiet
	ldr	w2, [sp, #68]                   // 4-byte Folded Reload
	mov	w8, w0
	stur	w8, [x29, #-44]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	option_find_int_quiet
	mov	w8, w0
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-40]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-32]
	mov	w9, #2
	sdiv	w8, w8, w9
	stur	w8, [x29, #-44]
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	adrp	x2, .L.str.7
	add	x2, x2, :lo12:.L.str.7
	bl	option_find_str
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	get_activation
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	stur	w0, [x29, #-60]
	ldr	w9, [x8]
	stur	w9, [x29, #-68]
	ldr	w9, [x8, #4]
	stur	w9, [x29, #-72]
	ldr	w9, [x8, #8]
	stur	w9, [x29, #-76]
	ldr	w8, [x8, #12]
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-68]
	cbz	w8, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-72]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-76]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	error
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	mov	w2, wzr
	str	w2, [sp, #52]                   // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	w2, [sp, #52]                   // 4-byte Folded Reload
	mov	w8, w0
	str	w8, [sp, #80]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	option_find_int_quiet
	ldr	w2, [sp, #52]                   // 4-byte Folded Reload
	mov	w8, w0
	str	w8, [sp, #76]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	option_find_int_quiet
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	mov	w9, w0
	str	w9, [sp, #72]
	ldur	w0, [x29, #-64]
	ldur	w1, [x29, #-68]
	ldur	w2, [x29, #-72]
	ldur	w3, [x29, #-76]
	ldur	w4, [x29, #-28]
	ldur	w5, [x29, #-48]
	ldur	w6, [x29, #-32]
	ldur	w7, [x29, #-36]
	ldur	w14, [x29, #-44]
	ldur	w13, [x29, #-60]
	ldr	w12, [sp, #80]
	ldr	w11, [sp, #76]
	ldr	w10, [sp, #72]
	ldr	x8, [x8, #16]
	ldr	w8, [x8]
	mov	x9, sp
	str	w14, [x9]
	str	w13, [x9, #8]
	str	w12, [x9, #16]
	str	w11, [x9, #24]
	str	w10, [x9, #32]
	str	w8, [x9, #40]
	bl	make_convolutional_layer
	ldr	w2, [sp, #52]                   // 4-byte Folded Reload
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	option_find_int_quiet
	ldr	w2, [sp, #52]                   // 4-byte Folded Reload
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	option_find_float_quiet
	stur	w0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	parse_convolutional, .Lfunc_end0-parse_convolutional
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filters"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"size"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"stride"
	.size	.L.str.2, 7
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"pad"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"padding"
	.size	.L.str.4, 8
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"groups"
	.size	.L.str.5, 7
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"activation"
	.size	.L.str.6, 11
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"logistic"
	.size	.L.str.7, 9
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"Layer before convolutional layer must output image."
	.size	.L.str.8, 52
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"batch_normalize"
	.size	.L.str.9, 16
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"binary"
	.size	.L.str.10, 7
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"xnor"
	.size	.L.str.11, 5
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"flipped"
	.size	.L.str.12, 8
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"dot"
	.size	.L.str.13, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym error
	.addrsig_sym make_convolutional_layer
	.addrsig_sym option_find_float_quiet