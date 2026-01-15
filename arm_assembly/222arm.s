	.text
	.p2align	2                               // -- Begin function base64_decode_block_signed
	.type	base64_decode_block_signed,@function
base64_decode_block_signed:             // @base64_decode_block_signed
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #4]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_27
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
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #2
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #40]
	mov	w8, #131
	str	w8, [x9, #4]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_28
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #32]
	add	x9, x8, #4
	str	x9, [sp, #32]
	ldr	w0, [x8]
	bl	base64_decode_value_signed
	str	w0, [sp, #20]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #20]
	and	w8, w8, #0x3f
	lsl	w8, w8, #2
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #2
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x9, [sp, #40]
	mov	w8, #130
	str	w8, [x9, #4]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_28
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #32]
	add	x9, x8, #4
	str	x9, [sp, #32]
	ldr	w0, [x8]
	bl	base64_decode_value_signed
	str	w0, [sp, #20]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #20]
	and	w10, w8, #0x30
	ldr	x9, [sp, #24]
	add	x8, x9, #4
	str	x8, [sp, #24]
	ldr	w8, [x9]
	orr	w8, w8, w10, asr #4
	str	w8, [x9]
	ldr	w8, [sp, #20]
	and	w8, w8, #0xf
	lsl	w8, w8, #4
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #2
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x9, [sp, #40]
	mov	w8, #129
	str	w8, [x9, #4]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_28
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	x8, [sp, #32]
	add	x9, x8, #4
	str	x9, [sp, #32]
	ldr	w0, [x8]
	bl	base64_decode_value_signed
	str	w0, [sp, #20]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_16
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #20]
	and	w10, w8, #0x3c
	ldr	x9, [sp, #24]
	add	x8, x9, #4
	str	x8, [sp, #24]
	ldr	w8, [x9]
	orr	w8, w8, w10, asr #2
	str	w8, [x9]
	ldr	w8, [sp, #20]
	and	w8, w8, #0x3
	lsl	w8, w8, #6
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #2
	subs	x8, x8, x9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	x9, [sp, #40]
	mov	w8, #128
	str	w8, [x9, #4]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_28
.LBB0_24:                               //   in Loop: Header=BB0_22 Depth=1
	ldr	x8, [sp, #32]
	add	x9, x8, #4
	str	x9, [sp, #32]
	ldr	w0, [x8]
	bl	base64_decode_value_signed
	str	w0, [sp, #20]
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_22 Depth=1
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_22
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #20]
	and	w10, w8, #0x3f
	ldr	x9, [sp, #24]
	add	x8, x9, #4
	str	x8, [sp, #24]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_2
.LBB0_27:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_28
.LBB0_28:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	base64_decode_block_signed, .Lfunc_end0-base64_decode_block_signed
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_3-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_block_signed
	.addrsig_sym base64_decode_value_signed