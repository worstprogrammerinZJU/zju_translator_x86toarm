	.text
	.globl	rand_size_t                     // -- Begin function rand_size_t
	.p2align	2
	.type	rand_size_t,@function
rand_size_t:                            // @rand_size_t
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	bl	rand
	and	w9, w0, #0xff
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	rand
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x8
	mov	w8, w10
	sxtw	x8, w8
	lsl	x8, x8, #48
	orr	x8, x8, x9, lsl #56
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	bl	rand
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	orr	x8, x8, x9, lsl #40
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	bl	rand
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	orr	x8, x8, x9, lsl #32
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	bl	rand
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	orr	x8, x8, x9, lsl #24
	stur	x8, [x29, #-24]                 // 8-byte Folded Spill
	bl	rand
	ldur	x8, [x29, #-24]                 // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	orr	x8, x8, x9, lsl #16
	stur	x8, [x29, #-16]                 // 8-byte Folded Spill
	bl	rand
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	orr	x8, x8, x9, lsl #8
	stur	x8, [x29, #-8]                  // 8-byte Folded Spill
	bl	rand
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	and	w10, w0, #0xff
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	orr	x0, x8, x9
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	rand_size_t, .Lfunc_end0-rand_size_t
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand