	.text
	.p2align	2                               // -- Begin function is_poweroftwo
	.type	is_poweroftwo,@function
is_poweroftwo:                          // @is_poweroftwo
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, wzr
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #12]
	subs	w9, w9, #1
	ands	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	is_poweroftwo, .Lfunc_end0-is_poweroftwo
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_poweroftwo