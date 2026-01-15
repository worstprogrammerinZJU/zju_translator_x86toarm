	.text
	.p2align	2                               // -- Begin function writetokens
	.type	writetokens,@function
writetokens:                            // @writetokens
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	mov	w8, #43
	sturb	w8, [x29, #-5]
	adrp	x8, wjobfd
	ldr	x8, [x8, :lo12:wjobfd]
	tbnz	x8, #63, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	adrp	x8, wjobfd
	ldr	x9, [x8, :lo12:wjobfd]
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	adrp	x9, F_SETFL
	ldr	w9, [x9, :lo12:F_SETFL]
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	ldr	x0, [x8, :lo12:wjobfd]
	adrp	x8, F_GETFL
	ldr	w1, [x8, :lo12:F_GETFL]
	bl	fcntl
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w8, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, O_NONBLOCK
	ldr	w9, [x9, :lo12:O_NONBLOCK]
	orr	w2, w8, w9
	bl	fcntl
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	b.le	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	adrp	x8, wjobfd
	ldr	x0, [x8, :lo12:wjobfd]
	sub	x1, x29, #5
	mov	w2, #1
	bl	write
	subs	w8, w0, #1
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_2
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	writetokens, .Lfunc_end0-writetokens
                                        // -- End function
	.type	wjobfd,@object                  // @wjobfd
	.bss
	.globl	wjobfd
	.p2align	3
wjobfd:
	.xword	0                               // 0x0
	.size	wjobfd, 8
	.type	F_SETFL,@object                 // @F_SETFL
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.word	0                               // 0x0
	.size	F_SETFL, 4
	.type	F_GETFL,@object                 // @F_GETFL
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.word	0                               // 0x0
	.size	F_GETFL, 4
	.type	O_NONBLOCK,@object              // @O_NONBLOCK
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.word	0                               // 0x0
	.size	O_NONBLOCK, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym writetokens
	.addrsig_sym fcntl
	.addrsig_sym write
	.addrsig_sym wjobfd
	.addrsig_sym F_SETFL
	.addrsig_sym F_GETFL
	.addrsig_sym O_NONBLOCK