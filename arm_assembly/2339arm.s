	.text
	.p2align	2                               // -- Begin function arrow
	.type	arrow,@function
arrow:                                  // @arrow
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	adrp	x8, .L__const.arrow.v1
	add	x8, x8, :lo12:.L__const.arrow.v1
	ldr	q0, [x8]
	sub	x8, x29, #16
	stur	q0, [x29, #-16]
	sub	x9, x29, #32
	mov	w10, #6
	str	w10, [sp, #12]                  // 4-byte Folded Spill
	stur	w10, [x29, #-32]
	stur	x8, [x29, #-24]
	add	x8, sp, #32
	mov	w0, #7
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	str	w0, [sp, #32]
	str	x9, [sp, #40]
	str	x8, [sp, #24]
	ldr	w1, [sp, #32]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	expect
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	mov	w0, #5
	bl	expect
	ldr	x8, [sp, #24]
	mov	w0, #10
	str	w0, [x8]
	ldr	x8, [sp, #24]
	ldr	x9, [x8, #8]
	mov	w8, #11
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x9, [x8, #8]
	mov	w8, #12
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	expect
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	arrow, .Lfunc_end0-arrow
                                        // -- End function
	.type	.L__const.arrow.v1,@object      // @__const.arrow.v1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
.L__const.arrow.v1:
	.word	5                               // 0x5
	.zero	4
	.xword	0
	.size	.L__const.arrow.v1, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym arrow
	.addrsig_sym expect