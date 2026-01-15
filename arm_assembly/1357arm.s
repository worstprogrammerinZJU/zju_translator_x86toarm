	.text
	.p2align	2                               // -- Begin function quorem
	.type	quorem,@function
quorem:                                 // @quorem
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	stur	w8, [x29, #-36]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_2:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldur	w9, [x29, #-36]
	subs	w9, w9, #1
	stur	w9, [x29, #-36]
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldursw	x9, [x29, #-36]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	ldr	x9, [sp, #32]
	ldr	w9, [x9]
	add	w9, w9, #1
	sdiv	w8, w8, w9
	str	w8, [sp, #52]
	ldr	w8, [sp, #52]
	cbz	w8, .LBB0_14
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	add	x9, x8, #4
	str	x9, [sp, #40]
	ldr	w8, [x8]
	ldr	w9, [sp, #52]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	asr	w8, w8, #16
	str	w8, [sp, #24]
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	ldrh	w9, [sp, #16]
	subs	w8, w8, w9
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	and	w8, w8, #0x10000
	asr	w8, w8, #16
	str	w8, [sp, #28]
	ldrh	w8, [sp, #20]
	ldur	x9, [x29, #-48]
	add	x10, x9, #4
	stur	x10, [x29, #-48]
	str	w8, [x9]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	.LBB0_4
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_13
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-48]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	subs	x9, x8, #4
	str	x9, [sp, #56]
	ldur	x10, [x29, #-48]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ls	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	w8, [x29, #-36]
	subs	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_8
.LBB0_12:
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	bl	cmp
	tbnz	x0, #63, .LBB0_26
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	str	x8, [sp, #40]
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	add	x9, x8, #4
	str	x9, [sp, #40]
	ldr	w8, [x8]
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	asr	w8, w8, #16
	str	w8, [sp, #24]
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	ldrh	w9, [sp, #16]
	subs	w8, w8, w9
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	and	w8, w8, #0x10000
	asr	w8, w8, #16
	str	w8, [sp, #28]
	ldrh	w8, [sp, #20]
	ldur	x9, [x29, #-48]
	add	x10, x9, #4
	stur	x10, [x29, #-48]
	str	w8, [x9]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	.LBB0_16
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldursw	x9, [x29, #-36]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_25
	b	.LBB0_19
.LBB0_19:
	b	.LBB0_20
.LBB0_20:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	subs	x9, x8, #4
	str	x9, [sp, #56]
	ldur	x10, [x29, #-48]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.ls	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-36]
	subs	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_20
.LBB0_24:
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #52]
	stur	w8, [x29, #-4]
	b	.LBB0_27
.LBB0_27:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	quorem, .Lfunc_end0-quorem
                                        // -- End function
	.type	FFFFFFFF,@object                // @FFFFFFFF
	.bss
	.globl	FFFFFFFF
	.p2align	2
FFFFFFFF:
	.word	0                               // 0x0
	.size	FFFFFFFF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym quorem
	.addrsig_sym cmp