	.text
	.p2align	2                               // -- Begin function save_arg_regs
	.type	save_arg_regs,@function
save_arg_regs:                          // @save_arg_regs
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #6
	cset	w8, le
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	cset	w8, le
	and	w0, w8, #0x1
	bl	assert
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, REGS
	ldr	x8, [x8, :lo12:REGS]
	ldrsw	x9, [sp, #4]
	ldr	w0, [x8, x9, lsl #2]
	bl	push
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	mov	w8, #1
	str	w8, [sp]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w0, [sp]
	bl	push_xmm
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_5
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	save_arg_regs, .Lfunc_end0-save_arg_regs
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	REGS,@object                    // @REGS
	.globl	REGS
	.p2align	3
REGS:
	.xword	0
	.size	REGS, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym save_arg_regs
	.addrsig_sym assert
	.addrsig_sym push
	.addrsig_sym push_xmm
	.addrsig_sym SAVE
	.addrsig_sym REGS