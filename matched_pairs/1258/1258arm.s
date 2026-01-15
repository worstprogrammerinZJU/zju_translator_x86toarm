	.text
	.globl	jv_string_sized                 // -- Begin function jv_string_sized
	.p2align	2
	.type	jv_string_sized,@function
jv_string_sized:                        // @jv_string_sized
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x1, x8, x9
	bl	jvp_utf8_is_valid
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	jvp_string_new
	str	w0, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	jvp_string_copy_replace_bad
	str	w0, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_string_sized, .Lfunc_end0-jv_string_sized
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_is_valid
	.addrsig_sym jvp_string_new
	.addrsig_sym jvp_string_copy_replace_bad