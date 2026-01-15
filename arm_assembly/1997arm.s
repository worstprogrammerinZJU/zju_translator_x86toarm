	.text
	.globl	parse_route                     // -- Begin function parse_route
	.p2align	2
	.type	parse_route,@function
parse_route:                            // @parse_route
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	option_find
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	strlen
	stur	w0, [x29, #-36]
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_2
.LBB0_2:
	mov	w8, #1
	stur	w8, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	ldursw	x9, [x29, #-44]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #44
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_3
.LBB0_8:
	ldur	w0, [x29, #-40]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	stur	x0, [x29, #-56]
	ldur	w0, [x29, #-40]
	bl	calloc
	stur	x0, [x29, #-64]
	stur	wzr, [x29, #-44]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-40]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x0, [x29, #-32]
	bl	atoi
	stur	w0, [x29, #-68]
	ldur	x0, [x29, #-32]
	mov	w1, #44
	bl	strchr
	add	x8, x0, #1
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-68]
	subs	w8, w8, #0
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-68]
	add	w8, w8, w9
	stur	w8, [x29, #-68]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-68]
	ldur	x9, [x29, #-56]
	ldursw	x10, [x29, #-44]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-68]
	lsl	x9, x9, #5
	ldr	w8, [x8, x9]
	ldur	x9, [x29, #-64]
	ldursw	x10, [x29, #-44]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_9
.LBB0_14:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-4]
	stur	w9, [x29, #-72]
	ldur	w0, [x29, #-72]
	ldur	w1, [x29, #-40]
	ldur	x2, [x29, #-56]
	ldur	x3, [x29, #-64]
	bl	make_route_layer
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldur	x10, [x29, #-56]
	ldrsw	x10, [x10]
	add	x8, x8, x10, lsl #5
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	q0, [x8, #16]
	str	q0, [sp, #80]
	ldr	x8, [sp, #72]
	str	x8, [x9]
	ldr	x8, [sp, #80]
	str	x8, [x9, #8]
	ldr	x8, [sp, #88]
	str	x8, [x9, #16]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_15
.LBB0_15:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-40]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-44]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #60]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #60]
	add	x8, x8, x9, lsl #5
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #80]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x10, [sp, #40]
	ldr	x8, [x9, #16]
	add	x8, x8, x10
	str	x8, [x9, #16]
	b	.LBB0_20
.LBB0_19:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [x8, #16]
	str	xzr, [x8]
	str	xzr, [x8, #8]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_15
.LBB0_22:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	parse_route, .Lfunc_end0-parse_route
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"layers"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Route Layer must specify input layers"
	.size	.L.str.1, 38
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym strlen
	.addrsig_sym error
	.addrsig_sym calloc
	.addrsig_sym atoi
	.addrsig_sym strchr
	.addrsig_sym make_route_layer