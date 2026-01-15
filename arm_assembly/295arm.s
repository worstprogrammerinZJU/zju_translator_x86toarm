	.text
	.globl	gen_lambda                      // -- Begin function gen_lambda
	.p2align	2
	.type	gen_lambda,@function
gen_lambda:                             // @gen_lambda
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	bl	gen_noop
	mov	w1, w0
	ldur	w2, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	gen_function
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_lambda, .Lfunc_end0-gen_lambda
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"@lambda"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_function
	.addrsig_sym gen_noop