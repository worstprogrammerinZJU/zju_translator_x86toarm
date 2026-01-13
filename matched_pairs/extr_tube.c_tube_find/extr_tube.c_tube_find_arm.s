	.text
	.globl	tube_find                       // -- Begin function tube_find
	.p2align	2
	.type	tube_find,@function
tube_find:                              // @tube_find
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, tubes
	add	x8, x8, :lo12:tubes
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-16]
	str	xzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	adrp	x9, tubes
	ldr	x9, [x9, :lo12:tubes]
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	ldur	x1, [x29, #-16]
	adrp	x8, MAX_TUBE_NAME_LEN
	ldr	w2, [x8, :lo12:MAX_TUBE_NAME_LEN]
	bl	strncmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_6:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	tube_find, .Lfunc_end0-tube_find
                                        // -- End function
	.type	tubes,@object                   // @tubes
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.size	tubes, 16
	.type	MAX_TUBE_NAME_LEN,@object       // @MAX_TUBE_NAME_LEN
	.globl	MAX_TUBE_NAME_LEN
	.p2align	2
MAX_TUBE_NAME_LEN:
	.word	0                               // 0x0
	.size	MAX_TUBE_NAME_LEN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strncmp
	.addrsig_sym tubes
	.addrsig_sym MAX_TUBE_NAME_LEN