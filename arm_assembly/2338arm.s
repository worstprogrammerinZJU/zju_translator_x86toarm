	.text
	.p2align	2                               // -- Begin function address
	.type	address,@function
address:                                // @address
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, .L__const.address.x
	add	x8, x8, :lo12:.L__const.address.x
	ldr	x9, [x8]
	sub	x8, x29, #8
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x9, [x29, #-8]
	mov	x9, x8
	stur	x9, [x29, #-16]
	add	x8, x8, #4
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	mov	w0, #6
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	expect
	ldur	x8, [x29, #-24]
	ldr	w1, [x8]
	mov	w0, #7
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldur	w1, [x29, #-8]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #24]
	ldr	x8, [sp, #32]
	add	x8, x8, #4
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	w1, [x8, #4]
	bl	expect
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	address, .Lfunc_end0-address
                                        // -- End function
	.type	.L__const.address.x,@object     // @__const.address.x
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.address.x:
	.word	6                               // 0x6
	.word	7                               // 0x7
	.size	.L__const.address.x, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym address
	.addrsig_sym expect