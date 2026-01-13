	.text
	.globl	decFloatIsLogical               // -- Begin function decFloatIsLogical
	.p2align	2
	.type	decFloatIsLogical,@function
decFloatIsLogical:                      // @decFloatIsLogical
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	DFISUINT01
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	DFISCC01
	mov	w8, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w0, w8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsLogical, .Lfunc_end0-decFloatIsLogical
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISUINT01
	.addrsig_sym DFISCC01