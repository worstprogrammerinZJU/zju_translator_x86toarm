	.text
	.globl	dtostrf                         // -- Begin function dtostrf
	.p2align	2
	.type	dtostrf,@function
dtostrf:                                // @dtostrf
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	d0, [x29, #-16]
	sturb	w0, [x29, #-17]
	sturb	w1, [x29, #-18]
	stur	x2, [x29, #-32]
	stur	wzr, [x29, #-36]
	ldur	d0, [x29, #-16]
	bl	isnan
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-32]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcpy
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_2:
	ldur	d0, [x29, #-16]
	bl	isinf
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-32]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcpy
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_4:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #48]
	ldursb	w8, [x29, #-17]
	str	w8, [sp, #44]
	ldurb	w8, [x29, #-18]
	subs	w8, w8, #0
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldurb	w8, [x29, #-18]
	add	w9, w8, #1
	ldr	w8, [sp, #44]
	subs	w8, w8, w9
	str	w8, [sp, #44]
	b	.LBB0_6
.LBB0_6:
	ldur	d0, [x29, #-16]
	fcmp	d0, #0.0
	b.pl	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-36]
	ldr	w8, [sp, #44]
	subs	w8, w8, #1
	str	w8, [sp, #44]
	ldur	d0, [x29, #-16]
	fneg	d0, d0
	stur	d0, [x29, #-16]
	b	.LBB0_8
.LBB0_8:
	fmov	d0, #2.00000000
	str	d0, [sp, #32]
	strb	wzr, [sp, #31]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldrb	w8, [sp, #31]
	ldurb	w9, [x29, #-18]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	d0, [sp, #32]
	fmov	d1, #10.00000000
	fmul	d0, d0, d1
	str	d0, [sp, #32]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldrb	w8, [sp, #31]
	add	w8, w8, #1
	strb	w8, [sp, #31]
	b	.LBB0_9
.LBB0_12:
	ldr	d1, [sp, #32]
	fmov	d0, #1.00000000
	fdiv	d1, d0, d1
	str	d1, [sp, #32]
	ldr	d2, [sp, #32]
	ldur	d1, [x29, #-16]
	fadd	d1, d1, d2
	stur	d1, [x29, #-16]
	str	d0, [sp, #16]
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_13
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldur	d0, [x29, #-16]
	ldr	d2, [sp, #16]
	fmov	d1, #10.00000000
	fmul	d1, d1, d2
	fcmp	d0, d1
	b.lt	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	d0, [sp, #16]
	fmov	d1, #10.00000000
	fmul	d0, d0, d1
	str	d0, [sp, #16]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_13
.LBB0_15:
	ldr	d1, [sp, #16]
	ldur	d0, [x29, #-16]
	fdiv	d0, d0, d1
	stur	d0, [x29, #-16]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #44]
	subs	w8, w8, w9
	str	w8, [sp, #44]
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	subs	w9, w8, #1
	str	w9, [sp, #44]
	subs	w8, w8, #0
	b.le	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	x9, [sp, #48]
	add	x8, x9, #1
	str	x8, [sp, #48]
	mov	w8, #32
	strb	w8, [x9]
	b	.LBB0_16
.LBB0_18:
	ldur	w8, [x29, #-36]
	cbz	w8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x9, [sp, #48]
	add	x8, x9, #1
	str	x8, [sp, #48]
	mov	w8, #45
	strb	w8, [x9]
	b	.LBB0_20
.LBB0_20:
	ldurb	w9, [x29, #-18]
	ldr	w8, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_21
.LBB0_21:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w9, w8, #1
	str	w9, [sp, #12]
	subs	w8, w8, #0
	b.le	.LBB0_28
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=1
	ldur	d0, [x29, #-16]
	fcvtzs	w8, d0
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #9
	b.le	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=1
	mov	w8, #9
	str	w8, [sp, #8]
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	w9, [sp, #8]
	mov	w8, #48
	orr	w8, w8, w9
	ldr	x9, [sp, #48]
	add	x10, x9, #1
	str	x10, [sp, #48]
	strb	w8, [x9]
	ldr	w8, [sp, #12]
	ldurb	w9, [x29, #-18]
	subs	w8, w8, w9
	b.ne	.LBB0_27
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_21 Depth=1
	ldurb	w8, [x29, #-18]
	subs	w8, w8, #0
	b.le	.LBB0_27
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	x9, [sp, #48]
	add	x8, x9, #1
	str	x8, [sp, #48]
	mov	w8, #46
	strb	w8, [x9]
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	s1, [sp, #8]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	ldur	d0, [x29, #-16]
	fsub	d0, d0, d1
	stur	d0, [x29, #-16]
	ldur	d0, [x29, #-16]
	fmov	d1, #10.00000000
	fmul	d0, d0, d1
	stur	d0, [x29, #-16]
	b	.LBB0_21
.LBB0_28:
	ldr	x8, [sp, #48]
	strb	wzr, [x8]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_29:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	dtostrf, .Lfunc_end0-dtostrf
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nan"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"inf"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isnan
	.addrsig_sym strcpy
	.addrsig_sym isinf