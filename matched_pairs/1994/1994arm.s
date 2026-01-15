	.text
	.globl	parse_region                    // -- Begin function parse_region
	.p2align	2
	.type	parse_region,@function
parse_region:                           // @parse_region
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x1, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #4
	bl	option_find_int
	mov	w8, w0
	stur	w8, [x29, #-12]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #20
	bl	option_find_int
	mov	w8, w0
	stur	w8, [x29, #-16]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w2, #1
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	option_find_int
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	mov	w10, w0
	stur	w10, [x29, #-20]
	ldr	w0, [x9, #16]
	ldr	w1, [x9, #12]
	ldr	w2, [x9, #8]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-16]
	ldur	w5, [x29, #-12]
	bl	make_region_layer
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x9, [x1]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, wzr
	str	w2, [sp, #28]                   // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #152]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #144]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	option_find_int
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #136]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #128]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	mov	w2, #30
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #120]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	option_find_float
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #112]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #104]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	option_find_float
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #96]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #88]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #80]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	option_find_int_quiet
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	option_find_float
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	option_find_float
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	option_find_float
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	option_find_float
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	option_find_float
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #32]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	option_find_int_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	str	x0, [x8, #24]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	bl	option_find_str
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-32]
	bl	read_tree
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [x8, #20]
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	mov	w2, wzr
	bl	option_find_str
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-40]
	bl	read_map
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [x8, #16]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	mov	w2, wzr
	bl	option_find_str
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	cbz	x8, .LBB0_16
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #48]
	bl	strlen
	str	w0, [sp, #44]
	mov	w8, #1
	str	w8, [sp, #40]
	str	wzr, [sp, #36]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #36]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #44
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_6
.LBB0_11:
	str	wzr, [sp, #36]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	x0, [sp, #48]
	bl	atof
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	s0, [sp, #32]
	ldr	w8, [sp, #32]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #36]
	str	w8, [x9, x10, lsl #2]
	ldr	x0, [sp, #48]
	mov	w1, #44
	bl	strchr
	add	x8, x0, #1
	str	x8, [sp, #48]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_12
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	parse_region, .Lfunc_end0-parse_region
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"coords"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"classes"
	.size	.L.str.1, 8
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"num"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"log"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"sqrt"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"softmax"
	.size	.L.str.5, 8
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"background"
	.size	.L.str.6, 11
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"max"
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"jitter"
	.size	.L.str.8, 7
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"rescore"
	.size	.L.str.9, 8
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"thresh"
	.size	.L.str.10, 7
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"classfix"
	.size	.L.str.11, 9
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"absolute"
	.size	.L.str.12, 9
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"random"
	.size	.L.str.13, 7
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"coord_scale"
	.size	.L.str.14, 12
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"object_scale"
	.size	.L.str.15, 13
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"noobject_scale"
	.size	.L.str.16, 15
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"mask_scale"
	.size	.L.str.17, 11
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"class_scale"
	.size	.L.str.18, 12
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"bias_match"
	.size	.L.str.19, 11
	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"tree"
	.size	.L.str.20, 5
	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"map"
	.size	.L.str.21, 4
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"anchors"
	.size	.L.str.22, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_region_layer
	.addrsig_sym assert
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_float
	.addrsig_sym option_find_str
	.addrsig_sym read_tree
	.addrsig_sym read_map
	.addrsig_sym strlen
	.addrsig_sym atof
	.addrsig_sym strchr