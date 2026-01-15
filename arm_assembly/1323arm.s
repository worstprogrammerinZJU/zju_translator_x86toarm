	.text
	.globl	jv_mem_strdup                   // -- Begin function jv_mem_strdup
	.p2align	2
	.type	jv_mem_strdup,@function
jv_mem_strdup:                          // @jv_mem_strdup
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	strdup
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
	.size	jv_mem_strdup, .Lfunc_end0-jv_mem_strdup
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strdup
	.addrsig_sym memory_exhausted