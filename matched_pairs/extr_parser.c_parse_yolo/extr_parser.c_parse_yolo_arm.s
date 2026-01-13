	.text
	.globl	parse_yolo                      // -- Begin function parse_yolo
	.p2align	2
	.type	parse_yolo,@function
parse_yolo:                             // @parse_yolo
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #20
	bl	option_find_int
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #1
	str	w2, [sp, #28]                   // 4-byte Folded Spill
	bl	option_find_int
	stur	w0, [x29, #-16]
	ldur	w8, [x29, #-16]
	sub	x9, x29, #20
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w2, wzr
	str	w2, [sp, #44]                   // 4-byte Folded Spill
	bl	option_find_str
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	parse_yolo_mask
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldr	w0, [x9, #16]
	ldr	w1, [x9, #12]
	ldr	w2, [x9, #8]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-16]
	ldur	x5, [x29, #-40]
	ldur	w6, [x29, #-12]
	bl	make_yolo_layer
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x9, [x1]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, #90
	bl	option_find_int_quiet
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w2, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [x8, #56]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	option_find_float
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w2, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [x8, #48]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	option_find_float
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	option_find_float
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w2, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [x8, #32]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	option_find_int_quiet
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w2, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [x8, #24]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	option_find_str
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-48]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-48]
	bl	read_map
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	w0, [x8, #16]
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	mov	w2, wzr
	bl	option_find_str
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_14
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-32]
	bl	strlen
	stur	w0, [x29, #-52]
	mov	w8, #1
	str	w8, [sp, #56]
	str	wzr, [sp, #52]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #52]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #44
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #56]
	add	w8, w8, #1
	str	w8, [sp, #56]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_4
.LBB0_9:
	str	wzr, [sp, #52]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x0, [x29, #-32]
	bl	atof
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	str	s0, [sp, #48]
	ldr	w8, [sp, #48]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #52]
	str	w8, [x9, x10, lsl #2]
	ldur	x0, [x29, #-32]
	mov	w1, #44
	bl	strchr
	add	x8, x0, #1
	stur	x8, [x29, #-32]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_10
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	parse_yolo, .Lfunc_end0-parse_yolo
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"classes"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"num"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mask"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"max"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"jitter"
	.size	.L.str.4, 7
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"ignore_thresh"
	.size	.L.str.5, 14
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"truth_thresh"
	.size	.L.str.6, 13
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"random"
	.size	.L.str.7, 7
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"map"
	.size	.L.str.8, 4
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"anchors"
	.size	.L.str.9, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym parse_yolo_mask
	.addrsig_sym make_yolo_layer
	.addrsig_sym assert
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_float
	.addrsig_sym read_map
	.addrsig_sym strlen
	.addrsig_sym atof
	.addrsig_sym strchr