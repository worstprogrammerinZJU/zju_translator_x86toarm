	.text
	.p2align	2                               // -- Begin function gen_format
	.type	gen_format,@function
gen_format:                             // @gen_format
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	gen_const
	bl	gen_lambda
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	gen_call
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_format, .Lfunc_end0-gen_format
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"format"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_format
	.addrsig_sym BLOCK
	.addrsig_sym gen_call
	.addrsig_sym gen_lambda
	.addrsig_sym gen_const