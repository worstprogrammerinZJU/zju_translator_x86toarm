	.text
	.globl	activate                        // -- Begin function activate
	.p2align	2
	.type	activate,@function
activate:                               // @activate
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	s0, [x29, #-8]
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #13
	b.hi	.LBB0_16
// %bb.1:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	s0, [x29, #-8]
	bl	linear_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_3:
	ldur	s0, [x29, #-8]
	bl	logistic_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_4:
	ldur	s0, [x29, #-8]
	bl	loggy_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_5:
	ldur	s0, [x29, #-8]
	bl	relu_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_6:
	ldur	s0, [x29, #-8]
	bl	elu_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_7:
	ldur	s0, [x29, #-8]
	bl	selu_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_8:
	ldur	s0, [x29, #-8]
	bl	relie_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_9:
	ldur	s0, [x29, #-8]
	bl	ramp_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_10:
	ldur	s0, [x29, #-8]
	bl	leaky_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_11:
	ldur	s0, [x29, #-8]
	bl	tanh_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_12:
	ldur	s0, [x29, #-8]
	bl	plse_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_13:
	ldur	s0, [x29, #-8]
	bl	stair_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_14:
	ldur	s0, [x29, #-8]
	bl	hardtan_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_15:
	ldur	s0, [x29, #-8]
	bl	lhtan_activate
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_16:
	movi	d0, #0000000000000000
	stur	s0, [x29, #-4]
	b	.LBB0_17
.LBB0_17:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	activate, .Lfunc_end0-activate
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_6-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym linear_activate
	.addrsig_sym logistic_activate
	.addrsig_sym loggy_activate
	.addrsig_sym relu_activate
	.addrsig_sym elu_activate
	.addrsig_sym selu_activate
	.addrsig_sym relie_activate
	.addrsig_sym ramp_activate
	.addrsig_sym leaky_activate
	.addrsig_sym tanh_activate
	.addrsig_sym plse_activate
	.addrsig_sym stair_activate
	.addrsig_sym hardtan_activate
	.addrsig_sym lhtan_activate