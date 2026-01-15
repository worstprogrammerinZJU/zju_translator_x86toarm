	.text
	.globl	jvp_freedtoa                    // -- Begin function jvp_freedtoa
	.p2align	2
	.type	jvp_freedtoa,@function
jvp_freedtoa:                           // @jvp_freedtoa
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w9, [x8]
	ldr	x8, [sp, #8]
	str	w9, [x8, #4]
	mov	w8, #1
	lsl	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	Bfree
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_freedtoa, .Lfunc_end0-jvp_freedtoa
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Bfree