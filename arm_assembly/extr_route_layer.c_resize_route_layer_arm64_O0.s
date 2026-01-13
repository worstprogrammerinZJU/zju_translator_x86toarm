	.text
	.globl	resize_route_layer              // -- Begin function resize_route_layer
	.p2align	2
	.type	resize_route_layer,@function
resize_route_layer:                     // @resize_route_layer
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldr	x9, [x9]
	add	x8, x8, x9, lsl #5
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #48]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldr	w8, [sp, #72]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #32]
	ldr	w8, [sp, #72]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #40]
	str	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9, lsl #5
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w10, [sp, #24]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #32]
	add	w8, w8, w10
	str	w8, [x9, #32]
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #40]
	ldursw	x10, [x29, #-20]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #24]
	add	x8, x8, x10
	str	x8, [x9, #24]
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp]
	ldr	x2, [sp, #8]
	ldr	w3, [sp, #48]
	ldr	x4, [sp, #56]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #24]
	ldur	x8, [x29, #-8]
	str	wzr, [x8, #8]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #16]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #52]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #64]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #56]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #64]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #80]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #56]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #80]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	resize_route_layer, .Lfunc_end0-resize_route_layer
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d, %d %d\n"
	.size	.L.str, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym realloc