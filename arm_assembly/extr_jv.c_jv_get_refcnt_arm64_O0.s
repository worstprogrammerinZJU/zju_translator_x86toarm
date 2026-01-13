	.text
	.globl	jv_get_refcnt                   // -- Begin function jv_get_refcnt
	.p2align	2
	.type	jv_get_refcnt,@function
jv_get_refcnt:                          // @jv_get_refcnt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	JVP_IS_ALLOCATED
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	w8, [x8]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_get_refcnt, .Lfunc_end0-jv_get_refcnt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_IS_ALLOCATED