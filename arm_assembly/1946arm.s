	.text
	.p2align	2                               // -- Begin function same_arith_type
	.type	same_arith_type,@function
same_arith_type:                        // @same_arith_type
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [x8]
	ldr	x8, [sp, #16]
	ldr	x10, [x8]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	same_arith_type, .Lfunc_end0-same_arith_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym same_arith_type