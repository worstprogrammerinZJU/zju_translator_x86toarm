	.text
	.p2align	2                               // -- Begin function is_valid_ucn
	.type	is_valid_ucn,@function
is_valid_ucn:                           // @is_valid_ucn
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w9, [sp, #8]
	mov	w8, #55296
	subs	w8, w8, w9
	b.hi	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	subs	w8, w8, #14, lsl #12            // =57344
	b.hs	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_8
.LBB0_3:
	ldr	w10, [sp, #8]
	mov	w9, #160
	mov	w8, #1
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ls	.LBB0_7
	b	.LBB0_4
.LBB0_4:
	ldr	w9, [sp, #8]
	mov	w8, #1
	subs	w9, w9, #36
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	w9, [sp, #8]
	mov	w8, #1
	subs	w9, w9, #64
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]
	subs	w8, w8, #96
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	is_valid_ucn, .Lfunc_end0-is_valid_ucn
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_valid_ucn