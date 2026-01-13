	.text
	.p2align	2                               // -- Begin function multadd
	.type	multadd,@function
multadd:                                // @multadd
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]
	stur	wzr, [x29, #-28]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	asr	w8, w8, #16
	str	w8, [sp, #28]
	ldrh	w8, [sp, #12]
	ldr	x9, [sp, #16]
	add	x10, x9, #4
	str	x10, [sp, #16]
	str	w8, [x9]
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.lt	.LBB0_1
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_7
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.lt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	add	x1, x8, #1
	bl	Balloc
	str	x0, [sp]
	ldr	x0, [sp]
	ldur	x1, [x29, #-16]
	bl	Bcopy
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	Bfree
	ldr	x8, [sp]
	stur	x8, [x29, #-16]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #32]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	multadd, .Lfunc_end0-multadd
                                        // -- End function
	.type	FFFFFFFF,@object                // @FFFFFFFF
	.bss
	.globl	FFFFFFFF
	.p2align	2
FFFFFFFF:
	.word	0                               // 0x0
	.size	FFFFFFFF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym multadd
	.addrsig_sym Balloc
	.addrsig_sym Bcopy
	.addrsig_sym Bfree