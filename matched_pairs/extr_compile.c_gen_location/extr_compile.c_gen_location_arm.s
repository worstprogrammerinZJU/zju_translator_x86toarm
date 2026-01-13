	.text
	.globl	gen_location                    // -- Begin function gen_location
	.p2align	2
	.type	gen_location,@function
gen_location:                           // @gen_location
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, UNKNOWN_LOCATION
	add	x8, x8, :lo12:UNKNOWN_LOCATION
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-16]
	str	x3, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	adrp	x9, UNKNOWN_LOCATION
	ldr	x9, [x9, :lo12:UNKNOWN_LOCATION]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldur	q0, [x29, #-24]
	stur	q0, [x8, #8]
	ldr	x0, [sp, #24]
	bl	locfile_retain
	ldr	x8, [sp, #16]
	str	w0, [x8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_7:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gen_location, .Lfunc_end0-gen_location
                                        // -- End function
	.type	UNKNOWN_LOCATION,@object        // @UNKNOWN_LOCATION
	.bss
	.globl	UNKNOWN_LOCATION
	.p2align	3
UNKNOWN_LOCATION:
	.zero	16
	.size	UNKNOWN_LOCATION, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym locfile_retain
	.addrsig_sym UNKNOWN_LOCATION