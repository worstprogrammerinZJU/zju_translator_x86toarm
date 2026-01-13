	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function resample_init
.LCPI0_0:
	.xword	0x3fef0a3d70a3d70a              // double 0.96999999999999997
	.text
	.p2align	2
	.type	resample_init,@function
resample_init:                          // @resample_init
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	ldr	w9, [x29, #16]
	ldr	w8, [x29, #24]
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	w3, [x29, #-28]
	stur	w4, [x29, #-32]
	stur	w5, [x29, #-36]
	stur	d0, [x29, #-48]
	stur	w6, [x29, #-52]
	stur	w7, [x29, #-56]
	stur	d1, [x29, #-64]
	str	d2, [sp, #72]
	str	w9, [sp, #68]
	str	w8, [sp, #64]
	ldur	d0, [x29, #-48]
	fcmp	d0, #0.0
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	d0, [x29, #-48]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	str	d0, [sp, #56]
	ldur	s1, [x29, #-20]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	d1, [sp, #56]
	fmul	d0, d0, d1
	ldur	s2, [x29, #-24]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	fmov	d0, #1.00000000
	bl	FFMIN
	str	d0, [sp, #48]
	ldur	w9, [x29, #-32]
	mov	w8, #1
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	lsl	w8, w8, w9
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	str	w8, [sp, #40]
	ldur	s1, [x29, #-28]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	d1, [sp, #48]
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	bl	ceil
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
                                        // kill: def $w0 killed $w0 killed $x0
	bl	FFMAX
	str	w0, [sp, #36]
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #36]
	mov	w1, #2
	bl	FFALIGN
	mov	w8, w0
	str	w8, [sp, #36]
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #64]
	cbz	w8, .LBB0_9
	b	.LBB0_6
.LBB0_6:
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-24]
	adrp	x8, INT_MAX
	ldr	w4, [x8, :lo12:INT_MAX]
	add	x0, sp, #32
	add	x1, sp, #28
	bl	av_reduce
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.gt	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #44]
	ldr	w10, [sp, #32]
	sdiv	w9, w9, w10
	mul	w8, w8, w9
	str	w8, [sp, #40]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_17
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	d0, [x8, #8]
	ldr	d1, [sp, #48]
	fcmp	d0, d1
	b.ne	.LBB0_17
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	b.ne	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	d0, [x8, #32]
	ldur	d1, [x29, #-64]
	fcmp	d0, d1
	b.eq	.LBB0_33
	b	.LBB0_17
.LBB0_17:
	sub	x0, x29, #16
	bl	resample_free
	mov	w0, #104
	bl	av_mallocz
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_42
.LBB0_19:
	ldur	w8, [x29, #-52]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #20]
	bl	av_get_bytes_per_sample
	ldur	x8, [x29, #-16]
	str	w0, [x8, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_23
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #130
	subs	w8, w8, #1
	b.ls	.LBB0_24
	b	.LBB0_25
.LBB0_22:
	ldur	x9, [x29, #-16]
	mov	w8, #15
	str	w8, [x9, #44]
	b	.LBB0_26
.LBB0_23:
	ldur	x9, [x29, #-16]
	mov	w8, #30
	str	w8, [x9, #44]
	b	.LBB0_26
.LBB0_24:
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #44]
	b	.LBB0_26
.LBB0_25:
	adrp	x8, AV_LOG_ERROR
	ldr	w1, [x8, :lo12:AV_LOG_ERROR]
	mov	x0, xzr
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	av_log
	mov	w0, wzr
	bl	av_assert0
	b	.LBB0_26
.LBB0_26:
	ldur	s1, [x29, #-28]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	d1, [sp, #48]
	fdiv	d0, d0, d1
	adrp	x8, INT32_MAX
	ldr	w8, [x8, :lo12:INT32_MAX]
	mov	w9, #256
	sdiv	w8, w8, w9
	scvtf	d1, w8
	fcmp	d0, d1
	b.le	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, AV_LOG_ERROR
	ldr	w1, [x8, :lo12:AV_LOG_ERROR]
	mov	x0, xzr
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	av_log
	b	.LBB0_41
.LBB0_28:
	ldr	w8, [sp, #44]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	ldr	x8, [sp, #48]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	w8, [sp, #36]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	mov	w1, #8
	bl	FFALIGN
	mov	w8, w0
	ldur	x9, [x29, #-16]
	str	w8, [x9, #48]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #48]
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #40]
	mul	w1, w8, w9
	bl	av_calloc
	ldur	x8, [x29, #-16]
	str	x0, [x8, #80]
	ldur	w8, [x29, #-56]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #32]
	ldr	w8, [sp, #40]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #52]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #80]
	cbnz	x8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_41
.LBB0_30:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #80]
	ldr	d0, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	w3, [x8, #48]
	ldr	w4, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #44]
	mov	w8, #1
	lsl	w5, w8, w9
	ldur	w6, [x29, #-56]
	ldur	d1, [x29, #-64]
	bl	build_filter
	cbz	x0, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	b	.LBB0_41
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #80]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #48]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	add	w9, w9, #1
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #80]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	subs	w8, w8, #1
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #40]
	mul	w2, w8, w9
	bl	memcpy
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #80]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #48]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #80]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #48]
	subs	w9, w9, #1
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #40]
	bl	memcpy
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #96]
	ldur	x8, [x29, #-16]
	add	x0, x8, #56
	ldur	x8, [x29, #-16]
	add	x1, x8, #60
	ldur	w2, [x29, #-20]
	ldur	w8, [x29, #-24]
	ldr	w9, [sp, #44]
	mul	w3, w8, w9
	adrp	x8, INT32_MAX
	ldr	w8, [x8, :lo12:INT32_MAX]
	mov	w9, #2
	sdiv	w4, w8, w9
	bl	av_reduce
	cbnz	w0, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	b	.LBB0_41
.LBB0_35:
	b	.LBB0_36
.LBB0_36:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #60]
	mov	w8, #0
	subs	w9, w9, #256, lsl #12           // =1048576
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_38
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_36 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	subs	w8, w8, #256, lsl #12           // =1048576
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_36 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_40
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_36 Depth=1
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #60]
	lsl	w8, w8, #1
	str	w8, [x9, #60]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #56]
	lsl	w8, w8, #1
	str	w8, [x9, #56]
	b	.LBB0_36
.LBB0_40:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #64]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #56]
	sdiv	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #68]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	ldur	x9, [x29, #-16]
	ldr	w10, [x9, #56]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #72]
	ldr	w8, [sp, #44]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #16]
	subs	w9, w9, #1
	mov	w10, #2
	sdiv	w9, w9, w10
	mneg	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #76]
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #88]
	ldur	x0, [x29, #-16]
	bl	swri_resample_dsp_init
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_42
.LBB0_41:
	ldur	x8, [x29, #-16]
	add	x0, x8, #80
	bl	av_freep
	ldur	x0, [x29, #-16]
	bl	av_free
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_42
.LBB0_42:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	resample_init, .Lfunc_end0-resample_init
                                        // -- End function
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.type	AV_LOG_ERROR,@object            // @AV_LOG_ERROR
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.word	0                               // 0x0
	.size	AV_LOG_ERROR, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unsupported sample format\n"
	.size	.L.str, 27
	.type	INT32_MAX,@object               // @INT32_MAX
	.bss
	.globl	INT32_MAX
	.p2align	2
INT32_MAX:
	.word	0                               // 0x0
	.size	INT32_MAX, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Filter length too large\n"
	.size	.L.str.1, 25
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_init
	.addrsig_sym FFMIN
	.addrsig_sym FFMAX
	.addrsig_sym ceil
	.addrsig_sym FFALIGN
	.addrsig_sym av_reduce
	.addrsig_sym resample_free
	.addrsig_sym av_mallocz
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym av_log
	.addrsig_sym av_assert0
	.addrsig_sym av_calloc
	.addrsig_sym build_filter
	.addrsig_sym memcpy
	.addrsig_sym swri_resample_dsp_init
	.addrsig_sym av_freep
	.addrsig_sym av_free
	.addrsig_sym INT_MAX
	.addrsig_sym AV_LOG_ERROR
	.addrsig_sym INT32_MAX