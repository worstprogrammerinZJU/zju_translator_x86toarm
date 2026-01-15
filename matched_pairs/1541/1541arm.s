	.text
	.globl	update_local_layer              // -- Begin function update_local_layer
	.p2align	2
	.type	update_local_layer,@function
update_local_layer:                     // @update_local_layer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	x8, x0
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldur	s0, [x29, #-16]
	ldr	s1, [x8]
	fmul	s0, s0, s1
	stur	s0, [x29, #-20]
	ldur	w9, [x29, #-12]
	stur	w9, [x29, #-24]
	ldur	w9, [x29, #-8]
	stur	w9, [x29, #-28]
	ldur	w9, [x29, #-4]
	str	w9, [sp, #32]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w9, w9, w10
	str	w9, [sp, #28]
	ldr	w9, [x8, #12]
	ldr	w10, [x8, #12]
	mul	w9, w9, w10
	ldr	w10, [x8, #16]
	mul	w9, w9, w10
	ldr	w10, [x8, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	str	w9, [sp, #24]
	ldr	w0, [x8, #24]
	ldur	s0, [x29, #-20]
	ldr	s1, [sp, #32]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldr	w1, [x8, #36]
	ldr	w3, [x8, #40]
	mov	w4, #1
	str	w4, [sp, #20]                   // 4-byte Folded Spill
	mov	w2, w4
	bl	axpy_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [x8, #24]
	ldur	s0, [x29, #-24]
	ldr	w1, [x8, #36]
	bl	scal_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w4, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [sp, #24]
	ldur	s0, [x29, #-28]
	fneg	s0, s0
	ldr	s1, [sp, #32]
	scvtf	s1, s1
	fmul	s0, s0, s1
	ldr	w1, [x8, #32]
	ldr	w3, [x8, #28]
	mov	w2, w4
	bl	axpy_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w4, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [sp, #24]
	ldur	s0, [x29, #-20]
	ldr	s1, [sp, #32]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldr	w1, [x8, #28]
	ldr	w3, [x8, #32]
	mov	w2, w4
	bl	axpy_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [sp, #24]
	ldur	s0, [x29, #-24]
	ldr	w1, [x8, #28]
	bl	scal_cpu
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	update_local_layer, .Lfunc_end0-update_local_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy_cpu
	.addrsig_sym scal_cpu