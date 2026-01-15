	.text
	.p2align	2                               // -- Begin function maybe_convert_keyword
	.type	maybe_convert_keyword,@function
maybe_convert_keyword:                  // @maybe_convert_keyword
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	adrp	x8, keywords
	ldr	w0, [x8, :lo12:keywords]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #12]
	bl	map_get
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	copy_token
	str	x0, [sp]
	adrp	x8, TKEYWORD
	ldr	x8, [x8, :lo12:TKEYWORD]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	maybe_convert_keyword, .Lfunc_end0-maybe_convert_keyword
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	keywords,@object                // @keywords
	.globl	keywords
	.p2align	2
keywords:
	.word	0                               // 0x0
	.size	keywords, 4
	.type	TKEYWORD,@object                // @TKEYWORD
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.xword	0                               // 0x0
	.size	TKEYWORD, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_convert_keyword
	.addrsig_sym map_get
	.addrsig_sym copy_token
	.addrsig_sym TIDENT
	.addrsig_sym keywords
	.addrsig_sym TKEYWORD