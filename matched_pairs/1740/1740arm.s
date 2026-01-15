	.text
	.globl	compare_networks                // -- Begin function compare_networks
	.p2align	2
	.type	compare_networks,@function
compare_networks:                       // @compare_networks
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x2, [x29, #-16]
	stur	x3, [x29, #-8]
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-8]
	bl	network_predict_data
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-8]
	bl	network_predict_data
	str	x0, [sp, #48]
	str	x1, [sp, #56]
	str	wzr, [sp, #28]
	str	wzr, [sp, #32]
	str	wzr, [sp, #36]
	str	wzr, [sp, #40]
	str	wzr, [sp, #44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #44]
	ldr	w0, [x8, x9, lsl #2]
	ldur	w1, [x29, #-16]
	bl	max_index
	str	w0, [sp, #24]
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #44]
	ldr	w0, [x8, x9, lsl #2]
	ldur	w1, [x29, #-44]
	bl	max_index
	str	w0, [sp, #20]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #44]
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #52]
	bl	max_index
	str	w0, [sp, #16]
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ne	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_1
.LBB0_13:
	ldr	s0, [sp, #40]
	scvtf	s0, s0
	ldr	w1, [sp, #36]
	ldr	w2, [sp, #32]
	ldr	w3, [sp, #28]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #32]
	subs	w0, w8, w9
	bl	abs
	scvtf	d0, x0
	fmov	d1, #1.00000000
	fsub	d0, d0, d1
	fcvtzs	x0, d0
	mov	w1, #2
	bl	pow
	str	s0, [sp, #12]
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #8]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #8]
	fdiv	s0, s0, s1
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	compare_networks, .Lfunc_end0-compare_networks
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%5d %5d\n%5d %5d\n"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%f\n"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data
	.addrsig_sym max_index
	.addrsig_sym printf
	.addrsig_sym pow
	.addrsig_sym abs