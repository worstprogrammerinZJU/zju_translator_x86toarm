	.text
	.p2align	2                               // -- Begin function mult
	.type	mult,@function
mult:                                   // @mult
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	stur	w8, [x29, #-36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-36]
	bl	Balloc
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-48]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #64]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-56]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-56]
	str	wzr, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-56]
	add	x8, x8, #4
	stur	x8, [x29, #-56]
	b	.LBB0_5
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-40]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #56]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	ldursw	x9, [x29, #-44]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	b	.LBB0_9
.LBB0_9:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	b.hs	.LBB0_17
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #48]
	add	x9, x8, #4
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	cbz	w8, .LBB0_15
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #24]
	str	x8, [sp, #32]
	str	wzr, [sp, #16]
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_9 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-56]
	add	x9, x8, #4
	stur	x9, [x29, #-56]
	ldr	w8, [x8]
	ldr	w9, [sp, #20]
	mul	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	w9, [x9]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	asr	w8, w8, #16
	str	w8, [sp, #16]
	ldrh	w8, [sp, #12]
	ldr	x9, [sp, #32]
	add	x10, x9, #4
	str	x10, [sp, #32]
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldur	x8, [x29, #-56]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	b.lo	.LBB0_12
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #24]
	b	.LBB0_9
.LBB0_17:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-48]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #32]
	b	.LBB0_18
.LBB0_18:                               // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-48]
	mov	w8, #0
	subs	w9, w9, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.le	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=1
	ldr	x8, [sp, #32]
	subs	x9, x8, #4
	str	x9, [sp, #32]
	ldur	w8, [x8, #-4]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_18 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_23
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_18 Depth=1
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	w8, [x29, #-48]
	subs	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_18
.LBB0_23:
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldur	x0, [x29, #-32]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	mult, .Lfunc_end0-mult
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
	.addrsig_sym mult
	.addrsig_sym Balloc