	.text
	.p2align	2                               // -- Begin function set_info
	.type	set_info,@function
set_info:                               // @set_info
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushliteral
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	lua_pushliteral
	ldr	x0, [sp, #8]
	mov	w1, #-3
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	lua_settable
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	lua_pushliteral
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	lua_pushliteral
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]
	bl	lua_settable
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	lua_pushliteral
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	lua_pushliteral
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]
	bl	lua_settable
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	set_info, .Lfunc_end0-set_info
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_COPYRIGHT"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Copyright (C) 2003-2006 Kepler Project"
	.size	.L.str.1, 39
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"_DESCRIPTION"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"LuaFileSystem is a Lua library developed to complement the set of functions related to file systems offered by the standard Lua distribution"
	.size	.L.str.3, 141
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"_VERSION"
	.size	.L.str.4, 9
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"LuaFileSystem 1.2"
	.size	.L.str.5, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_info
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_settable