	.text
	.p2align	2                               // -- Begin function pushallcaptures
	.type	pushallcaptures,@function
pushallcaptures:                        // @pushallcaptures
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	str	wzr, [sp, #12]
	ldur	x10, [x29, #-16]
	ldr	x8, [x10]
	mov	x9, x8
	add	x9, x9, #8
	str	x9, [x10]
	mov	w0, w8
	bl	isfullcap
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	pushsubject
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	isclosecap
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-16]
	bl	pushcapture
	ldrsw	x8, [sp, #12]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_5:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x2, x8, x9
	bl	lua_pushlstring
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_8
.LBB0_8:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	add	x8, x8, #8
	str	x8, [x9]
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	pushallcaptures, .Lfunc_end0-pushallcaptures
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pushallcaptures
	.addrsig_sym isfullcap
	.addrsig_sym pushsubject
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym lua_pushlstring