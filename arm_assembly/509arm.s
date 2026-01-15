	.text
	.globl	fill_truth                      // -- Begin function fill_truth
	.p2align	2
	.type	fill_truth,@function
fill_truth:                             // @fill_truth
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	ldursw	x8, [x29, #-20]
	lsl	x8, x8, #2
	mov	w2, w8
	mov	w1, wzr
	bl	memset
	str	wzr, [sp, #8]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x1, [x8, x9, lsl #3]
	bl	strstr
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	fmov	s0, #1.00000000
	str	s0, [x8, x9, lsl #2]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	b.eq	.LBB0_10
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w1, [sp, #8]
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	fill_truth, .Lfunc_end0-fill_truth
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Too many or too few labels: %d, %s\n"
	.size	.L.str, 36
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memset
	.addrsig_sym strstr
	.addrsig_sym printf