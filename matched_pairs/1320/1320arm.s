	.text
	.globl	jv_mem_calloc_unguarded         // -- Begin function jv_mem_calloc_unguarded
	.p2align	2
	.type	jv_mem_calloc_unguarded,@function
jv_mem_calloc_unguarded:                // @jv_mem_calloc_unguarded
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	calloc
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_calloc_unguarded, .Lfunc_end0-jv_mem_calloc_unguarded
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc