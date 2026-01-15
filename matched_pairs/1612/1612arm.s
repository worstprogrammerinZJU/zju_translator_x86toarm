	.text
	.p2align	2                               // -- Begin function querycap
	.type	querycap,@function
querycap:                               // @querycap
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	pushallcaptures
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	ldr	w8, [sp, #8]
	subs	w1, w8, #1
	bl	lua_pop
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	updatecache
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	subscache
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	lua_gettable
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	mov	w1, #-1
	bl	lua_isnil
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	mov	w1, #1
	bl	lua_pop
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	querycap, .Lfunc_end0-querycap
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym querycap
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_pop
	.addrsig_sym updatecache
	.addrsig_sym lua_gettable
	.addrsig_sym subscache
	.addrsig_sym lua_isnil