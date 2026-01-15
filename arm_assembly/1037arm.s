	.text
	.p2align	2                               // -- Begin function pop_function
	.type	pop_function,@function
pop_function:                           // @pop_function
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, dumpstack
	ldr	x8, [x8, :lo12:dumpstack]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, functions
	ldr	w0, [x8, :lo12:functions]
	bl	vec_pop
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	pop_function, .Lfunc_end0-pop_function
                                        // -- End function
	.type	dumpstack,@object               // @dumpstack
	.bss
	.globl	dumpstack
	.p2align	3
dumpstack:
	.xword	0                               // 0x0
	.size	dumpstack, 8
	.type	functions,@object               // @functions
	.globl	functions
	.p2align	2
functions:
	.word	0                               // 0x0
	.size	functions, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop_function
	.addrsig_sym vec_pop
	.addrsig_sym dumpstack
	.addrsig_sym functions