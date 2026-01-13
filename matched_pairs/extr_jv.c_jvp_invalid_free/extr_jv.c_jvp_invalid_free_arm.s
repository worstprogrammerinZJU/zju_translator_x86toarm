	.text
	.p2align	2                               // -- Begin function jvp_invalid_free
	.type	jvp_invalid_free,@function
jvp_invalid_free:                       // @jvp_invalid_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, JV_KIND_INVALID
	ldr	w1, [x8, :lo12:JV_KIND_INVALID]
	ldr	x0, [sp, #8]
	bl	JVP_HAS_KIND
	bl	assert
	adrp	x8, JVP_FLAGS_INVALID_MSG
	ldr	w1, [x8, :lo12:JVP_FLAGS_INVALID_MSG]
	ldr	x0, [sp, #8]
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	jvp_refcnt_dec
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_free
	ldr	x0, [sp, #8]
	bl	jv_mem_free
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_invalid_free, .Lfunc_end0-jvp_invalid_free
                                        // -- End function
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.bss
	.globl	JV_KIND_INVALID
	.p2align	2
JV_KIND_INVALID:
	.word	0                               // 0x0
	.size	JV_KIND_INVALID, 4
	.type	JVP_FLAGS_INVALID_MSG,@object   // @JVP_FLAGS_INVALID_MSG
	.globl	JVP_FLAGS_INVALID_MSG
	.p2align	2
JVP_FLAGS_INVALID_MSG:
	.word	0                               // 0x0
	.size	JVP_FLAGS_INVALID_MSG, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_invalid_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JVP_FLAGS_INVALID_MSG