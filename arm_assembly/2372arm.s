	.text
	.globl	swri_realloc_audio              // -- Begin function swri_realloc_audio
	.p2align	2
	.type	swri_realloc_audio,@function
swri_realloc_audio:                     // @swri_realloc_audio
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w8, [x29, #-20]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	adrp	x9, INT_MAX
	ldr	w9, [x9, :lo12:INT_MAX]
	mov	w10, #2
	sdiv	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10]
	sdiv	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #4]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, EINVAL
	ldr	w0, [x8, :lo12:EINVAL]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_21
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_21
.LBB0_5:
	ldur	w8, [x29, #-20]
	lsl	w8, w8, #1
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	mul	w0, w8, w9
	adrp	x8, ALIGN
	ldr	w1, [x8, :lo12:ALIGN]
	bl	FFALIGN
	stur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	bl	av_assert0
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	av_assert0
	ldur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #4]
	bl	av_mallocz_array
	ldur	x8, [x29, #-16]
	str	w0, [x8, #12]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, ENOMEM
	ldr	w0, [x8, :lo12:ENOMEM]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_21
.LBB0_7:
	stur	wzr, [x29, #-24]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	w8, [x29, #-24]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	w8, [x29, #-28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	mul	w9, w9, w10
	add	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-24]
	str	x8, [x9, x10, lsl #3]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-24]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x8, [sp, #32]
	ldursw	x9, [x29, #-24]
	ldr	x1, [x8, x9, lsl #3]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	mul	w2, w8, w9
	bl	memcpy
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_8
.LBB0_17:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_20
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	cbnz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	x1, [x8]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	mul	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	mul	w2, w8, w9
	bl	memcpy
	b	.LBB0_20
.LBB0_20:
	add	x8, sp, #16
	add	x0, x8, #12
	bl	av_freep
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_21:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	swri_realloc_audio, .Lfunc_end0-swri_realloc_audio
                                        // -- End function
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.type	EINVAL,@object                  // @EINVAL
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.type	ALIGN,@object                   // @ALIGN
	.globl	ALIGN
	.p2align	2
ALIGN:
	.word	0                               // 0x0
	.size	ALIGN, 4
	.type	ENOMEM,@object                  // @ENOMEM
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.word	0                               // 0x0
	.size	ENOMEM, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym AVERROR
	.addrsig_sym FFALIGN
	.addrsig_sym av_assert0
	.addrsig_sym av_mallocz_array
	.addrsig_sym memcpy
	.addrsig_sym av_freep
	.addrsig_sym INT_MAX
	.addrsig_sym EINVAL
	.addrsig_sym ALIGN
	.addrsig_sym ENOMEM