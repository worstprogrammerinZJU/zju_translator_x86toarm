	.text
	.p2align	2                               // -- Begin function tm2jv
	.type	tm2jv,@function
tm2jv:                                  // @tm2jv
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #56]
	add	x0, x8, #1900
	bl	jv_number
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #48]
	bl	jv_number
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	bl	jv_number
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	jv_number
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	bl	jv_number
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	bl	jv_number
	stur	w0, [x29, #-20]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	jv_number
	stur	w0, [x29, #-16]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	jv_number
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	ldr	w3, [sp, #20]                   // 4-byte Folded Reload
	ldr	w4, [sp, #24]                   // 4-byte Folded Reload
	ldur	w5, [x29, #-20]                 // 4-byte Folded Reload
	ldur	w6, [x29, #-16]                 // 4-byte Folded Reload
	mov	w7, w0
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	bl	JV_ARRAY
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	tm2jv, .Lfunc_end0-tm2jv
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tm2jv
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_number