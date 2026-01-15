	.text
	.p2align	2                               // -- Begin function union_l
	.type	union_l,@function
union_l:                                // @union_l
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-20]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	sub	x2, x29, #12
	bl	getpatt
	str	x0, [sp, #32]
	ldur	x0, [x29, #-8]
	mov	w1, #2
	sub	x2, x29, #16
	bl	getpatt
	str	x0, [sp, #24]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	adrp	x9, IFail
	ldr	x9, [x9, :lo12:IFail]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	mov	w1, #2
	bl	lua_pushvalue
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, IFail
	ldr	x9, [x9, :lo12:IFail]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	lua_pushvalue
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #24]
	add	x1, sp, #20
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	tocharset
	ldr	x5, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-16]
	sub	x4, x29, #20
	bl	separateparts
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	mov	w0, #1
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	union_l, .Lfunc_end0-union_l
                                        // -- End function
	.type	IFail,@object                   // @IFail
	.bss
	.globl	IFail
	.p2align	3
IFail:
	.xword	0                               // 0x0
	.size	IFail, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym union_l
	.addrsig_sym getpatt
	.addrsig_sym lua_pushvalue
	.addrsig_sym tocharset
	.addrsig_sym separateparts
	.addrsig_sym IFail