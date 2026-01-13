	.text
	.p2align	2                               // -- Begin function t11
	.type	t11,@function
t11:                                    // @t11
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, v11
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x9, v11
	add	x9, x9, :lo12:v11
	stur	x9, [x29, #-8]
	mov	w0, #78
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	str	w0, [x8, :lo12:v11]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	expect
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [x8, :lo12:v11]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	expect
	ldur	x8, [x29, #-8]
	mov	w0, #79
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	str	w0, [x8]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	expect
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldr	w1, [x8, :lo12:v11]
	bl	expect
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t11, .Lfunc_end0-t11
                                        // -- End function
	.type	v11,@object                     // @v11
	.bss
	.globl	v11
	.p2align	2
v11:
	.zero	4
	.size	v11, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t11
	.addrsig_sym expect
	.addrsig_sym v11