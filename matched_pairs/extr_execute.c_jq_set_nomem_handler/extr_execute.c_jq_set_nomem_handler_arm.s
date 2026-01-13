	.text
	.globl	jq_set_nomem_handler            // -- Begin function jq_set_nomem_handler
	.p2align	2
	.type	jq_set_nomem_handler,@function
jq_set_nomem_handler:                   // @jq_set_nomem_handler
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	jv_nomem_handler
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_set_nomem_handler, .Lfunc_end0-jq_set_nomem_handler
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_nomem_handler