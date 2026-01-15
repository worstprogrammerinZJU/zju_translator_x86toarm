	.text
	.globl	print_matrix                    // -- Begin function print_matrix
	.p2align	2
	.type	print_matrix,@function
print_matrix:                           // @print_matrix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #20]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #20]
	mov	w9, #16
	mul	w9, w9, w10
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	str	wzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #20]
	mov	w9, #16
	mul	w9, w9, w10
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	printf
	str	wzr, [sp, #12]
	b	.LBB0_9
.LBB0_9:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_11 Depth 2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	str	wzr, [sp, #8]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_9 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	ldr	d0, [x8, x9, lsl #3]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_11
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	printf
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_9
.LBB0_16:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	printf
	str	wzr, [sp, #8]
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w10, [sp, #20]
	mov	w9, #16
	mul	w9, w9, w10
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_17
.LBB0_20:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	printf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	print_matrix, .Lfunc_end0-print_matrix
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d X %d Matrix:\n"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	" __"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"__ \n"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"|  "
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"  |\n"
	.size	.L.str.5, 5
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%15.7f "
	.size	.L.str.6, 8
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	" |\n"
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"|__"
	.size	.L.str.8, 4
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"__|\n"
	.size	.L.str.9, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf