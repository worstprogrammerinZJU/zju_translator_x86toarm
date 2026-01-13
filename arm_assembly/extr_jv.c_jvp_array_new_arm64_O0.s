	.text
	.p2align	2                               // -- Begin function jvp_array_new
	.type	jvp_array_new,@function
jvp_array_new:                          // @jvp_array_new
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	adrp	x9, JVP_FLAGS_ARRAY
	ldrsw	x9, [x9, :lo12:JVP_FLAGS_ARRAY]
	str	x9, [x8]
	str	wzr, [x8, #8]
	str	wzr, [x8, #12]
	str	wzr, [x8, #16]
	ldur	w0, [x29, #-4]
	bl	jvp_array_alloc
	ldr	x9, [sp]                        // 8-byte Folded Reload
	mov	w8, w0
	str	w8, [x9, #20]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_array_new, .Lfunc_end0-jvp_array_new
                                        // -- End function
	.type	JVP_FLAGS_ARRAY,@object         // @JVP_FLAGS_ARRAY
	.bss
	.globl	JVP_FLAGS_ARRAY
	.p2align	2
JVP_FLAGS_ARRAY:
	.word	0                               // 0x0
	.size	JVP_FLAGS_ARRAY, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_new
	.addrsig_sym jvp_array_alloc
	.addrsig_sym JVP_FLAGS_ARRAY