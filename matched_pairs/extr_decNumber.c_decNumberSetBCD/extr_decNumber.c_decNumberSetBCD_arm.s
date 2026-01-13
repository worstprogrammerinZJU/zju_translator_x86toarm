	.text
	.globl	decNumberSetBCD                 // -- Begin function decNumberSetBCD
	.p2align	2
	.type	decNumberSetBCD,@function
decNumberSetBCD:                        // @decNumberSetBCD
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	D2U
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #3
	subs	x8, x8, #8
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w0, [x29, #-20]
	bl	MSUDIGITS
	str	x0, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.lo	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	str	xzr, [x8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	b.le	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	X10
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	add	x8, x0, x8
	ldr	x9, [sp, #32]
	str	x8, [x9]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	str	x8, [sp, #16]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	subs	x8, x8, #8
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_8:
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	decNumberSetBCD, .Lfunc_end0-decNumberSetBCD
                                        // -- End function
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym X10
	.addrsig_sym DECDPUN