	.text
	.globl	filermjob                       // -- Begin function filermjob
	.p2align	2
	.type	filermjob,@function
filermjob:                              // @filermjob
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	ldr	x9, [sp]
	ldr	x9, [x9, #24]
	str	x8, [x9]
	ldr	x8, [sp]
	ldr	x8, [x8, #24]
	ldr	x9, [sp]
	ldr	x9, [x9, #16]
	str	x8, [x9]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	ldr	x8, [sp]
	str	xzr, [x8, #16]
	ldr	x8, [sp]
	str	xzr, [x8, #8]
	ldr	x8, [sp]
	ldr	x10, [x8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldrsw	x8, [x9]
	subs	x8, x8, x10
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	ldr	x8, [sp]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	bl	filedecref
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	filermjob, .Lfunc_end0-filermjob
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym filedecref