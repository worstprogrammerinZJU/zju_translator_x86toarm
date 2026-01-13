	.text
	.p2align	2                               // -- Begin function do_read_if
	.type	do_read_if,@function
do_read_if:                             // @do_read_if
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	adrp	x8, cond_incl_stack
	ldr	w8, [x8, :lo12:cond_incl_stack]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	make_cond_incl
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	vec_push
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	skip_cond_incl
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	do_read_if, .Lfunc_end0-do_read_if
                                        // -- End function
	.type	cond_incl_stack,@object         // @cond_incl_stack
	.bss
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.word	0                               // 0x0
	.size	cond_incl_stack, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_read_if
	.addrsig_sym vec_push
	.addrsig_sym make_cond_incl
	.addrsig_sym skip_cond_incl
	.addrsig_sym cond_incl_stack