	.text
	.p2align	2                               // -- Begin function sort_inits
	.type	sort_inits,@function
sort_inits:                             // @sort_inits
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	vec_body
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	vec_len
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	adrp	x8, comp_init
	ldr	w3, [x8, :lo12:comp_init]
	mov	w2, #8
	bl	qsort
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sort_inits, .Lfunc_end0-sort_inits
                                        // -- End function
	.type	comp_init,@object               // @comp_init
	.bss
	.globl	comp_init
	.p2align	2
comp_init:
	.word	0                               // 0x0
	.size	comp_init, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sort_inits
	.addrsig_sym qsort
	.addrsig_sym vec_body
	.addrsig_sym vec_len
	.addrsig_sym comp_init