	.text
	.globl	jq_halt                         // -- Begin function jq_halt
	.p2align	2
	.type	jq_halt,@function
jq_halt:                                // @jq_halt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_halt, .Lfunc_end0-jq_halt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert