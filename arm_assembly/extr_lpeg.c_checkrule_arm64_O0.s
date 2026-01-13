	.text
	.p2align	2                               // -- Begin function checkrule
	.type	checkrule,@function
checkrule:                              // @checkrule
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	str	w5, [sp, #32]
	str	wzr, [sp, #24]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IPartialCommit
	ldr	x9, [x9, :lo12:IPartialCommit]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	b.ge	.LBB0_11
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #28]
	bl	dest
	str	w0, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #20]
	subs	w10, w9, #1
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	lsl	x9, x9, #4
	ldr	x9, [x8, x9]
	adrp	x8, IChoice
	ldr	x10, [x8, :lo12:IChoice]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldr	w8, [sp, #20]
	subs	w1, w8, #1
	bl	dest
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	subs	w8, w0, w8
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.gt	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	add	x2, x8, x9, lsl #4
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	add	x3, x8, x9, lsl #4
	ldur	w4, [x29, #-28]
	ldr	w5, [sp, #32]
	bl	verify
	cbnz	w0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #32]
	bl	val2str
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IOpenCall
	ldr	x9, [x9, :lo12:IOpenCall]
	subs	x8, x8, x9
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	add	x0, x8, x9, lsl #4
	bl	sizei
	ldrsw	x8, [sp, #28]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #28]
	subs	w10, w9, #1
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IRet
	ldr	x9, [x9, :lo12:IRet]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x2, x8, x9, lsl #4
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-24]
	add	x8, x8, x9, lsl #4
	subs	x3, x8, #16
	ldur	w4, [x29, #-28]
	ldr	w5, [sp, #32]
	bl	verify
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	checkrule, .Lfunc_end0-checkrule
                                        // -- End function
	.type	IPartialCommit,@object          // @IPartialCommit
	.bss
	.globl	IPartialCommit
	.p2align	3
IPartialCommit:
	.xword	0                               // 0x0
	.size	IPartialCommit, 8
	.type	IChoice,@object                 // @IChoice
	.globl	IChoice
	.p2align	3
IChoice:
	.xword	0                               // 0x0
	.size	IChoice, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"possible infinite loop in %s"
	.size	.L.str, 29
	.type	IOpenCall,@object               // @IOpenCall
	.bss
	.globl	IOpenCall
	.p2align	3
IOpenCall:
	.xword	0                               // 0x0
	.size	IOpenCall, 8
	.type	IRet,@object                    // @IRet
	.globl	IRet
	.p2align	3
IRet:
	.xword	0                               // 0x0
	.size	IRet, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym checkrule
	.addrsig_sym dest
	.addrsig_sym assert
	.addrsig_sym verify
	.addrsig_sym luaL_error
	.addrsig_sym val2str
	.addrsig_sym sizei
	.addrsig_sym IPartialCommit
	.addrsig_sym IChoice
	.addrsig_sym IOpenCall
	.addrsig_sym IRet