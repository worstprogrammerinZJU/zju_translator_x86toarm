	.text
	.p2align	2                               // -- Begin function sane_layout
	.type	sane_layout,@function
sane_layout:                            // @sane_layout
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	adrp	x9, AV_CH_LAYOUT_SURROUND
	ldr	w9, [x9, :lo12:AV_CH_LAYOUT_SURROUND]
	and	w8, w8, w9
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_2:
	ldr	w8, [sp, #8]
	adrp	x9, AV_CH_FRONT_LEFT
	ldr	w9, [x9, :lo12:AV_CH_FRONT_LEFT]
	adrp	x10, AV_CH_FRONT_RIGHT
	ldr	w10, [x10, :lo12:AV_CH_FRONT_RIGHT]
	orr	w9, w9, w10
	and	w0, w8, w9
	bl	even
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_4:
	ldr	w8, [sp, #8]
	adrp	x9, AV_CH_SIDE_LEFT
	ldr	w9, [x9, :lo12:AV_CH_SIDE_LEFT]
	adrp	x10, AV_CH_SIDE_RIGHT
	ldr	w10, [x10, :lo12:AV_CH_SIDE_RIGHT]
	orr	w9, w9, w10
	and	w0, w8, w9
	bl	even
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_6:
	ldr	w8, [sp, #8]
	adrp	x9, AV_CH_BACK_LEFT
	ldr	w9, [x9, :lo12:AV_CH_BACK_LEFT]
	adrp	x10, AV_CH_BACK_RIGHT
	ldr	w10, [x10, :lo12:AV_CH_BACK_RIGHT]
	orr	w9, w9, w10
	and	w0, w8, w9
	bl	even
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_8:
	ldr	w8, [sp, #8]
	adrp	x9, AV_CH_FRONT_LEFT_OF_CENTER
	ldr	w9, [x9, :lo12:AV_CH_FRONT_LEFT_OF_CENTER]
	adrp	x10, AV_CH_FRONT_RIGHT_OF_CENTER
	ldr	w10, [x10, :lo12:AV_CH_FRONT_RIGHT_OF_CENTER]
	orr	w9, w9, w10
	and	w0, w8, w9
	bl	even
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_10:
	ldr	w0, [sp, #8]
	bl	av_get_channel_layout_nb_channels
	adrp	x8, SWR_CH_MAX
	ldr	x8, [x8, :lo12:SWR_CH_MAX]
	subs	x8, x0, x8
	b.lt	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_12:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sane_layout, .Lfunc_end0-sane_layout
                                        // -- End function
	.type	AV_CH_LAYOUT_SURROUND,@object   // @AV_CH_LAYOUT_SURROUND
	.bss
	.globl	AV_CH_LAYOUT_SURROUND
	.p2align	2
AV_CH_LAYOUT_SURROUND:
	.word	0                               // 0x0
	.size	AV_CH_LAYOUT_SURROUND, 4
	.type	AV_CH_FRONT_LEFT,@object        // @AV_CH_FRONT_LEFT
	.globl	AV_CH_FRONT_LEFT
	.p2align	2
AV_CH_FRONT_LEFT:
	.word	0                               // 0x0
	.size	AV_CH_FRONT_LEFT, 4
	.type	AV_CH_FRONT_RIGHT,@object       // @AV_CH_FRONT_RIGHT
	.globl	AV_CH_FRONT_RIGHT
	.p2align	2
AV_CH_FRONT_RIGHT:
	.word	0                               // 0x0
	.size	AV_CH_FRONT_RIGHT, 4
	.type	AV_CH_SIDE_LEFT,@object         // @AV_CH_SIDE_LEFT
	.globl	AV_CH_SIDE_LEFT
	.p2align	2
AV_CH_SIDE_LEFT:
	.word	0                               // 0x0
	.size	AV_CH_SIDE_LEFT, 4
	.type	AV_CH_SIDE_RIGHT,@object        // @AV_CH_SIDE_RIGHT
	.globl	AV_CH_SIDE_RIGHT
	.p2align	2
AV_CH_SIDE_RIGHT:
	.word	0                               // 0x0
	.size	AV_CH_SIDE_RIGHT, 4
	.type	AV_CH_BACK_LEFT,@object         // @AV_CH_BACK_LEFT
	.globl	AV_CH_BACK_LEFT
	.p2align	2
AV_CH_BACK_LEFT:
	.word	0                               // 0x0
	.size	AV_CH_BACK_LEFT, 4
	.type	AV_CH_BACK_RIGHT,@object        // @AV_CH_BACK_RIGHT
	.globl	AV_CH_BACK_RIGHT
	.p2align	2
AV_CH_BACK_RIGHT:
	.word	0                               // 0x0
	.size	AV_CH_BACK_RIGHT, 4
	.type	AV_CH_FRONT_LEFT_OF_CENTER,@object // @AV_CH_FRONT_LEFT_OF_CENTER
	.globl	AV_CH_FRONT_LEFT_OF_CENTER
	.p2align	2
AV_CH_FRONT_LEFT_OF_CENTER:
	.word	0                               // 0x0
	.size	AV_CH_FRONT_LEFT_OF_CENTER, 4
	.type	AV_CH_FRONT_RIGHT_OF_CENTER,@object // @AV_CH_FRONT_RIGHT_OF_CENTER
	.globl	AV_CH_FRONT_RIGHT_OF_CENTER
	.p2align	2
AV_CH_FRONT_RIGHT_OF_CENTER:
	.word	0                               // 0x0
	.size	AV_CH_FRONT_RIGHT_OF_CENTER, 4
	.type	SWR_CH_MAX,@object              // @SWR_CH_MAX
	.globl	SWR_CH_MAX
	.p2align	3
SWR_CH_MAX:
	.xword	0                               // 0x0
	.size	SWR_CH_MAX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sane_layout
	.addrsig_sym even
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym AV_CH_LAYOUT_SURROUND
	.addrsig_sym AV_CH_FRONT_LEFT
	.addrsig_sym AV_CH_FRONT_RIGHT
	.addrsig_sym AV_CH_SIDE_LEFT
	.addrsig_sym AV_CH_SIDE_RIGHT
	.addrsig_sym AV_CH_BACK_LEFT
	.addrsig_sym AV_CH_BACK_RIGHT
	.addrsig_sym AV_CH_FRONT_LEFT_OF_CENTER
	.addrsig_sym AV_CH_FRONT_RIGHT_OF_CENTER
	.addrsig_sym SWR_CH_MAX