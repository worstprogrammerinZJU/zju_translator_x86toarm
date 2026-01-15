	.text
	.globl	draw_box                        // -- Begin function draw_box
	.p2align	2
	.type	draw_box,@function
draw_box:                               // @draw_box
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	str	w5, [sp, #16]
	str	s0, [sp, #12]
	str	s1, [sp, #8]
	str	s2, [sp, #4]
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #28]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.lt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	str	wzr, [sp, #20]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.lt	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	str	wzr, [sp, #24]
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.lt	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	str	wzr, [sp, #16]
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.lt	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #28]
	str	w8, [sp]
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.gt	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #40]
	ldr	w10, [sp]
	ldr	w11, [sp, #24]
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w12, [sp, #32]
	mov	w11, wzr
	mul	w12, w11, w12
	ldr	w13, [sp, #36]
	mul	w12, w12, w13
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #40]
	ldr	w10, [sp]
	ldr	w12, [sp, #16]
	ldr	w13, [sp, #32]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	ldr	w12, [sp, #36]
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #40]
	ldr	w10, [sp]
	ldr	w11, [sp, #24]
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w12, [sp, #32]
	mov	w11, #1
	mul	w12, w11, w12
	ldr	w13, [sp, #36]
	mul	w12, w12, w13
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #40]
	ldr	w10, [sp]
	ldr	w12, [sp, #16]
	ldr	w13, [sp, #32]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	ldr	w12, [sp, #36]
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #40]
	ldr	w10, [sp]
	ldr	w11, [sp, #24]
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w12, [sp, #32]
	mov	w11, #2
	mul	w12, w11, w12
	ldr	w13, [sp, #36]
	mul	w12, w12, w13
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #40]
	ldr	w10, [sp]
	ldr	w12, [sp, #16]
	ldr	w13, [sp, #32]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	ldr	w12, [sp, #36]
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_17
.LBB0_20:
	ldr	w8, [sp, #24]
	str	w8, [sp]
	b	.LBB0_21
.LBB0_21:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.gt	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #28]
	ldr	w11, [sp]
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w12, [sp, #32]
	mov	w11, wzr
	mul	w12, w11, w12
	ldr	w13, [sp, #36]
	mul	w12, w12, w13
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #20]
	ldr	w12, [sp]
	ldr	w13, [sp, #32]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	ldr	w12, [sp, #36]
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #28]
	ldr	w11, [sp]
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w12, [sp, #32]
	mov	w11, #1
	mul	w12, w11, w12
	ldr	w13, [sp, #36]
	mul	w12, w12, w13
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #20]
	ldr	w12, [sp]
	ldr	w13, [sp, #32]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	ldr	w12, [sp, #36]
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #28]
	ldr	w11, [sp]
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w12, [sp, #32]
	mov	w11, #2
	mul	w12, w11, w12
	ldr	w13, [sp, #36]
	mul	w12, w12, w13
	add	w10, w10, w12
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #40]
	ldr	w10, [sp, #20]
	ldr	w12, [sp]
	ldr	w13, [sp, #32]
	mul	w12, w12, w13
	add	w10, w10, w12
	ldr	w12, [sp, #32]
	mul	w11, w11, w12
	ldr	w12, [sp, #36]
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_21
.LBB0_24:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	draw_box, .Lfunc_end0-draw_box
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig