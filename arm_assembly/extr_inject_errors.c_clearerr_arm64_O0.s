	.text
	.globl	clearerr                        // -- Begin function clearerr
	.p2align	2
	.type	clearerr,@function
clearerr:                               // @clearerr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x0, clearerr
	add	x0, x0, :lo12:clearerr
	bl	GET_REAL
	ldr	x0, [sp, #8]
	bl	real_clearerr
	adrp	x8, fail
	ldr	x8, [x8, :lo12:fail]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, fail_close
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:fail_close]
	adrp	x8, fail_write
	str	xzr, [x8, :lo12:fail_write]
	adrp	x8, fail_read
	str	xzr, [x8, :lo12:fail_read]
	adrp	x8, fail
	str	xzr, [x8, :lo12:fail]
	adrp	x8, error
	str	xzr, [x8, :lo12:error]
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	clearerr, .Lfunc_end0-clearerr
                                        // -- End function
	.type	fail,@object                    // @fail
	.bss
	.globl	fail
	.p2align	3
fail:
	.xword	0
	.size	fail, 8
	.type	fail_close,@object              // @fail_close
	.globl	fail_close
	.p2align	3
fail_close:
	.xword	0
	.size	fail_close, 8
	.type	fail_write,@object              // @fail_write
	.globl	fail_write
	.p2align	3
fail_write:
	.xword	0
	.size	fail_write, 8
	.type	fail_read,@object               // @fail_read
	.globl	fail_read
	.p2align	3
fail_read:
	.xword	0
	.size	fail_read, 8
	.type	error,@object                   // @error
	.globl	error
	.p2align	3
error:
	.xword	0                               // 0x0
	.size	error, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clearerr
	.addrsig_sym GET_REAL
	.addrsig_sym real_clearerr
	.addrsig_sym fail
	.addrsig_sym fail_close
	.addrsig_sym fail_write
	.addrsig_sym fail_read
	.addrsig_sym error