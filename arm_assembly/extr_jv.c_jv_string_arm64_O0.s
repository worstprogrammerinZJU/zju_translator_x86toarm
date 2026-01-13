	.text
	.globl	jv_string                       // -- Begin function jv_string
	.p2align	2
	.type	jv_string,@function
jv_string:                              // @jv_string
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	strlen
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	jv_string_sized
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_string, .Lfunc_end0-jv_string
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_string_sized
	.addrsig_sym strlen