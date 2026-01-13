	.text
	.p2align	2                               // -- Begin function gen_binop
	.type	gen_binop,@function
gen_binop:                              // @gen_binop
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	bl	constant_fold
	stur	w0, [x29, #-20]
	ldur	w0, [x29, #-20]
	bl	block_is_noop
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #37
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	subs	x8, x8, #94
	b.hi	.LBB0_15
// %bb.3:
	ldr	x11, [sp, #24]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_5:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_6:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_7:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_8:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_9:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_10:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_11:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_12:
	adrp	x8, .L.str.8
	add	x8, x8, :lo12:.L.str.8
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_13:
	adrp	x8, .L.str.9
	add	x8, x8, :lo12:.L.str.9
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_14:
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_15:
	ldr	x0, [sp, #32]
	bl	assert
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	gen_lambda
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	gen_lambda
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	BLOCK
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	gen_call
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gen_binop, .Lfunc_end0-gen_binop
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_9-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_plus"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"_minus"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"_multiply"
	.size	.L.str.2, 10
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"_divide"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"_mod"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"_equal"
	.size	.L.str.5, 7
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"_notequal"
	.size	.L.str.6, 10
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"_less"
	.size	.L.str.7, 6
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"_greater"
	.size	.L.str.8, 9
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"_lesseq"
	.size	.L.str.9, 8
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"_greatereq"
	.size	.L.str.10, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_binop
	.addrsig_sym constant_fold
	.addrsig_sym block_is_noop
	.addrsig_sym assert
	.addrsig_sym gen_call
	.addrsig_sym BLOCK
	.addrsig_sym gen_lambda