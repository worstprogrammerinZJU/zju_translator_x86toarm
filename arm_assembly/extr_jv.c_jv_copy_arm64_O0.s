	.text
	.globl	jv_copy                         // -- Begin function jv_copy
	.p2align	2
	.type	jv_copy,@function
jv_copy:                                // @jv_copy
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w0
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	mov	w0, w8
	bl	JVP_IS_ALLOCATED
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #8]
	bl	jvp_refcnt_inc
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_copy, .Lfunc_end0-jv_copy
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_IS_ALLOCATED
	.addrsig_sym jvp_refcnt_inc