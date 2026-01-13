	.text
	.p2align	2                               // -- Begin function skip_to_brace
	.type	skip_to_brace,@function
skip_to_brace:                          // @skip_to_brace
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #125
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_8
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #46
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	bl	get
	mov	w0, #61
	bl	expect
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	stur	x0, [x29, #-8]
	bl	read_assignment_expr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	node2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	warnt
	bl	maybe_skip_comma
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	skip_to_brace, .Lfunc_end0-skip_to_brace
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"excessive initializer: %s"
	.size	.L.str, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_to_brace
	.addrsig_sym next_token
	.addrsig_sym get
	.addrsig_sym expect
	.addrsig_sym peek
	.addrsig_sym read_assignment_expr
	.addrsig_sym warnt
	.addrsig_sym node2s
	.addrsig_sym maybe_skip_comma