	.text
	.p2align	2                               // -- Begin function star_l
	.type	star_l,@function
star_l:                                 // @star_l
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	luaL_checkint
	str	w0, [sp, #24]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	sub	x2, x29, #20
	bl	getpatt
	str	x0, [sp, #16]
	ldr	w8, [sp, #24]
	tbnz	w8, #31, .LBB0_7
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	add	x1, sp, #12
	bl	tocharset
	adrp	x8, ISCHARSET
	ldr	x8, [x8, :lo12:ISCHARSET]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #12]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	repeatcharset
	stur	w0, [x29, #-4]
	b	.LBB0_12
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	isheadfail
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	ldr	w2, [sp, #24]
	bl	repeatheadfail
	str	x0, [sp]
	b	.LBB0_6
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	repeats
	str	x0, [sp]
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp]
	bl	optimizecaptures
	ldr	x0, [sp]
	bl	optimizejumps
	b	.LBB0_11
.LBB0_7:
	ldr	x0, [sp, #16]
	bl	isheadfail
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	ldr	w9, [sp, #24]
	mov	w8, wzr
	subs	w2, w8, w9
	bl	optionalheadfail
	b	.LBB0_10
.LBB0_9:
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	ldr	w9, [sp, #24]
	mov	w8, wzr
	subs	w2, w8, w9
	bl	optionals
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	star_l, .Lfunc_end0-star_l
                                        // -- End function
	.type	ISCHARSET,@object               // @ISCHARSET
	.bss
	.globl	ISCHARSET
	.p2align	3
ISCHARSET:
	.xword	0                               // 0x0
	.size	ISCHARSET, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym star_l
	.addrsig_sym luaL_checkint
	.addrsig_sym getpatt
	.addrsig_sym tocharset
	.addrsig_sym repeatcharset
	.addrsig_sym isheadfail
	.addrsig_sym repeatheadfail
	.addrsig_sym repeats
	.addrsig_sym optimizecaptures
	.addrsig_sym optimizejumps
	.addrsig_sym optionalheadfail
	.addrsig_sym optionals
	.addrsig_sym ISCHARSET