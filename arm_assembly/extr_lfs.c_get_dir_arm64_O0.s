	.text
	.p2align	2                               // -- Begin function get_dir
	.type	get_dir,@function
get_dir:                                // @get_dir
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	sub	x8, x29, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x0, [x8]
	add	x0, sp, #15
	mov	w1, #255
	bl	getcwd
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	lua_pushnil
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x8, getcwd_error
	ldr	x1, [x8, :lo12:getcwd_error]
	bl	lua_pushstring
	ldr	x9, [sp]                        // 8-byte Folded Reload
	mov	w8, #2
	str	w8, [x9, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x0, [x8]
	add	x1, sp, #15
	bl	lua_pushstring
	ldr	x9, [sp]                        // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [x9, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x8, #12]
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	get_dir, .Lfunc_end0-get_dir
                                        // -- End function
	.type	getcwd_error,@object            // @getcwd_error
	.bss
	.globl	getcwd_error
	.p2align	3
getcwd_error:
	.xword	0
	.size	getcwd_error, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_dir
	.addrsig_sym getcwd
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushstring
	.addrsig_sym getcwd_error