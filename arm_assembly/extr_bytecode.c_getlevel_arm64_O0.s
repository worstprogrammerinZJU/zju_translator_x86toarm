	.text
	.p2align	2                               // -- Begin function getlevel
	.type	getlevel,@function
getlevel:                               // @getlevel
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	getlevel, .Lfunc_end0-getlevel
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getlevel