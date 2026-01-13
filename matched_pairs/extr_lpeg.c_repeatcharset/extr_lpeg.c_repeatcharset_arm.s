	.text
	.p2align	2                               // -- Begin function repeatcharset
	.type	repeatcharset,@function
repeatcharset:                          // @repeatcharset
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	mul	w9, w8, w9
	adrp	x8, CHARSETINSTSIZE
	ldr	x8, [x8, :lo12:CHARSETINSTSIZE]
	add	x1, x8, w9, sxtw
	bl	newpatt
	str	x0, [sp, #8]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	mov	w2, #1
	bl	addpatt
	ldr	x8, [sp, #8]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #8]
	adrp	x8, ISpan
	ldr	w1, [x8, :lo12:ISpan]
	mov	w2, wzr
	bl	setinst
	adrp	x9, k
	ldr	x0, [x9, :lo12:k]
	ldur	x8, [x29, #-16]
	ldr	x10, [x9, :lo12:k]
	ldr	w1, [x8, x10, lsl #2]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [x9, :lo12:k]
	str	w1, [x8, x9, lsl #2]
	bl	loopset
	ldr	x0, [sp, #8]
	bl	correctset
	mov	w0, #1
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	repeatcharset, .Lfunc_end0-repeatcharset
                                        // -- End function
	.type	CHARSETINSTSIZE,@object         // @CHARSETINSTSIZE
	.bss
	.globl	CHARSETINSTSIZE
	.p2align	3
CHARSETINSTSIZE:
	.xword	0                               // 0x0
	.size	CHARSETINSTSIZE, 8
	.type	ISpan,@object                   // @ISpan
	.globl	ISpan
	.p2align	2
ISpan:
	.word	0                               // 0x0
	.size	ISpan, 4
	.type	k,@object                       // @k
	.globl	k
	.p2align	3
k:
	.xword	0                               // 0x0
	.size	k, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym repeatcharset
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym setinst
	.addrsig_sym loopset
	.addrsig_sym correctset
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym ISpan
	.addrsig_sym k