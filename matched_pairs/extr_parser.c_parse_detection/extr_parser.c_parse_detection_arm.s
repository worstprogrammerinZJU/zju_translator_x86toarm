	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function parse_detection
.LCPI0_0:
	.xword	0x3fc999999999999a              // double 0.20000000000000001
	.text
	.globl	parse_detection
	.p2align	2
	.type	parse_detection,@function
parse_detection:                        // @parse_detection
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	option_find_int
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	mov	w8, w0
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_int
	mov	w8, w0
	stur	w8, [x29, #-24]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w2, wzr
	str	w2, [sp, #28]                   // 4-byte Folded Spill
	bl	option_find_int
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	mov	w8, w0
	stur	w8, [x29, #-28]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	option_find_int
	mov	w8, w0
	stur	w8, [x29, #-32]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	w2, #7
	bl	option_find_int
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	mov	w9, w0
	stur	w9, [x29, #-36]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldur	w2, [x29, #-32]
	ldur	w3, [x29, #-36]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-20]
	ldur	w6, [x29, #-28]
	bl	make_detection_layer
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	option_find_int
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #80]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	option_find_int
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	mov	w2, #90
	bl	option_find_int_quiet
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	fmov	d0, #1.00000000
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	bl	option_find_float
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	option_find_int
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	option_find_float
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	option_find_float
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #32]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	option_find_float
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #24]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	bl	option_find_float
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	option_find_int_quiet
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	option_find_int_quiet
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	parse_detection, .Lfunc_end0-parse_detection
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
	.asciz	"rescore"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"num"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"side"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"softmax"
	.size	.L.str.5, 8
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"sqrt"
	.size	.L.str.6, 5
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"max"
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"coord_scale"
	.size	.L.str.8, 12
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"forced"
	.size	.L.str.9, 7
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"object_scale"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"noobject_scale"
	.size	.L.str.11, 15
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"class_scale"
	.size	.L.str.12, 12
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"jitter"
	.size	.L.str.13, 7
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"random"
	.size	.L.str.14, 7
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"reorg"
	.size	.L.str.15, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_detection_layer
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_float