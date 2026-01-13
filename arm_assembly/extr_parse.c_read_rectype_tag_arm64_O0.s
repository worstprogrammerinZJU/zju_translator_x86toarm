	.text
	.p2align	2                               // -- Begin function read_rectype_tag
	.type	read_rectype_tag,@function
read_rectype_tag:                       // @read_rectype_tag
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	get
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp]
	bl	unget_token
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_rectype_tag, .Lfunc_end0-read_rectype_tag
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_tag
	.addrsig_sym get
	.addrsig_sym unget_token
	.addrsig_sym TIDENT