	.text
	.globl	jv_mem_calloc                   // -- Begin function jv_mem_calloc
	.p2align	2
	.type	jv_mem_calloc,@function
jv_mem_calloc:                          // @jv_mem_calloc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	calloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	memory_exhausted
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_mem_calloc, .Lfunc_end0-jv_mem_calloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym memory_exhausted