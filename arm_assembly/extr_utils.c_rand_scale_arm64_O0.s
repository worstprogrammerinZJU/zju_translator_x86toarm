	.text
	.globl	rand_scale                      // -- Begin function rand_scale
	.p2align	2
	.type	rand_scale,@function
rand_scale:                             // @rand_scale
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	mov	w0, #1
	bl	rand_uniform
	str	s0, [sp, #4]
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	s0, [sp, #4]
	fcvt	d1, s0
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	rand_scale, .Lfunc_end0-rand_scale
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_uniform
	.addrsig_sym rand