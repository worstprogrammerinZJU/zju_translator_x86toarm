	.text
	.p2align	2                               // -- Begin function enter
	.type	enter,@function
enter:                                  // @enter
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	wzr, [sp, #16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #40
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #91
	b.eq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #123
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #128
	b.eq	.LBB0_7
	b	.LBB0_8
.LBB0_4:
	adrp	x8, IN_PAREN
	ldr	w8, [x8, :lo12:IN_PAREN]
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_5:
	adrp	x8, IN_BRACKET
	ldr	w8, [x8, :lo12:IN_BRACKET]
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_6:
	adrp	x8, IN_BRACE
	ldr	w8, [x8, :lo12:IN_BRACE]
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_7:
	adrp	x8, IN_QQINTERP
	ldr	w8, [x8, :lo12:IN_QQINTERP]
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #16]
	bl	assert
	ldr	w0, [sp, #16]
	ldur	w1, [x29, #-12]
	bl	yy_push_state
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	enter, .Lfunc_end0-enter
                                        // -- End function
	.type	IN_PAREN,@object                // @IN_PAREN
	.bss
	.globl	IN_PAREN
	.p2align	2
IN_PAREN:
	.word	0                               // 0x0
	.size	IN_PAREN, 4
	.type	IN_BRACKET,@object              // @IN_BRACKET
	.globl	IN_BRACKET
	.p2align	2
IN_BRACKET:
	.word	0                               // 0x0
	.size	IN_BRACKET, 4
	.type	IN_BRACE,@object                // @IN_BRACE
	.globl	IN_BRACE
	.p2align	2
IN_BRACE:
	.word	0                               // 0x0
	.size	IN_BRACE, 4
	.type	IN_QQINTERP,@object             // @IN_QQINTERP
	.globl	IN_QQINTERP
	.p2align	2
IN_QQINTERP:
	.word	0                               // 0x0
	.size	IN_QQINTERP, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym enter
	.addrsig_sym assert
	.addrsig_sym yy_push_state
	.addrsig_sym IN_PAREN
	.addrsig_sym IN_BRACKET
	.addrsig_sym IN_BRACE
	.addrsig_sym IN_QQINTERP