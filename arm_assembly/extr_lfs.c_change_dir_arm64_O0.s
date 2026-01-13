	.text
	.p2align	2                               // -- Begin function change_dir
	.type	change_dir,@function
change_dir:                             // @change_dir
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #1
	bl	luaL_checkstring
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	chdir
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	lua_pushnil
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #8]
	adrp	x8, chdir_error
	ldr	w3, [x8, :lo12:chdir_error]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushfstring
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	lua_pushboolean
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	change_dir, .Lfunc_end0-change_dir
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to change working directory to '%s'\n%s\n"
	.size	.L.str, 47
	.type	chdir_error,@object             // @chdir_error
	.bss
	.globl	chdir_error
	.p2align	2
chdir_error:
	.word	0                               // 0x0
	.size	chdir_error, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym change_dir
	.addrsig_sym luaL_checkstring
	.addrsig_sym chdir
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym lua_pushboolean
	.addrsig_sym chdir_error