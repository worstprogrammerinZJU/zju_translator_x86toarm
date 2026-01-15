	.text
	.globl	list_to_array                   // -- Begin function list_to_array
	.p2align	2
	.type	list_to_array,@function
list_to_array:                          // @list_to_array
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	mov	w1, #8
	bl	calloc
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #12]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	list_to_array, .Lfunc_end0-list_to_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc