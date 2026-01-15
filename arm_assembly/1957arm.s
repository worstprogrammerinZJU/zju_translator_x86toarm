	.text
	.p2align	2                               // -- Begin function valid_pointer_binop
	.type	valid_pointer_binop,@function
valid_pointer_binop:                    // @valid_pointer_binop
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #45
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #60
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #62
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #128
	subs	w8, w8, #3
	b.hi	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_5:
	str	wzr, [sp, #12]
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	valid_pointer_binop, .Lfunc_end0-valid_pointer_binop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym valid_pointer_binop