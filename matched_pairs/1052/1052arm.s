	.text
	.p2align	2                               // -- Begin function lua_g_usleep
	.type	lua_g_usleep,@function
lua_g_usleep:                           // @lua_g_usleep
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	luaL_checkinteger
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	bl	g_usleep
	mov	w0, wzr
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	lua_g_usleep, .Lfunc_end0-lua_g_usleep
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_g_usleep
	.addrsig_sym luaL_checkinteger
	.addrsig_sym g_usleep