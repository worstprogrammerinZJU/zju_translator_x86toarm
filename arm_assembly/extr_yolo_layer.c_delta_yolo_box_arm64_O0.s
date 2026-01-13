	.text
	.globl	delta_yolo_box                  // -- Begin function delta_yolo_box
	.p2align	2
	.type	delta_yolo_box,@function
delta_yolo_box:                         // @delta_yolo_box
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	ldr	w13, [x29, #16]
	ldr	w12, [x29, #24]
	ldr	w11, [x29, #32]
	ldr	w10, [x29, #40]
	ldr	x9, [x29, #48]
	ldr	w8, [x29, #56]
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	stur	w5, [x29, #-40]
	stur	w6, [x29, #-44]
	stur	w7, [x29, #-48]
	stur	w13, [x29, #-52]
	stur	w12, [x29, #-56]
	stur	w11, [x29, #-60]
	stur	w10, [x29, #-64]
	stur	x9, [x29, #-72]
	stur	s0, [x29, #-76]
	str	w8, [sp, #80]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	w4, [x29, #-44]
	ldur	w5, [x29, #-48]
	ldur	w6, [x29, #-52]
	ldur	w7, [x29, #-56]
	ldur	w11, [x29, #-60]
	ldur	w10, [x29, #-64]
	ldr	w8, [sp, #80]
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	bl	get_yolo_box
	str	x0, [sp, #64]
	str	x1, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	ldur	x2, [x29, #-16]
	ldur	x3, [x29, #-8]
	bl	box_iou
	str	s0, [sp, #60]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-52]
	mul	w8, w8, w9
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #56]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-56]
	mul	w8, w8, w9
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #52]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-60]
	mul	w8, w8, w9
	scvtf	s0, w8
	ldur	x8, [x29, #-32]
	ldur	w10, [x29, #-36]
	mov	w9, #2
	str	w9, [sp, #40]                   // 4-byte Folded Spill
	mul	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fdiv	s0, s0, s1
	fcvtzs	w0, s0
	bl	log
	ldr	w9, [sp, #40]                   // 4-byte Folded Reload
	str	s0, [sp, #48]
	ldur	w8, [x29, #-4]
	ldur	w10, [x29, #-64]
	mul	w8, w8, w10
	scvtf	s0, w8
	ldur	x8, [x29, #-32]
	ldur	w10, [x29, #-36]
	mul	w9, w9, w10
	mov	w10, #1
	str	w10, [sp, #36]                  // 4-byte Folded Spill
	add	w9, w9, #1
	ldr	s1, [x8, w9, sxtw #2]
	fdiv	s0, s0, s1
	fcvtzs	w0, s0
	bl	log
	ldr	w11, [sp, #36]                  // 4-byte Folded Reload
	ldr	w10, [sp, #40]                  // 4-byte Folded Reload
	str	s0, [sp, #44]
	ldur	s0, [x29, #-76]
	ldr	s1, [sp, #56]
	ldur	x8, [x29, #-24]
	ldur	w9, [x29, #-40]
	ldr	w13, [sp, #80]
	mov	w12, wzr
	mul	w13, w12, w13
	add	w9, w9, w13
	ldr	s2, [x8, w9, sxtw #2]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldur	x8, [x29, #-72]
	ldur	w9, [x29, #-40]
	ldr	w13, [sp, #80]
	mul	w12, w12, w13
	add	w9, w9, w12
	str	s0, [x8, w9, sxtw #2]
	ldur	s0, [x29, #-76]
	ldr	s1, [sp, #52]
	ldur	x8, [x29, #-24]
	ldur	w9, [x29, #-40]
	ldr	w12, [sp, #80]
	mul	w12, w11, w12
	add	w9, w9, w12
	ldr	s2, [x8, w9, sxtw #2]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldur	x8, [x29, #-72]
	ldur	w9, [x29, #-40]
	ldr	w12, [sp, #80]
	mul	w11, w11, w12
	add	w9, w9, w11
	str	s0, [x8, w9, sxtw #2]
	ldur	s0, [x29, #-76]
	ldr	s1, [sp, #48]
	ldur	x8, [x29, #-24]
	ldur	w9, [x29, #-40]
	ldr	w11, [sp, #80]
	mul	w11, w10, w11
	add	w9, w9, w11
	ldr	s2, [x8, w9, sxtw #2]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldur	x8, [x29, #-72]
	ldur	w9, [x29, #-40]
	ldr	w11, [sp, #80]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldur	s0, [x29, #-76]
	ldr	s1, [sp, #44]
	ldur	x8, [x29, #-24]
	ldur	w9, [x29, #-40]
	ldr	w11, [sp, #80]
	mov	w10, #3
	mul	w11, w10, w11
	add	w9, w9, w11
	ldr	s2, [x8, w9, sxtw #2]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldur	x8, [x29, #-72]
	ldur	w9, [x29, #-40]
	ldr	w11, [sp, #80]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldr	s0, [sp, #60]
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	delta_yolo_box, .Lfunc_end0-delta_yolo_box
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_yolo_box
	.addrsig_sym box_iou
	.addrsig_sym log