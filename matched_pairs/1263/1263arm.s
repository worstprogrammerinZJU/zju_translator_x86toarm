	.text
	.p2align	2                               // -- Begin function jvp_array_alloc
	.type	jvp_array_alloc,@function
jvp_array_alloc:                        // @jvp_array_alloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	mov	w9, w8
	mov	x8, #4
	mul	x8, x8, x9
	add	x8, x8, #24
	mov	w0, w8
	bl	jv_mem_alloc
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #16]
	ldr	x8, [sp]
	str	xzr, [x8, #8]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_array_alloc, .Lfunc_end0-jvp_array_alloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_alloc
	.addrsig_sym jv_mem_alloc