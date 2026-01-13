	.text
	.p2align	2                               // -- Begin function functioncap
	.type	functioncap,@function
functioncap:                            // @functioncap
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	lua_gettop
	str	w0, [sp]
	ldr	x0, [sp, #8]
	bl	pushluaval
	ldr	x0, [sp, #8]
	mov	w1, wzr
	bl	pushallcaptures
	str	w0, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	w1, [sp, #4]
	adrp	x8, LUA_MULTRET
	ldr	w2, [x8, :lo12:LUA_MULTRET]
	bl	lua_call
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	lua_gettop
	ldr	w8, [sp]
	subs	w0, w0, w8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	functioncap, .Lfunc_end0-functioncap
                                        // -- End function
	.type	LUA_MULTRET,@object             // @LUA_MULTRET
	.bss
	.globl	LUA_MULTRET
	.p2align	2
LUA_MULTRET:
	.word	0                               // 0x0
	.size	LUA_MULTRET, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym functioncap
	.addrsig_sym lua_gettop
	.addrsig_sym pushluaval
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_call
	.addrsig_sym LUA_MULTRET