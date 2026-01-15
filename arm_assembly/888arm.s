	.text
	.p2align	2                               // -- Begin function ret_follows
	.type	ret_follows,@function
ret_follows:                            // @ret_follows
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, RET
	ldr	x9, [x9, :lo12:RET]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp]
	add	x9, x8, #8
	str	x9, [sp]
	ldr	x8, [x8]
	adrp	x9, JUMP
	ldr	x9, [x9, :lo12:JUMP]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp]
	ldr	x9, [sp]
	ldr	x9, [x9]
	add	x8, x8, x9, lsl #3
	add	x0, x8, #8
	bl	ret_follows
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ret_follows, .Lfunc_end0-ret_follows
                                        // -- End function
	.type	RET,@object                     // @RET
	.bss
	.globl	RET
	.p2align	3
RET:
	.xword	0                               // 0x0
	.size	RET, 8
	.type	JUMP,@object                    // @JUMP
	.globl	JUMP
	.p2align	3
JUMP:
	.xword	0                               // 0x0
	.size	JUMP, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ret_follows
	.addrsig_sym RET
	.addrsig_sym JUMP