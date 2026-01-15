	.text
	.globl	parse_shortcut                  // -- Begin function parse_shortcut
	.p2align	2
	.type	parse_shortcut,@function
parse_shortcut:                         // @parse_shortcut
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x2, [x29, #-16]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	option_find
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	atoi
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w8, [x8]
	ldur	w9, [x29, #-28]
	add	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w10, [x9, #4]
	stur	w10, [x29, #-32]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10]
	ldursw	x11, [x29, #-28]
	add	x10, x10, x11, lsl #5
	ldr	q0, [x10]
	str	q0, [sp, #48]
	ldr	q0, [x10, #16]
	str	q0, [sp, #64]
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-28]
	ldr	w2, [x9, #16]
	ldr	w3, [x9, #12]
	ldr	w4, [x9, #8]
	ldr	w5, [sp, #76]
	ldr	w6, [sp, #72]
	ldr	w7, [sp, #68]
	bl	make_shortcut_layer
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	option_find_str
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	get_activation
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [sp, #36]
	ldr	w8, [sp, #36]
	str	w8, [x9, #16]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, #1
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	option_find_float_quiet
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	option_find_float_quiet
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	parse_shortcut, .Lfunc_end0-parse_shortcut
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"from"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"activation"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"linear"
	.size	.L.str.2, 7
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"alpha"
	.size	.L.str.3, 6
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"beta"
	.size	.L.str.4, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atoi
	.addrsig_sym make_shortcut_layer
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_float_quiet