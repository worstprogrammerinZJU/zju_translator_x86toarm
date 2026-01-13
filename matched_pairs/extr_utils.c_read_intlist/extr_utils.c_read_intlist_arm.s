	.text
	.globl	read_intlist                    // -- Begin function read_intlist
	.p2align	2
	.type	read_intlist,@function
read_intlist:                           // @read_intlist
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	ldur	x8, [x29, #-8]
	cbz	x8, .LBB0_12
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	strlen
	str	w0, [sp, #12]
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9]
	str	wzr, [sp, #8]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #44
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #16]
	str	wzr, [sp, #8]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldur	x0, [x29, #-8]
	bl	atoi
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	str	w0, [x8, x9, lsl #2]
	ldur	x0, [x29, #-8]
	mov	w1, #44
	bl	strchr
	add	x8, x0, #1
	stur	x8, [x29, #-8]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_8
.LBB0_11:
	b	.LBB0_13
.LBB0_12:
	mov	w0, #1
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	mov	w1, #4
	bl	calloc
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	x0, [sp, #16]
	ldur	w9, [x29, #-20]
	ldr	x10, [sp, #16]
	str	w9, [x10]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_intlist, .Lfunc_end0-read_intlist
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym calloc
	.addrsig_sym atoi
	.addrsig_sym strchr