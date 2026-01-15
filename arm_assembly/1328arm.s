	.text
	.p2align	2                               // -- Begin function jv_mem_invalidate
	.type	jv_mem_invalidate,@function
jv_mem_invalidate:                      // @jv_mem_invalidate
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x9, x8, #1
	str	x9, [sp, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, jv_mem_uninitialised
	ldr	w8, [x9, :lo12:jv_mem_uninitialised]
	ldr	w9, [x9, :lo12:jv_mem_uninitialised]
	eor	w10, w8, w9
	ldr	x9, [sp, #8]
	add	x8, x9, #1
	str	x8, [sp, #8]
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB0_1
.LBB0_3:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_mem_invalidate, .Lfunc_end0-jv_mem_invalidate
                                        // -- End function
	.type	jv_mem_uninitialised,@object    // @jv_mem_uninitialised
	.bss
	.globl	jv_mem_uninitialised
	.p2align	2
jv_mem_uninitialised:
	.word	0                               // 0x0
	.size	jv_mem_uninitialised, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_invalidate
	.addrsig_sym jv_mem_uninitialised