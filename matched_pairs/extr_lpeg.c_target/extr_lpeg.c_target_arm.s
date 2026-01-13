	.text
	.p2align	2                               // -- Begin function target
	.type	target,@function
target:                                 // @target
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IJmp
	ldr	x9, [x9, :lo12:IJmp]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #4
	ldr	x9, [x8, #8]
	ldrsw	x8, [sp, #4]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_3:
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	target, .Lfunc_end0-target
                                        // -- End function
	.type	IJmp,@object                    // @IJmp
	.bss
	.globl	IJmp
	.p2align	3
IJmp:
	.xword	0                               // 0x0
	.size	IJmp, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym target
	.addrsig_sym IJmp