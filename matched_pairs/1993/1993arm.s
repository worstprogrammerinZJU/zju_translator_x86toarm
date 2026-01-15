	.text
	.globl	parse_normalization             // -- Begin function parse_normalization
	.p2align	2
	.type	parse_normalization,@function
parse_normalization:                    // @parse_normalization
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, wzr
	str	w2, [sp]                        // 4-byte Folded Spill
	bl	option_find_float
	ldr	w2, [sp]                        // 4-byte Folded Reload
	str	s0, [sp, #20]
	ldr	x0, [sp, #24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_float
	str	s0, [sp, #16]
	ldr	x0, [sp, #24]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w2, #1
	bl	option_find_float
	str	s0, [sp, #12]
	ldr	x0, [sp, #24]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, #5
	bl	option_find_int
	str	w0, [sp, #8]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-16]
	ldr	w4, [sp, #8]
	ldr	s0, [sp, #20]
	ldr	s1, [sp, #16]
	ldr	s2, [sp, #12]
	bl	make_normalization_layer
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_normalization, .Lfunc_end0-parse_normalization
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alpha"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"beta"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"kappa"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"size"
	.size	.L.str.3, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_float
	.addrsig_sym option_find_int
	.addrsig_sym make_normalization_layer