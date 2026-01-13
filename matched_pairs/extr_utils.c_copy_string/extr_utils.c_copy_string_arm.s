	.text
	.globl	copy_string                     // -- Begin function copy_string
	.p2align	2
	.type	copy_string,@function
copy_string:                            // @copy_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	strlen
	add	x0, x0, #1
	bl	malloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	strlen
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	add	x2, x8, #1
	bl	strncpy
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	copy_string, .Lfunc_end0-copy_string
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym strlen
	.addrsig_sym strncpy