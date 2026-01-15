	.text
	.p2align	2                               // -- Begin function expand_all
	.type	expand_all,@function
expand_all:                             // @expand_all
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	vec_reverse
	bl	token_buffer_stash
	bl	make_vector
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	read_expand
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	vec_push
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	propagate_space
	bl	token_buffer_unstash
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	expand_all, .Lfunc_end0-expand_all
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expand_all
	.addrsig_sym token_buffer_stash
	.addrsig_sym vec_reverse
	.addrsig_sym make_vector
	.addrsig_sym read_expand
	.addrsig_sym vec_push
	.addrsig_sym propagate_space
	.addrsig_sym token_buffer_unstash
	.addrsig_sym TEOF