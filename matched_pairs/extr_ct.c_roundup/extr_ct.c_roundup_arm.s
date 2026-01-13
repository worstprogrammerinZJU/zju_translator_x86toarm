	.text
	.p2align	2                               // -- Begin function roundup
	.type	roundup,@function
roundup:                                // @roundup
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	bl	rounddown10
	str	w0, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #4]
	mov	w9, #2
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.gt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w9, [sp, #4]
	mov	w8, #2
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_4:
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #4]
	mov	w9, #3
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.gt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w9, [sp, #4]
	mov	w8, #3
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_6:
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #4]
	mov	w9, #5
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.gt	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w9, [sp, #4]
	mov	w8, #5
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	ldr	w9, [sp, #4]
	mov	w8, #10
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	roundup, .Lfunc_end0-roundup
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym roundup
	.addrsig_sym rounddown10