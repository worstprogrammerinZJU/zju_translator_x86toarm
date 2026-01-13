	.text
	.p2align	2                               // -- Begin function comp_init
	.type	comp_init,@function
comp_init:                              // @comp_init
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp]
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_5
.LBB0_2:
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_5
.LBB0_4:
	str	wzr, [sp, #28]
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	comp_init, .Lfunc_end0-comp_init
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym comp_init