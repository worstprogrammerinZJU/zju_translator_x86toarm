	.text
	.globl	jv_identical                    // -- Begin function jv_identical
	.p2align	2
	.type	jv_identical,@function
jv_identical:                           // @jv_identical
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	str	x0, [sp]                        // 8-byte Folded Spill
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x0]
	ldr	x9, [x1]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_8
.LBB0_4:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	q0, [x8]
	sub	x0, x29, #48
	stur	q0, [x29, #-48]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-32]
	bl	JVP_IS_ALLOCATED
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp]                        // 8-byte Folded Reload
	add	x0, x9, #24
	add	x1, x8, #24
	mov	w2, #8
	bl	memcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x0, sp, #48
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	bl	jv_free
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x0, sp, #16
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	bl	jv_free
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	jv_identical, .Lfunc_end0-jv_identical
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_IS_ALLOCATED
	.addrsig_sym memcmp
	.addrsig_sym jv_free