	.text
	.p2align	2                               // -- Begin function dshift
	.type	dshift,@function
dshift:                                 // @dshift
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	w1, [x8, w9, sxtw #2]
	bl	hi0bits
	subs	w8, w0, #4
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #8]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]
	adrp	x9, kmask
	ldr	w9, [x9, :lo12:kmask]
	and	w0, w8, w9
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	dshift, .Lfunc_end0-dshift
                                        // -- End function
	.type	kmask,@object                   // @kmask
	.bss
	.globl	kmask
	.p2align	2
kmask:
	.word	0                               // 0x0
	.size	kmask, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dshift
	.addrsig_sym hi0bits
	.addrsig_sym kmask