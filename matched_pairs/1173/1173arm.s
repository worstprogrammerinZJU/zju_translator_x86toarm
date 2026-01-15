	.text
	.globl	ferror                          // -- Begin function ferror
	.p2align	2
	.type	ferror,@function
ferror:                                 // @ferror
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	adrp	x0, ferror
	add	x0, x0, :lo12:ferror
	bl	GET_REAL
	ldr	x0, [sp, #16]
	bl	real_ferror
	str	w0, [sp, #12]
	adrp	x8, fail
	ldr	x8, [x8, :lo12:fail]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, error
	ldr	w8, [x8, :lo12:error]
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ferror, .Lfunc_end0-ferror
                                        // -- End function
	.type	fail,@object                    // @fail
	.bss
	.globl	fail
	.p2align	3
fail:
	.xword	0
	.size	fail, 8
	.type	error,@object                   // @error
	.globl	error
	.p2align	2
error:
	.word	0                               // 0x0
	.size	error, 4
	.type	errno,@object                   // @errno
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ferror
	.addrsig_sym GET_REAL
	.addrsig_sym real_ferror
	.addrsig_sym fail
	.addrsig_sym error
	.addrsig_sym errno