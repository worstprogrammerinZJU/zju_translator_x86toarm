	.text
	.globl	parse_iseg                      // -- Begin function parse_iseg
	.p2align	2
	.type	parse_iseg,@function
parse_iseg:                             // @parse_iseg
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x1, [sp]                        // 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #20
	bl	option_find_int
	str	w0, [sp, #12]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #32
	bl	option_find_int
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #8]
	ldr	w0, [x8, #16]
	ldr	w1, [x8, #12]
	ldr	w2, [x8, #8]
	ldr	w3, [sp, #12]
	ldr	w4, [sp, #8]
	bl	make_iseg_layer
	ldr	x1, [sp]                        // 8-byte Folded Reload
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x9, [x1]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_iseg, .Lfunc_end0-parse_iseg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"classes"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"ids"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_iseg_layer
	.addrsig_sym assert