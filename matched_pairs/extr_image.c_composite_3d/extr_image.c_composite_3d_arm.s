	.text
	.globl	composite_3d                    // -- Begin function composite_3d
	.p2align	2
	.type	composite_3d,@function
composite_3d:                           // @composite_3d
// %bb.0:
	sub	sp, sp, #432
	stp	x29, x30, [sp, #400]            // 16-byte Folded Spill
	str	x28, [sp, #416]                 // 8-byte Folded Spill
	add	x29, sp, #400
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	sub	x8, x29, #64
	mov	w3, wzr
	str	w3, [sp, #8]                    // 4-byte Folded Spill
	mov	w1, w3
	mov	w2, w3
	bl	load_image
	ldr	w3, [sp, #8]                    // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	sub	x8, x29, #96
	mov	w1, w3
	mov	w2, w3
	bl	load_image
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldur	w9, [x29, #-64]
	subs	w8, w8, w9
	mov	w9, #100
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	sdiv	w2, w8, w9
	ldur	w8, [x29, #-64]
	sdiv	w3, w8, w9
	ldur	q0, [x29, #-64]
	sub	x0, x29, #128
	stur	q0, [x29, #-128]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-112]
	ldur	q0, [x29, #-96]
	sub	x1, x29, #160
	stur	q0, [x29, #-160]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-144]
	bl	best_3d_shift_r
	stur	w0, [x29, #-100]
	ldur	w2, [x29, #-100]
	ldur	w3, [x29, #-92]
	ldur	w4, [x29, #-96]
	ldur	q0, [x29, #-96]
	add	x0, sp, #192
	str	q0, [sp, #192]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #208]
	sub	x8, x29, #184
	mov	w1, #10
	bl	crop_image
	ldr	w3, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-168]
	ldur	x1, [x29, #-48]
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-64]
	mul	w8, w8, w9
	ldur	w9, [x29, #-56]
	mul	w2, w8, w9
	bl	dist_array
	str	s0, [sp, #188]
	ldur	w2, [x29, #-100]
	ldur	w3, [x29, #-92]
	ldur	w4, [x29, #-96]
	ldur	q0, [x29, #-96]
	add	x0, sp, #128
	str	q0, [sp, #128]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #144]
	add	x8, sp, #160
	mov	w1, #-10
	bl	crop_image
	ldr	w3, [sp, #12]                   // 4-byte Folded Reload
	ldr	x0, [sp, #176]
	ldur	x1, [x29, #-48]
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-64]
	mul	w8, w8, w9
	ldur	w9, [x29, #-56]
	mul	w2, w8, w9
	bl	dist_array
	str	s0, [sp, #124]
	ldr	s0, [sp, #124]
	ldr	s1, [sp, #188]
	fcmp	s0, s1
	b.pl	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	mov	w8, wzr
	tbz	w8, #0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	q0, [x29, #-64]
	str	q0, [sp, #96]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #112]
	ldur	q0, [x29, #-96]
	stur	q0, [x29, #-64]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-48]
	ldr	q0, [sp, #96]
	stur	q0, [x29, #-96]
	ldr	x8, [sp, #112]
	stur	x8, [x29, #-80]
	ldur	w9, [x29, #-100]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-100]
	ldur	w1, [x29, #-100]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_6
.LBB0_5:
	ldur	w1, [x29, #-100]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_6
.LBB0_6:
	ldur	w1, [x29, #-28]
	ldur	w2, [x29, #-100]
	ldur	w3, [x29, #-60]
	ldur	w4, [x29, #-64]
	ldur	q0, [x29, #-96]
	add	x0, sp, #48
	str	q0, [sp, #48]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #64]
	add	x8, sp, #72
	bl	crop_image
	str	wzr, [sp, #44]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #76]
	ldr	w10, [sp, #72]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-48]
	ldrsw	x9, [sp, #44]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #88]
	ldrsw	x10, [sp, #44]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_7
.LBB0_10:
	ldur	x1, [x29, #-24]
	ldur	q0, [sp, #72]
	add	x0, sp, #16
	str	q0, [sp, #16]
	ldr	x8, [sp, #88]
	str	x8, [sp, #32]
	bl	save_image
	ldr	x28, [sp, #416]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #400]            // 16-byte Folded Reload
	add	sp, sp, #432
	ret
.Lfunc_end0:
	.size	composite_3d, .Lfunc_end0-composite_3d
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"swapped, %d\n"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%d\n"
	.size	.L.str.2, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image
	.addrsig_sym best_3d_shift_r
	.addrsig_sym crop_image
	.addrsig_sym dist_array
	.addrsig_sym printf
	.addrsig_sym save_image