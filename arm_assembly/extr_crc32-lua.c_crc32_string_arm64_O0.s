	.text
	.globl	crc32_string                    // -- Begin function crc32_string
	.p2align	2
	.type	crc32_string,@function
crc32_string:                           // @crc32_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp]                        // 4-byte Folded Spill
	add	x2, sp, #16
	bl	luaL_checklstring
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	g_debug
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	crc32
	str	w0, [sp, #4]
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	g_debug
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #4]
	bl	lua_pushnumber
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	crc32_string, .Lfunc_end0-crc32_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string:%s, length:%d"
	.size	.L.str, 21
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"crc key:%ld"
	.size	.L.str.1, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaL_checklstring
	.addrsig_sym g_debug
	.addrsig_sym crc32
	.addrsig_sym lua_pushnumber