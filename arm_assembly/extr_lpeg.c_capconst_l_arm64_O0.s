	.text
	.p2align	2                               // -- Begin function capconst_l
	.type	capconst_l,@function
capconst_l:                             // @capconst_l
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	str	w0, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #12]
	bl	newpatt
	str	x0, [sp]
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #12]
	mov	w2, wzr
	bl	lua_createtable
	mov	w8, #1
	str	w8, [sp, #16]
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.gt	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_isnil
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [sp]
	mov	w0, w8
	adrp	x8, IEmptyCaptureIdx
	ldr	w1, [x8, :lo12:IEmptyCaptureIdx]
	adrp	x8, Cconst
	ldr	w3, [x8, :lo12:Cconst]
	mov	w4, wzr
	mov	w2, w4
	bl	setinstcap
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [sp]
	mov	w0, w8
	adrp	x8, IEmptyCaptureIdx
	ldr	w1, [x8, :lo12:IEmptyCaptureIdx]
	ldr	w2, [sp, #16]
	adrp	x8, Cconst
	ldr	w3, [x8, :lo12:Cconst]
	mov	w4, wzr
	bl	setinstcap
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_pushvalue
	ldur	x0, [x29, #-8]
	ldr	w2, [sp, #16]
	add	w8, w2, #1
	str	w8, [sp, #16]
	mov	w1, #-2
	bl	lua_rawseti
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_7:
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_setfenv
	mov	w0, #1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	capconst_l, .Lfunc_end0-capconst_l
                                        // -- End function
	.type	IEmptyCaptureIdx,@object        // @IEmptyCaptureIdx
	.bss
	.globl	IEmptyCaptureIdx
	.p2align	2
IEmptyCaptureIdx:
	.word	0                               // 0x0
	.size	IEmptyCaptureIdx, 4
	.type	Cconst,@object                  // @Cconst
	.globl	Cconst
	.p2align	2
Cconst:
	.word	0                               // 0x0
	.size	Cconst, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capconst_l
	.addrsig_sym lua_gettop
	.addrsig_sym newpatt
	.addrsig_sym lua_createtable
	.addrsig_sym lua_isnil
	.addrsig_sym setinstcap
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_rawseti
	.addrsig_sym lua_setfenv
	.addrsig_sym IEmptyCaptureIdx
	.addrsig_sym Cconst