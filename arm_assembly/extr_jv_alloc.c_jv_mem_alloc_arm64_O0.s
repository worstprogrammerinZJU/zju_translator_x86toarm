	.text
	.globl	jv_mem_alloc                    // -- Begin function jv_mem_alloc
	.p2align	2
	.type	jv_mem_alloc,@function
jv_mem_alloc:                           // @jv_mem_alloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	malloc
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	memory_exhausted
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_alloc, .Lfunc_end0-jv_mem_alloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym memory_exhausted