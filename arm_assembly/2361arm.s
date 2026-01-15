	.text
	.p2align	2                               // -- Begin function resample
	.type	resample,@function
resample:                               // @resample
// %bb.0:
	sub	sp, sp, #304
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	add	x29, sp, #272
	sub	x8, x29, #40
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	mov	w9, #1
	str	w9, [sp, #92]                   // 4-byte Folded Spill
	str	x0, [x8, #24]
	str	x1, [x8, #16]
	stur	w2, [x29, #-28]
	str	x3, [x8]
	stur	w4, [x29, #-44]
	str	wzr, [sp, #124]
	str	wzr, [sp, #120]
	adrp	x8, ARCH_X86
	ldr	x8, [x8, :lo12:ARCH_X86]
	mov	w9, #0
	str	w9, [sp, #96]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	adrp	x9, SWR_ENGINE_SWR
	ldr	x9, [x9, :lo12:SWR_ENGINE_SWR]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #96]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	w11, [sp, #96]                  // 4-byte Folded Reload
	mov	w8, #7
	mov	w10, wzr
	ands	w11, w11, #0x1
	csel	w8, w8, w10, ne
	str	w8, [sp, #116]
	ldr	x8, [x9, #24]
	ldr	x8, [x8, #24]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert1
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #24]
	ldr	x8, [x8, #32]
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert1
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #24]
	ldr	x8, [x8, #40]
	ldr	x9, [x9]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert1
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #16]
	ldr	q0, [x8]
	stur	q0, [x29, #-112]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-96]
	ldur	q0, [x29, #-112]
	str	q0, [sp, #128]
	ldur	q0, [x29, #-96]
	str	q0, [sp, #144]
	ldr	x8, [x9]
	ldr	q0, [x8]
	sub	x2, x29, #80
	stur	q0, [x29, #-80]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-64]
	ldr	x8, [x9, #24]
	ldr	x8, [x8, #64]
	ldr	x8, [x8]
	ldr	x10, [x9, #24]
	ldr	w0, [x10, #56]
	ldr	x10, [x9, #24]
	add	x1, x10, #24
	ldur	w3, [x29, #-44]
	ldr	x10, [x9, #24]
	add	x4, x10, #8
	ldr	x9, [x9, #24]
	add	x5, x9, #12
	blr	x8
	str	w0, [sp, #120]
	ldr	w8, [sp, #120]
	adrp	x9, INT_MAX
	ldr	w9, [x9, :lo12:INT_MAX]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_42
.LBB0_4:
	ldr	w8, [sp, #120]
	subs	w8, w8, #0
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #120]
	stur	w8, [x29, #-4]
	b	.LBB0_42
.LBB0_6:
	ldr	w8, [sp, #120]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w2, [sp, #120]
	sub	x1, x29, #80
	mov	x0, x1
	bl	buf_set
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w10, [sp, #120]
	ldur	w9, [x29, #-44]
	subs	w9, w9, w10
	stur	w9, [x29, #-44]
	ldr	x8, [x8, #24]
	str	wzr, [x8, #16]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #16]
	cbnz	w8, .LBB0_18
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	cbz	w8, .LBB0_18
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [x8, #24]
	add	x1, x9, #24
	ldr	x8, [x8, #24]
	ldr	w2, [x8, #8]
	add	x0, sp, #128
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	bl	buf_set
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #24]
	ldr	x8, [x8, #64]
	ldr	x8, [x8, #8]
	ldr	x10, [x9, #24]
	ldr	w0, [x10, #56]
	ldur	w2, [x29, #-28]
	ldr	x9, [x9, #24]
	ldr	w4, [x9, #12]
	sub	x1, x29, #112
	str	x1, [sp, #72]                   // 8-byte Folded Spill
	add	x5, sp, #104
	blr	x8
	ldr	x1, [sp, #72]                   // 8-byte Folded Reload
	str	w0, [sp, #112]
	ldr	w9, [sp, #112]
	ldur	w8, [x29, #-28]
	subs	w8, w8, w9
	stur	w8, [x29, #-28]
	ldr	w9, [sp, #112]
	ldr	w8, [sp, #124]
	add	w8, w8, w9
	str	w8, [sp, #124]
	ldr	w2, [sp, #112]
	mov	x0, x1
	bl	buf_set
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w11, [sp, #104]
	ldr	x10, [x8, #24]
	ldr	w9, [x10, #12]
	subs	w9, w9, w11
	str	w9, [x10, #12]
	ldr	w10, [sp, #104]
	ldr	x9, [x8, #24]
	ldr	w8, [x9, #8]
	add	w8, w8, w10
	str	w8, [x9, #8]
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_41
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	ldr	w9, [sp, #120]
	subs	w8, w8, w9
	b.gt	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w9, [x8, #12]
	mov	w8, wzr
	subs	w2, w8, w9
	sub	x1, x29, #80
	mov	x0, x1
	bl	buf_set
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [x8, #24]
	ldr	w10, [x9, #12]
	ldur	w9, [x29, #-44]
	add	w9, w9, w10
	stur	w9, [x29, #-44]
	ldr	x9, [x8, #24]
	str	wzr, [x9, #12]
	ldr	x8, [x8, #24]
	str	wzr, [x8, #8]
	str	wzr, [sp, #120]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	x8, [x8, #72]
	cbnz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-44]
	ldr	w9, [sp, #116]
	subs	w8, w8, w9
	b.le	.LBB0_22
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	cbnz	w8, .LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [x8, #24]
	mov	w1, wzr
	str	wzr, [x9, #8]
	ldr	x9, [x8, #24]
	ldr	x9, [x9, #64]
	ldr	x9, [x9, #8]
	str	x9, [sp, #32]                   // 8-byte Folded Spill
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #56]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-28]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-44]
	ldr	w9, [sp, #116]
	subs	w0, w8, w9
	bl	FFMAX
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	mov	w4, w0
	ldr	w0, [sp, #44]                   // 4-byte Folded Reload
	sub	x1, x29, #112
	str	x1, [sp, #48]                   // 8-byte Folded Spill
	sub	x3, x29, #80
	str	x3, [sp, #56]                   // 8-byte Folded Spill
	add	x5, sp, #104
	blr	x8
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	str	w0, [sp, #112]
	ldr	w9, [sp, #112]
	ldur	w8, [x29, #-28]
	subs	w8, w8, w9
	stur	w8, [x29, #-28]
	ldr	w9, [sp, #112]
	ldr	w8, [sp, #124]
	add	w8, w8, w9
	str	w8, [sp, #124]
	ldr	w2, [sp, #112]
	mov	x0, x1
	bl	buf_set
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	ldr	w9, [sp, #104]
	ldur	w8, [x29, #-44]
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	ldr	w2, [sp, #104]
	mov	x0, x1
	bl	buf_set
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #24]
	ldr	w8, [x8, #8]
	ldr	x10, [x9, #24]
	ldr	w10, [x10, #12]
	add	w8, w8, w10
	ldur	w10, [x29, #-44]
	add	w8, w8, w10
	str	w8, [sp, #108]
	ldr	w8, [sp, #108]
	ldr	x9, [x9, #24]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	b.le	.LBB0_25
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #24]
	ldr	w8, [x8, #12]
	ldur	w10, [x29, #-44]
	add	w8, w8, w10
	ldr	x9, [x9, #24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.gt	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [x8, #24]
	add	x1, x9, #24
	ldr	x8, [x8, #24]
	ldr	w2, [x8, #8]
	add	x0, sp, #128
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	buf_set
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [x8, #24]
	add	x0, x9, #24
	ldr	x8, [x8, #24]
	ldr	w2, [x8, #12]
	bl	copy
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	str	wzr, [x8, #8]
	b	.LBB0_28
.LBB0_25:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	add	x0, x8, #24
	ldr	w1, [sp, #108]
	bl	swri_realloc_audio
	str	w0, [sp, #112]
	subs	w8, w0, #0
	b.ge	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #112]
	stur	w8, [x29, #-4]
	b	.LBB0_42
.LBB0_27:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_39
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-44]
	str	w9, [sp, #100]
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	cbz	w8, .LBB0_33
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	add	w8, w8, #2
	ldr	w9, [sp, #100]
	subs	w8, w8, w9
	b.ge	.LBB0_33
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_33
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	add	w8, w8, #2
	str	w8, [sp, #100]
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x9, #24]
	add	x1, x8, #24
	ldr	x8, [x9, #24]
	ldr	w8, [x8, #8]
	ldr	x9, [x9, #24]
	ldr	w9, [x9, #12]
	add	w2, w8, w9
	add	x0, sp, #128
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	buf_set
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	w2, [sp, #100]
	sub	x1, x29, #80
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	copy
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w10, [sp, #100]
	ldr	x9, [x8, #24]
	ldr	w8, [x9, #12]
	add	w8, w8, w10
	str	w8, [x9, #12]
	ldr	w9, [sp, #100]
	ldur	w8, [x29, #-44]
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	ldr	w9, [sp, #100]
	ldr	w8, [sp, #120]
	add	w8, w8, w9
	str	w8, [sp, #120]
	ldr	w2, [sp, #100]
	mov	x0, x1
	bl	buf_set
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [x8, #24]
	str	wzr, [x9, #16]
	ldr	x8, [x8, #24]
	ldr	w8, [x8, #12]
	ldr	w9, [sp, #100]
	subs	w8, w8, w9
	b.ne	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_36
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_40
.LBB0_36:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #116]
	cbz	w8, .LBB0_38
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_11 Depth=1
	str	wzr, [sp, #116]
	b	.LBB0_40
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_41
.LBB0_40:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #92]                   // 4-byte Folded Reload
	tbnz	w8, #0, .LBB0_11
	b	.LBB0_41
.LBB0_41:
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	ldr	x9, [x9, #24]
	str	w8, [x9, #16]
	ldr	w8, [sp, #124]
	stur	w8, [x29, #-4]
	b	.LBB0_42
.LBB0_42:
	ldur	w0, [x29, #-4]
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.Lfunc_end0:
	.size	resample, .Lfunc_end0-resample
                                        // -- End function
	.type	ARCH_X86,@object                // @ARCH_X86
	.bss
	.globl	ARCH_X86
	.p2align	3
ARCH_X86:
	.xword	0                               // 0x0
	.size	ARCH_X86, 8
	.type	SWR_ENGINE_SWR,@object          // @SWR_ENGINE_SWR
	.globl	SWR_ENGINE_SWR
	.p2align	3
SWR_ENGINE_SWR:
	.xword	0                               // 0x0
	.size	SWR_ENGINE_SWR, 8
	.type	INT_MAX,@object                 // @INT_MAX
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample
	.addrsig_sym av_assert1
	.addrsig_sym buf_set
	.addrsig_sym FFMAX
	.addrsig_sym copy
	.addrsig_sym swri_realloc_audio
	.addrsig_sym ARCH_X86
	.addrsig_sym SWR_ENGINE_SWR
	.addrsig_sym INT_MAX