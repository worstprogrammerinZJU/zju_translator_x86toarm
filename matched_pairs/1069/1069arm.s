	.text
	.globl	best_3d_shift                   // -- Begin function best_3d_shift
	.p2align	2
	.type	best_3d_shift,@function
best_3d_shift:                          // @best_3d_shift
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	stur	w4, [x29, #-36]
	str	w5, [sp, #40]
	str	wzr, [sp, #32]
	adrp	x8, FLT_MAX
	ldr	w8, [x8, :lo12:FLT_MAX]
	str	w8, [sp, #28]
	ldur	w8, [x29, #-36]
	str	w8, [sp, #36]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.gt	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w3, [sp, #36]
	ldur	w4, [x29, #-32]
	ldur	w5, [x29, #-28]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-24]
	mov	w2, wzr
	bl	crop_image
	stur	x0, [sp, #12]
	stur	x1, [sp, #20]
	ldr	w0, [sp, #24]
	ldur	w1, [x29, #-4]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	mul	w2, w8, w9
	mov	w3, #100
	bl	dist_array
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #28]
	fcmp	s0, s1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #36]
	str	w8, [sp, #32]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #36]
	ldr	s0, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	x0, [sp, #12]
	ldur	x1, [sp, #20]
	bl	free_image
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #2
	str	w8, [sp, #36]
	b	.LBB0_1
.LBB0_6:
	ldr	w0, [sp, #32]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	best_3d_shift, .Lfunc_end0-best_3d_shift
                                        // -- End function
	.type	FLT_MAX,@object                 // @FLT_MAX
	.bss
	.globl	FLT_MAX
	.p2align	2
FLT_MAX:
	.word	0x00000000                      // float 0
	.size	FLT_MAX, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %f\n"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crop_image
	.addrsig_sym dist_array
	.addrsig_sym printf
	.addrsig_sym free_image
	.addrsig_sym FLT_MAX