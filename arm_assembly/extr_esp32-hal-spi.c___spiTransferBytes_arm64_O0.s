	.text
	.p2align	2                               // -- Begin function __spiTransferBytes
	.type	__spiTransferBytes,@function
__spiTransferBytes:                     // @__spiTransferBytes
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_20
.LBB0_2:
	ldur	w8, [x29, #-28]
	subs	w8, w8, #64
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #64
	stur	w8, [x29, #-28]
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-28]
	add	w8, w8, #3
	mov	w9, #4
	sdiv	w8, w8, w9
	stur	w8, [x29, #-36]
	add	x0, sp, #28
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, wzr
	mov	x2, #64
	bl	memset
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-28]
	bl	memcpy
	b	.LBB0_7
.LBB0_6:
	ldr	x0, [sp, #16]
	ldur	w2, [x29, #-28]
	mov	w1, #255
	bl	memset
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-28]
	lsl	w8, w8, #3
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-28]
	lsl	w8, w8, #3
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	str	w8, [x9, #12]
	stur	wzr, [x29, #-32]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldursw	x9, [x29, #-32]
	add	x8, sp, #28
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-32]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_8
.LBB0_11:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	b	.LBB0_12
.LBB0_14:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_20
	b	.LBB0_15
.LBB0_15:
	stur	wzr, [x29, #-32]
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-32]
	ldr	w8, [x8, x9, lsl #2]
	ldursw	x10, [x29, #-32]
	add	x9, sp, #28
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_16
.LBB0_19:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #16]
	ldur	w2, [x29, #-28]
	bl	memcpy
	b	.LBB0_20
.LBB0_20:
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	__spiTransferBytes, .Lfunc_end0-__spiTransferBytes
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __spiTransferBytes
	.addrsig_sym memcpy
	.addrsig_sym memset