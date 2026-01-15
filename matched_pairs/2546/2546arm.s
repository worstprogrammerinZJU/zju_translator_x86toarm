	.text
	.globl	zalloc                          // -- Begin function zalloc
	.p2align	2
	.type	zalloc,@function
zalloc:                                 // @zalloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	malloc
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp]
	ldur	w2, [x29, #-4]
	mov	w1, wzr
	bl	memset
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	zalloc, .Lfunc_end0-zalloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym memset