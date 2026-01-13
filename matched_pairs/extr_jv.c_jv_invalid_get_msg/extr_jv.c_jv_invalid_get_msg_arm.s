	.text
	.globl	jv_invalid_get_msg              // -- Begin function jv_invalid_get_msg
	.p2align	2
	.type	jv_invalid_get_msg,@function
jv_invalid_get_msg:                     // @jv_invalid_get_msg
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	adrp	x8, JV_KIND_INVALID
	ldr	w1, [x8, :lo12:JV_KIND_INVALID]
	ldr	x0, [sp, #16]
	bl	JVP_HAS_KIND
	bl	assert
	adrp	x8, JVP_FLAGS_INVALID_MSG
	ldr	w1, [x8, :lo12:JVP_FLAGS_INVALID_MSG]
	ldr	x0, [sp, #16]
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_copy
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	bl	jv_null
	str	x0, [sp]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	jv_free
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_invalid_get_msg, .Lfunc_end0-jv_invalid_get_msg
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
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jv_copy
	.addrsig_sym jv_null
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JVP_FLAGS_INVALID_MSG