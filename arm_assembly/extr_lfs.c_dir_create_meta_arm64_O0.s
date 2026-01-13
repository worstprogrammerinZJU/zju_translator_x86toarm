	.text
	.p2align	2                               // -- Begin function dir_create_meta
	.type	dir_create_meta,@function
dir_create_meta:                        // @dir_create_meta
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, DIR_METATABLE
	ldr	w1, [x8, :lo12:DIR_METATABLE]
	bl	luaL_newmetatable
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushstring
	ldr	x0, [sp, #8]
	adrp	x8, dir_close
	ldr	w1, [x8, :lo12:dir_close]
	bl	lua_pushcfunction
	ldr	x0, [sp, #8]
	mov	w1, #-3
	bl	lua_settable
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	dir_create_meta, .Lfunc_end0-dir_create_meta
                                        // -- End function
	.type	DIR_METATABLE,@object           // @DIR_METATABLE
	.bss
	.globl	DIR_METATABLE
	.p2align	2
DIR_METATABLE:
	.word	0                               // 0x0
	.size	DIR_METATABLE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__gc"
	.size	.L.str, 5
	.type	dir_close,@object               // @dir_close
	.bss
	.globl	dir_close
	.p2align	2
dir_close:
	.word	0                               // 0x0
	.size	dir_close, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_create_meta
	.addrsig_sym luaL_newmetatable
	.addrsig_sym lua_pushstring
	.addrsig_sym lua_pushcfunction
	.addrsig_sym lua_settable
	.addrsig_sym DIR_METATABLE
	.addrsig_sym dir_close