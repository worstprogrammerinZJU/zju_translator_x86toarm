	.text
	.globl	jv_mem_alloc_unguarded          // -- Begin function jv_mem_alloc_unguarded
	.p2align	2
	.type	jv_mem_alloc_unguarded,@function
jv_mem_alloc_unguarded:                 // @jv_mem_alloc_unguarded
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	malloc
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_alloc_unguarded, .Lfunc_end0-jv_mem_alloc_unguarded
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc