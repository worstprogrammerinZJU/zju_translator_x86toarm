	.text
	.globl	get_region_box                  // -- Begin function get_region_box
	.p2align	2
	.type	get_region_box,@function
get_region_box:                         // @get_region_box
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	ldr	w8, [x29, #16]
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	str	w5, [sp, #16]
	str	w6, [sp, #12]
	str	w7, [sp, #8]
	str	w8, [sp, #4]
	ldr	s0, [sp, #20]
	scvtf	s0, s0
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #24]
	ldr	w11, [sp, #4]
	mov	w10, wzr
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fadd	s0, s0, s1
	ldr	s1, [sp, #12]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	fcvtzs	w8, s0
	stur	w8, [x29, #-16]
	ldr	s0, [sp, #16]
	scvtf	s0, s0
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #24]
	ldr	w11, [sp, #4]
	mov	w10, #1
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fadd	s0, s0, s1
	ldr	s1, [sp, #8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	fcvtzs	w8, s0
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #24]
	ldr	w11, [sp, #4]
	mov	w10, #2
	str	w10, [sp]                       // 4-byte Folded Spill
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	bl	exp
	ldr	w9, [sp]                        // 4-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fmul	s0, s0, s1
	ldr	s1, [sp, #12]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	stur	s0, [x29, #-8]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #24]
	ldr	w11, [sp, #4]
	mov	w10, #3
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	bl	exp
	ldr	w9, [sp]                        // 4-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	add	w9, w9, #1
	ldr	s1, [x8, w9, sxtw #2]
	fmul	s0, s0, s1
	ldr	s1, [sp, #8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	stur	s0, [x29, #-4]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	get_region_box, .Lfunc_end0-get_region_box
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exp