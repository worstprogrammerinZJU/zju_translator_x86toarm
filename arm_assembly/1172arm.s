	.text
	.globl	fclose                          // -- Begin function fclose
	.p2align	2
	.type	fclose,@function
fclose:                                 // @fclose
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	adrp	x0, fclose
	add	x0, x0, :lo12:fclose
	bl	GET_REAL
	ldr	x0, [sp, #16]
	bl	real_fclose
	str	w0, [sp, #12]
	adrp	x8, fail_close
	ldr	x8, [x8, :lo12:fail_close]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	adrp	x8, fail_close
	str	xzr, [x8, :lo12:fail_close]
	adrp	x8, fail_write
	str	xzr, [x8, :lo12:fail_write]
	adrp	x8, fail_read
	str	xzr, [x8, :lo12:fail_read]
	adrp	x8, fail
	str	xzr, [x8, :lo12:fail]
	adrp	x8, EOF
	ldr	w8, [x8, :lo12:EOF]
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
	.size	fclose, .Lfunc_end0-fclose
                                        // -- End function
	.type	fail_close,@object              // @fail_close
	.bss
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
	.type	fail,@object                    // @fail
	.globl	fail
	.p2align	3
fail:
	.xword	0
	.size	fail, 8
	.type	EOF,@object                     // @EOF
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fclose
	.addrsig_sym GET_REAL
	.addrsig_sym real_fclose
	.addrsig_sym fail_close
	.addrsig_sym fail_write
	.addrsig_sym fail_read
	.addrsig_sym fail
	.addrsig_sym EOF