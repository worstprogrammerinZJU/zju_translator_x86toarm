	.text
	.globl	select_data                     // -- Begin function select_data
	.p2align	2
	.type	select_data,@function
select_data:                            // @select_data
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	x8, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	w1, wzr
	mov	x2, #72
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #60]
	str	w8, [x9, #60]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #56]
	str	w8, [x9, #56]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #48]
	str	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #24]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #32]
	mov	w1, #8
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x10, [x29, #-16]
	ldursw	x11, [x29, #-20]
	ldrsw	x10, [x10, x11, lsl #2]
	mov	x11, #72
	mul	x10, x10, x11
	add	x8, x8, x10
	ldr	x8, [x8, #40]
	ldursw	x10, [x29, #-20]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x10, [x9, #40]
	ldursw	x12, [x29, #-20]
	str	w8, [x10, x12, lsl #2]
	ldur	x8, [x29, #-8]
	ldur	x10, [x29, #-16]
	ldursw	x12, [x29, #-20]
	ldrsw	x10, [x10, x12, lsl #2]
	mul	x10, x10, x11
	add	x8, x8, x10
	ldr	x8, [x8, #16]
	ldursw	x10, [x29, #-20]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-20]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	select_data, .Lfunc_end0-select_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc