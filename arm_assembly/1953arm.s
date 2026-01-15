	.text
	.p2align	2                               // -- Begin function update_oldstyle_param_type
	.type	update_oldstyle_param_type,@function
update_oldstyle_param_type:             // @update_oldstyle_param_type
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-20]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_11
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	vec_get
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	adrp	x9, AST_DECL
	ldr	x9, [x9, :lo12:AST_DECL]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, AST_LVAR
	ldr	x9, [x9, :lo12:AST_LVAR]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	bl	vec_get
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, AST_LVAR
	ldr	x9, [x9, :lo12:AST_LVAR]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #8]
	bl	strcmp
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #12]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	b	.LBB0_9
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_11:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	update_oldstyle_param_type, .Lfunc_end0-update_oldstyle_param_type
                                        // -- End function
	.type	AST_DECL,@object                // @AST_DECL
	.bss
	.globl	AST_DECL
	.p2align	3
AST_DECL:
	.xword	0                               // 0x0
	.size	AST_DECL, 8
	.type	AST_LVAR,@object                // @AST_LVAR
	.globl	AST_LVAR
	.p2align	3
AST_LVAR:
	.xword	0                               // 0x0
	.size	AST_LVAR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"missing parameter: %s"
	.size	.L.str, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym update_oldstyle_param_type
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym error
	.addrsig_sym AST_DECL
	.addrsig_sym AST_LVAR