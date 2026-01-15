	.text
	.globl	parse_local                     // -- Begin function parse_local
	.p2align	2
	.type	parse_local,@function
parse_local:                            // @parse_local
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	bl	option_find_int
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	option_find_int
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	stur	w0, [x29, #-32]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	option_find_int
	stur	w0, [x29, #-36]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, wzr
	bl	option_find_int
	stur	w0, [x29, #-40]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	bl	option_find_str
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	bl	get_activation
	str	w0, [sp, #44]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #36]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #32]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #28]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #40]
	ldr	w8, [sp, #36]
	cbz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #28]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #40]
	ldr	w1, [sp, #36]
	ldr	w2, [sp, #32]
	ldr	w3, [sp, #28]
	ldur	w4, [x29, #-28]
	ldur	w5, [x29, #-32]
	ldur	w6, [x29, #-36]
	ldur	w7, [x29, #-40]
	ldr	w8, [sp, #44]
	mov	x9, sp
	str	w8, [x9]
	bl	make_local_layer
	str	w0, [sp, #24]
	ldr	w0, [sp, #24]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	parse_local, .Lfunc_end0-parse_local
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filters"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"size"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"stride"
	.size	.L.str.2, 7
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"pad"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"activation"
	.size	.L.str.4, 11
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"logistic"
	.size	.L.str.5, 9
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"Layer before local layer must output image."
	.size	.L.str.6, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym error
	.addrsig_sym make_local_layer