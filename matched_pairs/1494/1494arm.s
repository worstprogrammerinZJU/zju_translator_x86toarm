	.text
	.p2align	2                               // -- Begin function dir_iter_factory
	.type	dir_iter_factory,@function
dir_iter_factory:                       // @dir_iter_factory
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	luaL_checkstring
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	mov	w1, #32
	bl	lua_newuserdata
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #24]
	ldur	x0, [x29, #-8]
	adrp	x8, DIR_METATABLE
	ldr	w1, [x8, :lo12:DIR_METATABLE]
	bl	luaL_getmetatable
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_setmetatable
	ldur	x0, [x29, #-16]
	bl	opendir
	ldr	x8, [sp, #24]
	str	x0, [x8, #8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	adrp	x8, dir_iter
	ldr	w1, [x8, :lo12:dir_iter]
	mov	w2, #1
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	bl	lua_pushcclosure
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	dir_iter_factory, .Lfunc_end0-dir_iter_factory
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
	.asciz	"cannot open %s: %s"
	.size	.L.str, 19
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	dir_iter,@object                // @dir_iter
	.globl	dir_iter
	.p2align	2
dir_iter:
	.word	0                               // 0x0
	.size	dir_iter, 4
	.type	MAX_DIR_LENGTH,@object          // @MAX_DIR_LENGTH
	.globl	MAX_DIR_LENGTH
	.p2align	3
MAX_DIR_LENGTH:
	.xword	0                               // 0x0
	.size	MAX_DIR_LENGTH, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_iter_factory
	.addrsig_sym luaL_checkstring
	.addrsig_sym lua_newuserdata
	.addrsig_sym luaL_getmetatable
	.addrsig_sym lua_setmetatable
	.addrsig_sym opendir
	.addrsig_sym luaL_error
	.addrsig_sym strerror
	.addrsig_sym lua_pushcclosure
	.addrsig_sym DIR_METATABLE
	.addrsig_sym errno
	.addrsig_sym dir_iter