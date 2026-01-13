	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function set
.LCPI0_0:
	.xword	0x405fc00000000000              // double 127
.LCPI0_1:
	.xword	0x41dfffffffc00000              // double 2147483647
.LCPI0_2:
	.xword	0x40dfffc000000000              // double 32767
	.text
	.p2align	2
	.type	set,@function
set:                                    // @set
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	str	w4, [sp, #24]
	str	d0, [sp, #16]
	ldr	w0, [sp, #24]
	bl	av_sample_fmt_is_planar
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #24]
	mov	w1, wzr
	bl	av_get_alt_sample_fmt
	str	w0, [sp, #24]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	add	w8, w8, w9
	stur	w8, [x29, #-16]
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #4
	b.hi	.LBB0_10
// %bb.4:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_5:
	ldr	d0, [sp, #16]
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	bl	lrint
	bl	av_clip_uint8
	ldr	x8, [sp, #8]
	ldursw	x9, [x29, #-16]
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_6:
	ldr	d0, [sp, #16]
	adrp	x8, .LCPI0_2
	ldr	d1, [x8, :lo12:.LCPI0_2]
	fmul	d0, d0, d1
	bl	lrint
	bl	av_clip_int16
	ldr	x8, [sp, #8]
	ldursw	x9, [x29, #-16]
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_7:
	ldr	d0, [sp, #16]
	adrp	x8, .LCPI0_1
	ldr	d1, [x8, :lo12:.LCPI0_1]
	fmul	d0, d0, d1
	bl	llrint
	bl	av_clipl_int32
	ldr	x8, [sp, #8]
	ldursw	x9, [x29, #-16]
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_8:
	ldr	d0, [sp, #16]
	fcvt	s0, d0
	ldr	x8, [sp, #8]
	ldursw	x9, [x29, #-16]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_9:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldursw	x10, [x29, #-16]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_11
.LBB0_10:
	mov	w0, wzr
	bl	av_assert2
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	set, .Lfunc_end0-set
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_9-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_alt_sample_fmt
	.addrsig_sym av_clip_uint8
	.addrsig_sym lrint
	.addrsig_sym av_clip_int16
	.addrsig_sym av_clipl_int32
	.addrsig_sym llrint
	.addrsig_sym av_assert2