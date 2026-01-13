	.text
	.globl	jq_teardown                     // -- Begin function jq_teardown
	.p2align	2
	.type	jq_teardown,@function
jq_teardown:                            // @jq_teardown
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x0, [sp]
	bl	jq_reset
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	bl	bytecode_free
	ldr	x8, [sp]
	str	xzr, [x8, #8]
	ldr	x8, [sp]
	ldr	w0, [x8]
	bl	jv_free
	ldr	x0, [sp]
	bl	jv_mem_free
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_teardown, .Lfunc_end0-jq_teardown
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_reset
	.addrsig_sym bytecode_free
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free