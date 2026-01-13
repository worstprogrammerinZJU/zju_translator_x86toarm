	.text
	.p2align	2                               // -- Begin function loop
	.type	loop,@function
loop:                                   // @loop
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #1
	stur	w0, [x29, #-4]
	mov	w8, #2
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #8]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	loop, .Lfunc_end0-loop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym loop
	.addrsig_sym expect