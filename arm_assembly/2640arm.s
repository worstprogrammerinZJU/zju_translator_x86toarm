	.text
	.p2align	2                               // -- Begin function balance
	.type	balance,@function
balance:                                // @balance
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #8]
	bl	needfree
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	stur	wzr, [x29, #-4]
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldr	w2, [sp, #8]
	bl	moveresv
	ldr	x0, [sp, #16]
	bl	usenext
	b	.LBB0_1
.LBB0_5:
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldr	w2, [sp, #12]
	bl	balancerest
	stur	w0, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	balance, .Lfunc_end0-balance
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"needfree"
	.size	.L.str, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym balance
	.addrsig_sym needfree
	.addrsig_sym twarnx
	.addrsig_sym moveresv
	.addrsig_sym usenext
	.addrsig_sym balancerest