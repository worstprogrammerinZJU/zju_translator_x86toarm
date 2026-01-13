	.text
	.p2align	2                               // -- Begin function remap_print
	.type	remap_print,@function
remap_print:                            // @remap_print
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_getglobal
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	lua_getglobal
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_setfield
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	lua_pop
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	adrp	x8, lua_chassis_log_message
	ldr	w2, [x8, :lo12:lua_chassis_log_message]
	bl	lua_register
	ldur	w8, [x29, #-12]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	g_assert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	remap_print, .Lfunc_end0-remap_print
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"os"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"print"
	.size	.L.str.1, 6
	.type	lua_chassis_log_message,@object // @lua_chassis_log_message
	.bss
	.globl	lua_chassis_log_message
	.p2align	2
lua_chassis_log_message:
	.word	0                               // 0x0
	.size	lua_chassis_log_message, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remap_print
	.addrsig_sym lua_gettop
	.addrsig_sym lua_getglobal
	.addrsig_sym lua_setfield
	.addrsig_sym lua_pop
	.addrsig_sym lua_register
	.addrsig_sym g_assert
	.addrsig_sym lua_chassis_log_message