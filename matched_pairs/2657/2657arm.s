	.text
	.globl	walwrite                        // -- Begin function walwrite
	.p2align	2
	.type	walwrite,@function
walwrite:                               // @walwrite
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	wzr, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.gt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	usenext
	cbz	x0, .LBB0_8
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldr	x1, [sp, #8]
	bl	filewrjobshort
	str	w0, [sp, #4]
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldr	x1, [sp, #8]
	bl	filewrjobfull
	str	w0, [sp, #4]
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	bl	filewclose
	ldr	x8, [sp, #16]
	str	xzr, [x8, #8]
	b	.LBB0_10
.LBB0_10:
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	walwrite, .Lfunc_end0-walwrite
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usenext
	.addrsig_sym filewrjobshort
	.addrsig_sym filewrjobfull
	.addrsig_sym filewclose