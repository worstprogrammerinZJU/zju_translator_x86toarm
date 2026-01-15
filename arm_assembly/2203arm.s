	.text
	.p2align	2                               // -- Begin function stbi__get_marker
	.type	stbi__get_marker,@function
stbi__get_marker:                       // @stbi__get_marker
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, STBI__MARKER_none
	ldr	x9, [x9, :lo12:STBI__MARKER_none]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	adrp	x8, STBI__MARKER_none
	ldr	x8, [x8, :lo12:STBI__MARKER_none]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	stbi__get8
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #255
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, STBI__MARKER_none
	ldr	x8, [x8, :lo12:STBI__MARKER_none]
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_4:
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #255
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	stbi__get8
	str	w0, [sp, #12]
	b	.LBB0_5
.LBB0_7:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__get_marker, .Lfunc_end0-stbi__get_marker
                                        // -- End function
	.type	STBI__MARKER_none,@object       // @STBI__MARKER_none
	.bss
	.globl	STBI__MARKER_none
	.p2align	3
STBI__MARKER_none:
	.xword	0                               // 0x0
	.size	STBI__MARKER_none, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get_marker
	.addrsig_sym stbi__get8
	.addrsig_sym STBI__MARKER_none