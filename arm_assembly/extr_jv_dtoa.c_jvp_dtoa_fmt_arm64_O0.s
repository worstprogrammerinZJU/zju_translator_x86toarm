	.text
	.globl	jvp_dtoa_fmt                    // -- Begin function jvp_dtoa_fmt
	.p2align	2
	.type	jvp_dtoa_fmt,@function
jvp_dtoa_fmt:                           // @jvp_dtoa_fmt
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	d0, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	d0, [x29, #-24]
	mov	w2, wzr
	mov	w1, w2
	add	x3, sp, #36
	add	x4, sp, #28
	mov	x5, sp
	bl	jvp_dtoa
	mov	x8, x0
	str	x8, [sp, #8]
	str	x0, [sp, #40]
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #45
	strb	w8, [x9]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #36]
	mov	w9, #9999
	subs	w8, w8, w9
	b.ne	.LBB0_7
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	add	x9, x8, #1
	str	x9, [sp, #40]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_4
.LBB0_6:
	b	.LBB0_48
.LBB0_7:
	ldr	w8, [sp, #36]
	adds	w8, w8, #4
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldrsw	x8, [sp, #36]
	ldr	x9, [sp]
	ldr	x10, [sp, #40]
	subs	x9, x9, x10
	add	x9, x9, #15
	subs	x8, x8, x9
	b.le	.LBB0_26
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #40]
	add	x9, x8, #1
	str	x9, [sp, #40]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldr	x8, [sp, #40]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_14
	b	.LBB0_10
.LBB0_10:
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #46
	strb	w8, [x9]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	add	x9, x8, #1
	str	x9, [sp, #40]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	strb	w8, [x9]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	.LBB0_11
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #101
	strb	w8, [x9]
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	str	w8, [sp, #36]
	subs	w8, w8, #0
	b.ge	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #45
	strb	w8, [x9]
	ldr	w9, [sp, #36]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #36]
	b	.LBB0_17
.LBB0_16:
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #43
	strb	w8, [x9]
	b	.LBB0_17
.LBB0_17:
	mov	w8, #2
	str	w8, [sp, #32]
	mov	w8, #10
	stur	w8, [x29, #-32]
	b	.LBB0_18
.LBB0_18:                               // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-32]
	mov	w8, #10
	mul	w8, w8, w9
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.gt	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_18 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	ldur	w8, [x29, #-32]
	mov	w9, #10
	mul	w8, w8, w9
	stur	w8, [x29, #-32]
	b	.LBB0_18
.LBB0_21:
	b	.LBB0_22
.LBB0_22:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-32]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #48
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	str	w8, [sp, #32]
	subs	w8, w8, #0
	b.gt	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_25
.LBB0_24:                               //   in Loop: Header=BB0_22 Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-32]
	mul	w9, w8, w9
	ldr	w8, [sp, #36]
	subs	w8, w8, w9
	str	w8, [sp, #36]
	ldr	w8, [sp, #36]
	mov	w9, #10
	mul	w8, w8, w9
	str	w8, [sp, #36]
	b	.LBB0_22
.LBB0_25:
	ldur	x8, [x29, #-16]
	strb	wzr, [x8]
	b	.LBB0_47
.LBB0_26:
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	b.gt	.LBB0_35
	b	.LBB0_27
.LBB0_27:
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #48
	strb	w8, [x9]
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #46
	strb	w8, [x9]
	b	.LBB0_28
.LBB0_28:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	b.ge	.LBB0_31
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_28 Depth=1
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #48
	strb	w8, [x9]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_28 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_28
.LBB0_31:
	b	.LBB0_32
.LBB0_32:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	add	x9, x8, #1
	str	x9, [sp, #40]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	cbz	w8, .LBB0_34
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_32 Depth=1
	b	.LBB0_32
.LBB0_34:
	b	.LBB0_46
.LBB0_35:
	b	.LBB0_36
.LBB0_36:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	add	x9, x8, #1
	str	x9, [sp, #40]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	strb	w8, [x9]
	cbz	w8, .LBB0_41
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_36 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	str	w8, [sp, #36]
	cbnz	w8, .LBB0_40
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_36 Depth=1
	ldr	x8, [sp, #40]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_40
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_36 Depth=1
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #46
	strb	w8, [x9]
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_36 Depth=1
	b	.LBB0_36
.LBB0_41:
	b	.LBB0_42
.LBB0_42:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	b.le	.LBB0_45
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_42 Depth=1
	ldur	x9, [x29, #-16]
	add	x8, x9, #1
	stur	x8, [x29, #-16]
	mov	w8, #48
	strb	w8, [x9]
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_42 Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_42
.LBB0_45:
	ldur	x8, [x29, #-16]
	strb	wzr, [x8]
	b	.LBB0_46
.LBB0_46:
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	jvp_freedtoa
	b	.LBB0_49
.LBB0_49:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	jvp_dtoa_fmt, .Lfunc_end0-jvp_dtoa_fmt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_dtoa
	.addrsig_sym jvp_freedtoa