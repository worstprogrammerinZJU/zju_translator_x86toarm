	.text
	.globl	csv_to_matrix                   // -- Begin function csv_to_matrix
	.p2align	2
	.type	csv_to_matrix,@function
csv_to_matrix:                          // @csv_to_matrix
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #24]
	bl	file_error
	b	.LBB0_2
.LBB0_2:
	mov	w8, #-1
	stur	w8, [x29, #-16]
	str	wzr, [sp, #4]
	mov	w8, #1024
	str	w8, [sp]
	ldr	w0, [sp]
	mov	w1, #8
	bl	calloc
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	bl	fgetl
	str	x0, [sp, #8]
	cbz	x0, .LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-16]
	adds	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #8]
	bl	count_fields
	stur	w0, [x29, #-16]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp]
	lsl	w8, w8, #1
	str	w8, [sp]
	ldur	x0, [x29, #-8]
	ldrsw	x8, [sp]
	lsl	x8, x8, #3
	mov	w1, w8
	bl	realloc
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #8]
	ldur	w1, [x29, #-16]
	bl	parse_fields
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #4]
	str	w0, [x8, x9, lsl #2]
	ldr	x0, [sp, #8]
	bl	free
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldrsw	x8, [sp, #4]
	lsl	x8, x8, #3
	mov	w1, w8
	bl	realloc
	stur	x0, [x29, #-8]
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-12]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	csv_to_matrix, .Lfunc_end0-csv_to_matrix
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym calloc
	.addrsig_sym fgetl
	.addrsig_sym count_fields
	.addrsig_sym realloc
	.addrsig_sym parse_fields
	.addrsig_sym free