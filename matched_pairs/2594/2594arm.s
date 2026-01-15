	.text
	.globl	shuffle                         // -- Begin function shuffle
	.p2align	2
	.type	shuffle,@function
shuffle:                                // @shuffle
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-24]
	mov	w0, #1
	bl	calloc
	str	x0, [sp, #24]
	str	xzr, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	rand
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	adrp	x9, RAND_MAX
	ldr	x9, [x9, :lo12:RAND_MAX]
	ldur	x10, [x29, #-16]
	ldr	x11, [sp, #32]
	subs	x10, x10, x11
	udiv	x9, x9, x10
	add	x9, x9, #1
	udiv	x9, x0, x9
	add	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldur	x10, [x29, #-24]
	mul	x9, x9, x10
	add	x1, x8, x9
	ldur	x2, [x29, #-24]
	bl	memcpy
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldur	x10, [x29, #-24]
	mul	x9, x9, x10
	add	x0, x8, x9
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #32]
	ldur	x10, [x29, #-24]
	mul	x9, x9, x10
	add	x1, x8, x9
	ldur	x2, [x29, #-24]
	bl	memcpy
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #32]
	ldur	x10, [x29, #-24]
	mul	x9, x9, x10
	add	x0, x8, x9
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-24]
	bl	memcpy
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	shuffle, .Lfunc_end0-shuffle
                                        // -- End function
	.type	RAND_MAX,@object                // @RAND_MAX
	.bss
	.globl	RAND_MAX
	.p2align	3
RAND_MAX:
	.xword	0                               // 0x0
	.size	RAND_MAX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand
	.addrsig_sym memcpy
	.addrsig_sym RAND_MAX