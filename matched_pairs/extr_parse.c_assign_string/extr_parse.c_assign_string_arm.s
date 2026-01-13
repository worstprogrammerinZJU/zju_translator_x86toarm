	.text
	.p2align	2                               // -- Begin function assign_string
	.type	assign_string,@function
assign_string:                          // @assign_string
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	bl	strlen
	add	w8, w0, #1
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-32]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	w10, [x8]
	mov	w8, #0
	subs	w9, w9, w10
	stur	w8, [x29, #-36]                 // 4-byte Folded Spill
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	stur	w8, [x29, #-36]                 // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-36]                 // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	adrp	x8, type_char
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_char]
	ldur	x8, [x29, #-24]
	add	x9, x8, #1
	stur	x9, [x29, #-24]
	ldrb	w1, [x8]
	bl	ast_inttype
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w1, [x8, :lo12:type_char]
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-32]
	add	w2, w8, w9
	bl	ast_init
	mov	w1, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_3
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, type_char
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_char]
	mov	w1, wzr
	bl	ast_inttype
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [x8, :lo12:type_char]
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-32]
	add	w2, w8, w9
	bl	ast_init
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_9
.LBB0_12:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	assign_string, .Lfunc_end0-assign_string
                                        // -- End function
	.type	type_char,@object               // @type_char
	.bss
	.globl	type_char
	.p2align	2
type_char:
	.word	0                               // 0x0
	.size	type_char, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assign_string
	.addrsig_sym strlen
	.addrsig_sym vec_push
	.addrsig_sym ast_init
	.addrsig_sym ast_inttype
	.addrsig_sym type_char