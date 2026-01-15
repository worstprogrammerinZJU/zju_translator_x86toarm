	.text
	.p2align	2                               // -- Begin function set_reg_nums
	.type	set_reg_nums,@function
set_reg_nums:                           // @set_reg_nums
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, numfp
	str	xzr, [x8, :lo12:numfp]
	adrp	x8, numgp
	str	xzr, [x8, :lo12:numgp]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	vec_get
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, numfp
	ldr	x8, [x9, :lo12:numfp]
	add	x8, x8, #1
	str	x8, [x9, :lo12:numfp]
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, numgp
	ldr	x8, [x9, :lo12:numgp]
	add	x8, x8, #1
	str	x8, [x9, :lo12:numgp]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_reg_nums, .Lfunc_end0-set_reg_nums
                                        // -- End function
	.type	numfp,@object                   // @numfp
	.bss
	.globl	numfp
	.p2align	3
numfp:
	.xword	0                               // 0x0
	.size	numfp, 8
	.type	numgp,@object                   // @numgp
	.globl	numgp
	.p2align	3
numgp:
	.xword	0                               // 0x0
	.size	numgp, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_reg_nums
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym is_flotype
	.addrsig_sym numfp
	.addrsig_sym numgp