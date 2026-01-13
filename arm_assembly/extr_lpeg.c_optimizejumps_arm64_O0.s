	.text
	.p2align	2                               // -- Begin function optimizejumps
	.type	optimizejumps,@function
optimizejumps:                          // @optimizejumps
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IEnd
	ldr	x9, [x9, :lo12:IEnd]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	isjmp
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	dest
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	target
	ldursw	x8, [x29, #-12]
	subs	x8, x0, x8
	ldur	x9, [x29, #-8]
	ldursw	x10, [x29, #-12]
	add	x9, x9, x10, lsl #4
	str	x8, [x9, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	sizei
	ldursw	x8, [x29, #-12]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	optimizejumps, .Lfunc_end0-optimizejumps
                                        // -- End function
	.type	IEnd,@object                    // @IEnd
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.xword	0                               // 0x0
	.size	IEnd, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimizejumps
	.addrsig_sym isjmp
	.addrsig_sym target
	.addrsig_sym dest
	.addrsig_sym sizei
	.addrsig_sym IEnd