	.text
	.globl	alphanum_to_int                 // -- Begin function alphanum_to_int
	.p2align	2
	.type	alphanum_to_int,@function
alphanum_to_int:                        // @alphanum_to_int
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	subs	w8, w8, #58
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldrb	w8, [sp, #15]
	subs	w8, w8, #48
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldrb	w8, [sp, #15]
	subs	w8, w8, #87
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	alphanum_to_int, .Lfunc_end0-alphanum_to_int
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig