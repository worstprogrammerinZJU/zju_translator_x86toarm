	.text
	.globl	jq_compile                      // -- Begin function jq_compile
	.p2align	2
	.type	jq_compile,@function
jq_compile:                             // @jq_compile
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	bl	jv_object
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	jq_compile_args
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_compile, .Lfunc_end0-jq_compile
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_compile_args
	.addrsig_sym jv_object