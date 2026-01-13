	.text
	.p2align	2                               // -- Begin function get_typedef
	.type	get_typedef,@function
get_typedef:                            // @get_typedef
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	env
	ldur	x1, [x29, #-8]
	bl	map_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, AST_TYPEDEF
	ldr	x9, [x9, :lo12:AST_TYPEDEF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_3:
	mov	x8, xzr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_typedef, .Lfunc_end0-get_typedef
                                        // -- End function
	.type	AST_TYPEDEF,@object             // @AST_TYPEDEF
	.bss
	.globl	AST_TYPEDEF
	.p2align	3
AST_TYPEDEF:
	.xword	0                               // 0x0
	.size	AST_TYPEDEF, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_typedef
	.addrsig_sym map_get
	.addrsig_sym env
	.addrsig_sym AST_TYPEDEF