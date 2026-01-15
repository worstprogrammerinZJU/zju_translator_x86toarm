	.text
	.globl	gemm_cpu                        // -- Begin function gemm_cpu
	.p2align	2
	.type	gemm_cpu,@function
gemm_cpu:                               // @gemm_cpu
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	ldr	w10, [x29, #16]
	ldr	x9, [x29, #24]
	ldr	w8, [x29, #32]
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	s0, [x29, #-24]
	stur	x5, [x29, #-32]
	stur	w6, [x29, #-36]
	str	x7, [sp, #48]
	str	w10, [sp, #44]
	str	s1, [sp, #40]
	str	x9, [sp, #32]
	str	w8, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	s1, [sp, #40]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_8:
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldur	s0, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldur	w4, [x29, #-36]
	ldr	x5, [sp, #48]
	ldr	w6, [sp, #44]
	ldr	x7, [sp, #32]
	ldr	w8, [sp, #28]
	mov	x9, sp
	str	w8, [x9]
	bl	gemm_nn
	b	.LBB0_20
.LBB0_11:
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_14
	b	.LBB0_12
.LBB0_12:
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldur	s0, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldur	w4, [x29, #-36]
	ldr	x5, [sp, #48]
	ldr	w6, [sp, #44]
	ldr	x7, [sp, #32]
	ldr	w8, [sp, #28]
	mov	x9, sp
	str	w8, [x9]
	bl	gemm_tn
	b	.LBB0_19
.LBB0_14:
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_17
	b	.LBB0_15
.LBB0_15:
	ldur	w8, [x29, #-8]
	cbz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldur	s0, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldur	w4, [x29, #-36]
	ldr	x5, [sp, #48]
	ldr	w6, [sp, #44]
	ldr	x7, [sp, #32]
	ldr	w8, [sp, #28]
	mov	x9, sp
	str	w8, [x9]
	bl	gemm_nt
	b	.LBB0_18
.LBB0_17:
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldur	s0, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldur	w4, [x29, #-36]
	ldr	x5, [sp, #48]
	ldr	w6, [sp, #44]
	ldr	x7, [sp, #32]
	ldr	w8, [sp, #28]
	mov	x9, sp
	str	w8, [x9]
	bl	gemm_tt
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	b	.LBB0_20
.LBB0_20:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	gemm_cpu, .Lfunc_end0-gemm_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gemm_nn
	.addrsig_sym gemm_tn
	.addrsig_sym gemm_nt
	.addrsig_sym gemm_tt