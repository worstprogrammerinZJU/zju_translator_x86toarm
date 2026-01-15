	.text
	.p2align	2                               // -- Begin function lua_g_checksum_md5
	.type	lua_g_checksum_md5,@function
lua_g_checksum_md5:                     // @lua_g_checksum_md5
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	sub	x2, x29, #16
	bl	luaL_checklstring
	str	x0, [sp, #24]
	adrp	x8, G_CHECKSUM_MD5
	ldr	w0, [x8, :lo12:G_CHECKSUM_MD5]
	bl	g_checksum_new
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-16]
	bl	g_checksum_update
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	g_checksum_get_string
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	lua_pushstring
	ldr	x0, [sp, #16]
	bl	g_checksum_free
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	lua_g_checksum_md5, .Lfunc_end0-lua_g_checksum_md5
                                        // -- End function
	.type	G_CHECKSUM_MD5,@object          // @G_CHECKSUM_MD5
	.bss
	.globl	G_CHECKSUM_MD5
	.p2align	2
G_CHECKSUM_MD5:
	.word	0                               // 0x0
	.size	G_CHECKSUM_MD5, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_g_checksum_md5
	.addrsig_sym luaL_checklstring
	.addrsig_sym g_checksum_new
	.addrsig_sym g_checksum_update
	.addrsig_sym lua_pushstring
	.addrsig_sym g_checksum_get_string
	.addrsig_sym g_checksum_free
	.addrsig_sym G_CHECKSUM_MD5