	.text
	.p2align	2                               // -- Begin function jvp_string_free
	.type	jvp_string_free,@function
jvp_string_free:                        // @jvp_string_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jvp_string_ptr
	str	x0, [sp]
	ldr	x0, [sp]
	bl	jvp_refcnt_dec
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp]
	bl	jv_mem_free
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_string_free, .Lfunc_end0-jvp_string_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_free
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jv_mem_free