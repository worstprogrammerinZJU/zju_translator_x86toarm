	.text
	.p2align	2                               // -- Begin function lua_g_get_current_time
	.type	lua_g_get_current_time,@function
lua_g_get_current_time:                 // @lua_g_get_current_time
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	add	x0, sp, #16
	bl	g_get_current_time
	ldur	x0, [x29, #-8]
	bl	lua_newtable
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	bl	lua_pushinteger
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	lua_setfield
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #16]
	bl	lua_pushinteger
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	lua_setfield
	mov	w0, #1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	lua_g_get_current_time, .Lfunc_end0-lua_g_get_current_time
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tv_sec"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"tv_usec"
	.size	.L.str.1, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_g_get_current_time
	.addrsig_sym g_get_current_time
	.addrsig_sym lua_newtable
	.addrsig_sym lua_pushinteger
	.addrsig_sym lua_setfield