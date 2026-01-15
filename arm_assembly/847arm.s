	.text
	.p2align	2                               // -- Begin function stack_pop_will_free
	.type	stack_pop_will_free,@function
stack_pop_will_free:                    // @stack_pop_will_free
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stack_pop_will_free, .Lfunc_end0-stack_pop_will_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_pop_will_free