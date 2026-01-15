	.text
	.globl	basecfg                         // -- Begin function basecfg
	.p2align	2
	.type	basecfg,@function
basecfg:                                // @basecfg
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	mov	w1, #47
	bl	strchr
	str	x0, [sp, #8]
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	copy_string
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #46
	bl	strchr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	strb	wzr, [x8]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	basecfg, .Lfunc_end0-basecfg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strchr
	.addrsig_sym copy_string