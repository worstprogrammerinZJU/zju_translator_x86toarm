	.text
	.globl	decFloatIsFinite                // -- Begin function decFloatIsFinite
	.p2align	2
	.type	decFloatIsFinite,@function
decFloatIsFinite:                       // @decFloatIsFinite
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	DFISSPECIAL
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsFinite, .Lfunc_end0-decFloatIsFinite
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL