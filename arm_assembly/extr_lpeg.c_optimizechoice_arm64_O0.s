	.text
	.p2align	2                               // -- Begin function optimizechoice
	.type	optimizechoice,@function
optimizechoice:                         // @optimizechoice
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, IChoice
	ldr	x9, [x9, :lo12:IChoice]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	ischeck
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	sizei
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	mov	w2, #1
	bl	rotate
	ldr	x0, [sp, #8]
	bl	ischeck
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IChoice
	ldr	x9, [x9, :lo12:IChoice]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #8]
	bl	op_step
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #4
	str	w0, [x8, #12]
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #4
	ldr	w1, [x8, #8]
	bl	check2test
	ldr	w10, [sp, #4]
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x9, x8, x9, lsl #4
	ldr	w8, [x9, #8]
	subs	w8, w8, w10
	str	w8, [x9, #8]
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	optimizechoice, .Lfunc_end0-optimizechoice
                                        // -- End function
	.type	IChoice,@object                 // @IChoice
	.bss
	.globl	IChoice
	.p2align	3
IChoice:
	.xword	0                               // 0x0
	.size	IChoice, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimizechoice
	.addrsig_sym assert
	.addrsig_sym ischeck
	.addrsig_sym sizei
	.addrsig_sym rotate
	.addrsig_sym op_step
	.addrsig_sym check2test
	.addrsig_sym IChoice