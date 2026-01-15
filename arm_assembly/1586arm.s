	.text
	.globl	luaopen_lpeg                    // -- Begin function luaopen_lpeg
	.p2align	2
	.type	luaopen_lpeg,@function
luaopen_lpeg:                           // @luaopen_lpeg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	lua_newtable
	ldr	x0, [sp, #8]
	adrp	x8, LUA_ENVIRONINDEX
	ldr	w1, [x8, :lo12:LUA_ENVIRONINDEX]
	bl	lua_replace
	ldr	x0, [sp, #8]
	adrp	x8, PATTERN_T
	ldr	w1, [x8, :lo12:PATTERN_T]
	bl	luaL_newmetatable
	ldr	x0, [sp, #8]
	adrp	x8, metapattreg
	ldr	w2, [x8, :lo12:metapattreg]
	mov	x1, xzr
	bl	luaL_register
	ldr	x0, [sp, #8]
	adrp	x8, pattreg
	ldr	w2, [x8, :lo12:pattreg]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_register
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	lua_pushliteral
	ldr	x0, [sp, #8]
	mov	w1, #-2
	bl	lua_pushvalue
	ldr	x0, [sp, #8]
	mov	w1, #-4
	bl	lua_settable
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	luaopen_lpeg, .Lfunc_end0-luaopen_lpeg
                                        // -- End function
	.type	LUA_ENVIRONINDEX,@object        // @LUA_ENVIRONINDEX
	.bss
	.globl	LUA_ENVIRONINDEX
	.p2align	2
LUA_ENVIRONINDEX:
	.word	0                               // 0x0
	.size	LUA_ENVIRONINDEX, 4
	.type	PATTERN_T,@object               // @PATTERN_T
	.globl	PATTERN_T
	.p2align	2
PATTERN_T:
	.word	0                               // 0x0
	.size	PATTERN_T, 4
	.type	metapattreg,@object             // @metapattreg
	.globl	metapattreg
	.p2align	2
metapattreg:
	.word	0                               // 0x0
	.size	metapattreg, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lpeg"
	.size	.L.str, 5
	.type	pattreg,@object                 // @pattreg
	.bss
	.globl	pattreg
	.p2align	2
pattreg:
	.word	0                               // 0x0
	.size	pattreg, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"__index"
	.size	.L.str.1, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_newtable
	.addrsig_sym lua_replace
	.addrsig_sym luaL_newmetatable
	.addrsig_sym luaL_register
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_settable
	.addrsig_sym LUA_ENVIRONINDEX
	.addrsig_sym PATTERN_T
	.addrsig_sym metapattreg
	.addrsig_sym pattreg