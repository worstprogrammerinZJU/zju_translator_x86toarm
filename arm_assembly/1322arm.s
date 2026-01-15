	.text
	.globl	jv_mem_realloc                  // -- Begin function jv_mem_realloc
	.p2align	2
	.type	jv_mem_realloc,@function
jv_mem_realloc:                         // @jv_mem_realloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	realloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	memory_exhausted
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_realloc, .Lfunc_end0-jv_mem_realloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc
	.addrsig_sym memory_exhausted