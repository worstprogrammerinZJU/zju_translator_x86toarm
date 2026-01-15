	.text
	.globl	make_network                    // -- Begin function make_network
	.p2align	2
	.type	make_network,@function
make_network:                           // @make_network
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	mov	w0, #1
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	mov	w1, #40
	bl	calloc
	str	x0, [sp, #16]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	calloc
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]
	str	x8, [x9, #32]
	mov	w1, #8
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]
	str	x8, [x9, #24]
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]
	str	x8, [x9, #16]
	bl	calloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_network, .Lfunc_end0-make_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc