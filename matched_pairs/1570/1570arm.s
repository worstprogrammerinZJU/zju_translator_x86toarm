	.text
	.p2align	2                               // -- Begin function fillcharset
	.type	fillcharset,@function
fillcharset:                            // @fillcharset
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	subs	w8, w8, #1
	b.ls	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #131
	b.eq	.LBB0_7
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #132
	b.eq	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #133
	b.eq	.LBB0_7
	b	.LBB0_8
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	mov	w1, wzr
	bl	testchar
	bl	assert
	b	.LBB0_6
.LBB0_6:
	adrp	x9, i
	ldr	x0, [x9, :lo12:i]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x10, [x9, :lo12:i]
	ldr	w1, [x8, x10, lsl #2]
	ldr	x8, [sp, #16]
	ldr	x9, [x9, :lo12:i]
	str	w1, [x8, x9, lsl #2]
	bl	loopset
	b	.LBB0_9
.LBB0_7:
	adrp	x9, i
	ldr	x0, [x9, :lo12:i]
	ldr	x8, [sp, #16]
	ldr	x9, [x9, :lo12:i]
	mov	w1, wzr
	str	w1, [x8, x9, lsl #2]
	bl	loopset
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #12]
	bl	setchar
	b	.LBB0_9
.LBB0_8:
	adrp	x9, i
	ldr	x0, [x9, :lo12:i]
	ldr	x8, [sp, #16]
	ldr	x9, [x9, :lo12:i]
	mov	w1, #255
	str	w1, [x8, x9, lsl #2]
	bl	loopset
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	fillcharset, .Lfunc_end0-fillcharset
                                        // -- End function
	.type	i,@object                       // @i
	.bss
	.globl	i
	.p2align	3
i:
	.xword	0                               // 0x0
	.size	i, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fillcharset
	.addrsig_sym assert
	.addrsig_sym testchar
	.addrsig_sym loopset
	.addrsig_sym setchar
	.addrsig_sym i