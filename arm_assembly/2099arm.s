	.text
	.p2align	2                               // -- Begin function rebuild_filter_bank_with_compensation
	.type	rebuild_filter_bank_with_compensation,@function
rebuild_filter_bank_with_compensation:  // @rebuild_filter_bank_with_compensation
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #72]
	mov	w9, #0
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #12]
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #16]
	mul	w1, w8, w9
	bl	av_calloc
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, ENOMEM
	ldr	w0, [x8, :lo12:ENOMEM]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #68]
	ldur	x8, [x29, #-16]
	ldr	w3, [x8, #64]
	ldur	x8, [x29, #-16]
	ldr	w4, [x8, #12]
	ldr	w5, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #20]
	mov	w8, #1
	lsl	w6, w8, w9
	ldur	x8, [x29, #-16]
	ldr	w7, [x8, #60]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	mov	x9, sp
	str	w8, [x9]
	bl	build_filter
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	sub	x0, x29, #24
	bl	av_freep
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_8:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #12]
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	add	w9, w9, #1
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	subs	w8, w8, #1
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #16]
	mul	w2, w8, w9
	bl	memcpy
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #12]
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #12]
	subs	w9, w9, #1
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw #2
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #16]
	bl	memcpy
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	ldr	w9, [sp, #28]
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #4]
	sdiv	w9, w9, w10
	mul	w3, w8, w9
	adrp	x8, INT32_MAX
	ldr	w8, [x8, :lo12:INT32_MAX]
	mov	w9, #2
	sdiv	w4, w8, w9
	sub	x0, x29, #28
	add	x1, sp, #32
	bl	av_reduce
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	sub	x0, x29, #24
	bl	av_freep
	adrp	x8, EINVAL
	ldr	w0, [x8, :lo12:EINVAL]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_10:
	ldur	w8, [x29, #-28]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #24]
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #28]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #28]
	mov	w8, #0
	subs	w9, w9, #256, lsl #12           // =1048576
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.ge	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	subs	w8, w8, #256, lsl #12           // =1048576
	cset	w8, lt
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #28]
	lsl	w8, w8, #1
	str	w8, [x9, #28]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #24]
	lsl	w8, w8, #1
	str	w8, [x9, #24]
	b	.LBB0_11
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #24]
	sdiv	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
	ldur	x9, [x29, #-16]
	ldr	w10, [x9, #24]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9, #8]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	sdiv	w10, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #40]
	mul	w8, w8, w10
	str	w8, [x9, #40]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-16]
	add	x0, x8, #48
	bl	av_freep
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #48]
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	rebuild_filter_bank_with_compensation, .Lfunc_end0-rebuild_filter_bank_with_compensation
                                        // -- End function
	.type	ENOMEM,@object                  // @ENOMEM
	.bss
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.word	0                               // 0x0
	.size	ENOMEM, 4
	.type	INT32_MAX,@object               // @INT32_MAX
	.globl	INT32_MAX
	.p2align	2
INT32_MAX:
	.word	0                               // 0x0
	.size	INT32_MAX, 4
	.type	EINVAL,@object                  // @EINVAL
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rebuild_filter_bank_with_compensation
	.addrsig_sym av_assert0
	.addrsig_sym av_calloc
	.addrsig_sym AVERROR
	.addrsig_sym build_filter
	.addrsig_sym av_freep
	.addrsig_sym memcpy
	.addrsig_sym av_reduce
	.addrsig_sym ENOMEM
	.addrsig_sym INT32_MAX
	.addrsig_sym EINVAL