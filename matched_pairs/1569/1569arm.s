	.text
	.p2align	2                               // -- Begin function exclusive
	.type	exclusive,@function
exclusive:                              // @exclusive
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, NOINFO
	ldr	x9, [x9, :lo12:NOINFO]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, NOINFO
	ldr	x9, [x9, :lo12:NOINFO]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #8]
	bl	exclusiveset
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	exclusive, .Lfunc_end0-exclusive
                                        // -- End function
	.type	NOINFO,@object                  // @NOINFO
	.bss
	.globl	NOINFO
	.p2align	3
NOINFO:
	.xword	0                               // 0x0
	.size	NOINFO, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exclusive
	.addrsig_sym exclusiveset
	.addrsig_sym NOINFO