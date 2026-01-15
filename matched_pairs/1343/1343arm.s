	.text
	.p2align	2                               // -- Begin function diff
	.type	diff,@function
diff:                                   // @diff
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	bl	cmp
	stur	w0, [x29, #-44]
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	mov	w1, wzr
	bl	Balloc
	stur	x0, [x29, #-40]
	ldur	x9, [x29, #-40]
	mov	w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #8]
	str	wzr, [x8]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_2:
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-32]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_5
.LBB0_4:
	stur	wzr, [x29, #-44]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	w1, [x8, #20]
	bl	Balloc
	stur	x0, [x29, #-40]
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-40]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	ldursw	x9, [x29, #-48]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	stur	w8, [x29, #-52]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldursw	x9, [x29, #-52]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #24]
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	add	x9, x8, #4
	str	x9, [sp, #48]
	ldr	w8, [x8]
	ldr	x9, [sp, #32]
	add	x10, x9, #4
	str	x10, [sp, #32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	and	w8, w8, #0x10000
	asr	w8, w8, #16
	str	w8, [sp, #12]
	ldrh	w8, [sp, #8]
	ldr	x9, [sp, #16]
	add	x10, x9, #4
	str	x10, [sp, #16]
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.lo	.LBB0_6
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	b.hs	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #48]
	add	x9, x8, #4
	str	x9, [sp, #48]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	and	w8, w8, #0x10000
	asr	w8, w8, #16
	str	w8, [sp, #12]
	ldrh	w8, [sp, #8]
	ldr	x9, [sp, #16]
	add	x10, x9, #4
	str	x10, [sp, #16]
	str	w8, [x9]
	b	.LBB0_9
.LBB0_11:
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x9, x8, #4
	str	x9, [sp, #16]
	ldur	w8, [x8, #-4]
	cbnz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	w8, [x29, #-48]
	subs	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_12
.LBB0_14:
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	diff, .Lfunc_end0-diff
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
	.addrsig_sym diff
	.addrsig_sym cmp
	.addrsig_sym Balloc