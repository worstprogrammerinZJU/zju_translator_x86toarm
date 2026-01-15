	.text
	.globl	print_image                     // -- Begin function print_image
	.p2align	2
	.type	print_image,@function
print_image:                            // @print_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-12]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x11, #16]
	ldur	w9, [x29, #-4]
	ldr	w10, [x11, #4]
	mul	w9, w9, w10
	ldr	w10, [x11, #8]
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	ldr	w11, [x11, #8]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldur	w10, [x29, #-12]
	add	w9, w9, w10
	ldr	w1, [x8, w9, sxtw #2]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	w8, [x29, #-12]
	subs	w8, w8, #30
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_10
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_5
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldur	w8, [x29, #-8]
	subs	w8, w8, #30
	b.le	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_16:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	print_image, .Lfunc_end0-print_image
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.2lf, "
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf