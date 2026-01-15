	.text
	.p2align	2                               // -- Begin function pop_int_args
	.type	pop_int_args,@function
pop_int_args:                           // @pop_int_args
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, REGS
	ldr	x8, [x8, :lo12:REGS]
	ldrsw	x9, [sp, #8]
	ldr	w0, [x8, x9, lsl #2]
	bl	pop
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	pop_int_args, .Lfunc_end0-pop_int_args
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
	.addrsig_sym pop_int_args
	.addrsig_sym pop
	.addrsig_sym SAVE
	.addrsig_sym REGS