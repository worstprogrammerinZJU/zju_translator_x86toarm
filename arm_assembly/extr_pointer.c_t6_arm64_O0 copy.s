	.text
	.p2align	2                               // -- Begin function t6
	.type	t6,@function
t6:                                     // @t6
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, .L__const.t6.node1
	add	x8, x8, :lo12:.L__const.t6.node1
	ldr	q0, [x8]
	sub	x8, x29, #16
	stur	q0, [x29, #-16]
	add	x9, sp, #32
	mov	w10, #2
	str	w10, [sp]                       // 4-byte Folded Spill
	str	w10, [sp, #32]
	str	x8, [sp, #40]
	add	x8, sp, #16
	mov	w0, #3
	str	w0, [sp, #16]
	str	x9, [sp, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	expect
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	mov	w0, #1
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	expect
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	t6, .Lfunc_end0-t6
                                        // -- End function
	.type	.L__const.t6.node1,@object      // @__const.t6.node1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
.L__const.t6.node1:
	.word	1                               // 0x1
	.zero	4
	.xword	0
	.size	.L__const.t6.node1, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym expect