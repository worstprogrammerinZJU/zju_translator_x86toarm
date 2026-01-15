	.text
	.globl	rawfalloc                       // -- Begin function rawfalloc
	.p2align	2
	.type	rawfalloc,@function
rawfalloc:                              // @rawfalloc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-8]
	adrp	x1, rawfalloc.buf
	add	x1, x1, :lo12:rawfalloc.buf
	mov	w2, #4096
	bl	write
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_6:
	ldur	w0, [x29, #-8]
	mov	w2, wzr
	mov	w1, w2
	bl	lseek
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	rawfalloc, .Lfunc_end0-rawfalloc
                                        // -- End function
	.type	rawfalloc.buf,@object           // @rawfalloc.buf
	.local	rawfalloc.buf
	.comm	rawfalloc.buf,4096,1
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.addrsig_sym lseek
	.addrsig_sym rawfalloc.buf
	.addrsig_sym errno