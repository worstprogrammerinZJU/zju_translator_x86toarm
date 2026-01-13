	.text
	.p2align	2                               // -- Begin function printpatt
	.type	printpatt,@function
printpatt:                              // @printpatt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	printinst
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, IEnd
	ldr	x9, [x9, :lo12:IEnd]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	sizei
	ldr	x8, [sp, #8]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	printpatt, .Lfunc_end0-printpatt
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
	.addrsig_sym printpatt
	.addrsig_sym printinst
	.addrsig_sym sizei
	.addrsig_sym IEnd