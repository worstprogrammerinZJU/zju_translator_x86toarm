	.text
	.p2align	2                               // -- Begin function check_case_duplicates
	.type	check_case_duplicates,@function
check_case_duplicates:                  // @check_case_duplicates
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	vec_len
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	subs	w1, w8, #1
	bl	vec_get
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	bl	vec_get
	str	x0, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.lt	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x1, [x8, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x1, [x8, #8]
	ldr	x8, [sp, #24]
	ldr	x2, [x8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_9:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	check_case_duplicates, .Lfunc_end0-check_case_duplicates
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duplicate case value: %d"
	.size	.L.str, 25
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"duplicate case value: %d ... %d"
	.size	.L.str.1, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_case_duplicates
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym error