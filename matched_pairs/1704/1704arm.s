	.text
	.p2align	2                               // -- Begin function grow
	.type	grow,@function
grow:                                   // @grow
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	lsl	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	x8, #1
	str	x8, [sp]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	lsl	x0, x8, #3
	bl	malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #8]
	ldr	x8, [sp, #16]
	ldrsw	x8, [x8, #16]
	lsl	x8, x8, #3
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	free
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	grow, .Lfunc_end0-grow
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym grow
	.addrsig_sym malloc
	.addrsig_sym memcpy
	.addrsig_sym free