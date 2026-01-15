	.text
	.p2align	2                               // -- Begin function skip_newlines
	.type	skip_newlines,@function
skip_newlines:                          // @skip_newlines
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	lex
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	lex
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	unget_token
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	skip_newlines, .Lfunc_end0-skip_newlines
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_newlines
	.addrsig_sym lex
	.addrsig_sym unget_token
	.addrsig_sym TNEWLINE