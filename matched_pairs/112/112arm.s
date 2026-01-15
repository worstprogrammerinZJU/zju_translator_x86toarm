	.text
	.globl	dunion                          // -- Begin function dunion
	.p2align	2
	.type	dunion,@function
dunion:                                 // @dunion
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #40]
	add	x8, sp, #8
	bl	dintersect
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x10, [sp, #24]
	subs	x8, x8, x10
	str	x8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x10, [sp, #16]
	subs	x8, x8, x10
	str	x8, [x9, #8]
	ldr	w10, [sp, #12]
	mov	w8, wzr
	subs	w10, w8, w10
	str	w10, [x9, #4]
	ldr	w10, [sp, #8]
	subs	w8, w8, w10
	str	w8, [x9]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	dunion, .Lfunc_end0-dunion
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dintersect