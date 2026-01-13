	.text
	.globl	forward_cost_layer              // -- Begin function forward_cost_layer
	.p2align	2
	.type	forward_cost_layer,@function
forward_cost_layer:                     // @forward_cost_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp]                        // 8-byte Folded Spill
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_17
.LBB0_2:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, MASKED
	ldr	x9, [x9, :lo12:MASKED]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp, #12]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldr	w8, [sp, #12]
	ldr	w9, [x10, #8]
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	adrp	x9, SECRET_NUM
	ldr	x9, [x9, :lo12:SECRET_NUM]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	adrp	x8, SECRET_NUM
	ldr	x8, [x8, :lo12:SECRET_NUM]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, SMOOTH
	ldr	x9, [x9, :lo12:SMOOTH]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	w3, [x8, #32]
	ldr	w4, [x8, #16]
	bl	smooth_l1_cpu
	b	.LBB0_16
.LBB0_12:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	adrp	x9, L1
	ldr	x9, [x9, :lo12:L1]
	subs	x8, x8, x9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	w3, [x8, #32]
	ldr	w4, [x8, #16]
	bl	l1_cpu
	b	.LBB0_15
.LBB0_14:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	w3, [x8, #32]
	ldr	w4, [x8, #16]
	bl	l2_cpu
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x9, #16]
	ldr	w8, [x9, #8]
	ldr	w9, [x9, #12]
	mul	w1, w8, w9
	bl	sum_array
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	str	w0, [x8]
	b	.LBB0_17
.LBB0_17:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	forward_cost_layer, .Lfunc_end0-forward_cost_layer
                                        // -- End function
	.type	MASKED,@object                  // @MASKED
	.bss
	.globl	MASKED
	.p2align	3
MASKED:
	.xword	0                               // 0x0
	.size	MASKED, 8
	.type	SECRET_NUM,@object              // @SECRET_NUM
	.globl	SECRET_NUM
	.p2align	3
SECRET_NUM:
	.xword	0                               // 0x0
	.size	SECRET_NUM, 8
	.type	SMOOTH,@object                  // @SMOOTH
	.globl	SMOOTH
	.p2align	3
SMOOTH:
	.xword	0                               // 0x0
	.size	SMOOTH, 8
	.type	L1,@object                      // @L1
	.globl	L1
	.p2align	3
L1:
	.xword	0                               // 0x0
	.size	L1, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym smooth_l1_cpu
	.addrsig_sym l1_cpu
	.addrsig_sym l2_cpu
	.addrsig_sym sum_array
	.addrsig_sym MASKED
	.addrsig_sym SECRET_NUM
	.addrsig_sym SMOOTH
	.addrsig_sym L1