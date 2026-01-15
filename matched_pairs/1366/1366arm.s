	.text
	.p2align	2                               // -- Begin function classify
	.type	classify,@function
classify:                               // @classify
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #11]
	ldrb	w8, [sp, #11]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #9
	subs	w8, w8, #1
	b.ls	.LBB0_10
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #13
	b.eq	.LBB0_10
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #32
	b.eq	.LBB0_10
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #34
	b.eq	.LBB0_11
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #44
	b.eq	.LBB0_12
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #58
	b.eq	.LBB0_12
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #91
	b.eq	.LBB0_12
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #93
	b.eq	.LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #123
	b.eq	.LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #125
	b.eq	.LBB0_12
	b	.LBB0_13
.LBB0_10:
	adrp	x8, WHITESPACE
	ldr	w8, [x8, :lo12:WHITESPACE]
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_11:
	adrp	x8, QUOTE
	ldr	w8, [x8, :lo12:QUOTE]
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_12:
	adrp	x8, STRUCTURE
	ldr	w8, [x8, :lo12:STRUCTURE]
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_13:
	adrp	x8, LITERAL
	ldr	w8, [x8, :lo12:LITERAL]
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_14:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	classify, .Lfunc_end0-classify
                                        // -- End function
	.type	WHITESPACE,@object              // @WHITESPACE
	.bss
	.globl	WHITESPACE
	.p2align	2
WHITESPACE:
	.word	0                               // 0x0
	.size	WHITESPACE, 4
	.type	QUOTE,@object                   // @QUOTE
	.globl	QUOTE
	.p2align	2
QUOTE:
	.word	0                               // 0x0
	.size	QUOTE, 4
	.type	STRUCTURE,@object               // @STRUCTURE
	.globl	STRUCTURE
	.p2align	2
STRUCTURE:
	.word	0                               // 0x0
	.size	STRUCTURE, 4
	.type	LITERAL,@object                 // @LITERAL
	.globl	LITERAL
	.p2align	2
LITERAL:
	.word	0                               // 0x0
	.size	LITERAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym classify
	.addrsig_sym WHITESPACE
	.addrsig_sym QUOTE
	.addrsig_sym STRUCTURE
	.addrsig_sym LITERAL