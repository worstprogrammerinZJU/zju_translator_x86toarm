	.text
	.globl	jv_mem_free                     // -- Begin function jv_mem_free
	.p2align	2
	.type	jv_mem_free,@function
jv_mem_free:                            // @jv_mem_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_free, .Lfunc_end0-jv_mem_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free