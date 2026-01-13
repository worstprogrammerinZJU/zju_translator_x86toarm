	.text
	.p2align	2                               // -- Begin function lua_getpid
	.type	lua_getpid,@function
lua_getpid:                             // @lua_getpid
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	bl	getpid
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	lua_pushinteger
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	lua_getpid, .Lfunc_end0-lua_getpid
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_getpid
	.addrsig_sym lua_pushinteger
	.addrsig_sym getpid