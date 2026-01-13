	.text
	.p2align	2                               // -- Begin function jvp_clamp_slice_params
	.type	jvp_clamp_slice_params,@function
jvp_clamp_slice_params:                 // @jvp_clamp_slice_params
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	add	w8, w8, w9
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	str	wzr, [x8]
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.le	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_12
.LBB0_12:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_clamp_slice_params, .Lfunc_end0-jvp_clamp_slice_params
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_clamp_slice_params