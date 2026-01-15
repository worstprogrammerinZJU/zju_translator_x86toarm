	.text
	.p2align	2                               // -- Begin function yy_pop_state
	.type	yy_pop_state,@function
yy_pop_state:                           // @yy_pop_state
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x9, [sp]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	w0, [x8, x9, lsl #2]
	bl	BEGIN
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yy_pop_state, .Lfunc_end0-yy_pop_state
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start-condition stack underflow"
	.size	.L.str, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_pop_state
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym BEGIN