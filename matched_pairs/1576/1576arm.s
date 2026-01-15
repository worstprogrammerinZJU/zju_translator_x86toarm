	.text
	.p2align	2                               // -- Begin function getcaptures
	.type	getcaptures,@function
getcaptures:                            // @getcaptures
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-28]
	bl	caplistidx
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_touserdata
	stur	x0, [x29, #-40]
	stur	wzr, [x29, #-44]
	ldur	x0, [x29, #-40]
	bl	isclosecap
	cbnz	w0, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]
	str	x8, [sp, #56]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	str	xzr, [sp, #40]
	ldur	w8, [x29, #-28]
	str	w8, [sp, #24]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	add	x0, sp, #16
	bl	pushcapture
	ldursw	x8, [x29, #-44]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-44]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x0, [sp, #32]
	bl	isclosecap
	cbz	w0, .LBB0_2
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	add	x8, x8, #1
	mov	w1, w8
	bl	lua_pushinteger
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-44]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	getcaptures, .Lfunc_end0-getcaptures
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getcaptures
	.addrsig_sym lua_touserdata
	.addrsig_sym caplistidx
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym lua_pushinteger