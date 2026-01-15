	.text
	.p2align	2                               // -- Begin function _skip
	.type	_skip,@function
_skip:                                  // @_skip
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	bl	fill_extra_data
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldr	w2, [sp, #4]
	adrp	x8, STATE_SEND_WORD
	ldr	w3, [x8, :lo12:STATE_SEND_WORD]
	bl	reply
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #24]
	adrp	x8, STATE_BITBUCKET
	ldr	w8, [x8, :lo12:STATE_BITBUCKET]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	_skip, .Lfunc_end0-_skip
                                        // -- End function
	.type	STATE_SEND_WORD,@object         // @STATE_SEND_WORD
	.bss
	.globl	STATE_SEND_WORD
	.p2align	2
STATE_SEND_WORD:
	.word	0                               // 0x0
	.size	STATE_SEND_WORD, 4
	.type	STATE_BITBUCKET,@object         // @STATE_BITBUCKET
	.globl	STATE_BITBUCKET
	.p2align	2
STATE_BITBUCKET:
	.word	0                               // 0x0
	.size	STATE_BITBUCKET, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _skip
	.addrsig_sym fill_extra_data
	.addrsig_sym reply
	.addrsig_sym STATE_SEND_WORD
	.addrsig_sym STATE_BITBUCKET