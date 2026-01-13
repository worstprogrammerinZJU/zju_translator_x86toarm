	.text
	.globl	parse_reorg                     // -- Begin function parse_reorg
	.p2align	2
	.type	parse_reorg,@function
parse_reorg:                            // @parse_reorg
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1
	bl	option_find_int
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, wzr
	str	w2, [sp]                        // 4-byte Folded Spill
	bl	option_find_int_quiet
	ldr	w2, [sp]                        // 4-byte Folded Reload
	str	w0, [sp, #32]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	option_find_int_quiet
	ldr	w2, [sp]                        // 4-byte Folded Reload
	str	w0, [sp, #28]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	option_find_int_quiet
	str	w0, [sp, #24]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #16]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #20]
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #20]
	ldr	w1, [sp, #12]
	ldr	w2, [sp, #16]
	ldr	w3, [sp, #8]
	ldur	w4, [x29, #-28]
	ldr	w5, [sp, #32]
	ldr	w6, [sp, #28]
	ldr	w7, [sp, #24]
	bl	make_reorg_layer
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_reorg, .Lfunc_end0-parse_reorg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stride"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"reverse"
	.size	.L.str.1, 8
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"flatten"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"extra"
	.size	.L.str.3, 6
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"Layer before reorg layer must output image."
	.size	.L.str.4, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym error
	.addrsig_sym make_reorg_layer