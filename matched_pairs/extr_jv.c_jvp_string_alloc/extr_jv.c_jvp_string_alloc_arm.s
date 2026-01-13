	.text
	.p2align	2                               // -- Begin function jvp_string_alloc
	.type	jvp_string_alloc,@function
jvp_string_alloc:                       // @jvp_string_alloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x8, x8, #16
	add	x0, x8, #1
	bl	jv_mem_alloc
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_string_alloc, .Lfunc_end0-jvp_string_alloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_alloc
	.addrsig_sym jv_mem_alloc