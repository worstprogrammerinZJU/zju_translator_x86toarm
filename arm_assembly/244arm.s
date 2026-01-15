	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function bbox_update
.LCPI0_0:
	.xword	0x4079000000000000              // double 400
	.text
	.globl	bbox_update
	.p2align	2
	.type	bbox_update,@function
bbox_update:                            // @bbox_update
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	mov	w8, #32
	stur	w8, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-20]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	scvtf	d0, w8
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	str	d1, [sp, #8]                    // 8-byte Folded Spill
	fdiv	d0, d0, d1
	fcvtzs	w1, d0
	mov	w0, #10
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	bl	pow
	ldr	d1, [sp, #8]                    // 8-byte Folded Reload
	mov	w8, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	add	w8, w8, #1
	scvtf	d2, w8
	fmov	d0, #1.00000000
	str	d0, [sp, #24]                   // 8-byte Folded Spill
	fdiv	d0, d0, d2
	fcvt	s0, d0
	stur	s0, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-20]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	scvtf	d0, w8
	fdiv	d0, d0, d1
	fcvtzs	w1, d0
	bl	pow
	ldr	d0, [sp, #24]                   // 8-byte Folded Reload
	add	w8, w0, #1
	scvtf	d1, w8
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-36]
	ldur	w9, [x29, #-24]
	mov	w8, wzr
	subs	w9, w9, #0
	csinc	w8, w8, wzr, eq
	scvtf	s0, w8
	str	s0, [sp, #40]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	cset	w8, eq
	scvtf	s0, w8
	str	s0, [sp, #36]
	ldur	s0, [x29, #-28]
	scvtf	s0, s0
	ldr	s1, [sp, #40]
	ldur	s2, [x29, #-32]
	fsub	s1, s1, s2
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	add	x9, x8, x9, lsl #2
	ldr	s2, [x9]
	scvtf	s2, s2
	fmadd	s0, s0, s1, s2
	fcvtzs	w8, s0
	str	w8, [x9]
	ldur	s0, [x29, #-28]
	scvtf	s0, s0
	ldr	s1, [sp, #36]
	ldur	s2, [x29, #-36]
	fsub	s1, s1, s2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-20]
	add	x9, x8, x9, lsl #2
	ldr	s2, [x9]
	scvtf	s2, s2
	fmadd	s0, s0, s1, s2
	fcvtzs	w8, s0
	str	w8, [x9]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	bbox_update, .Lfunc_end0-bbox_update
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow