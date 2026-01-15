	.text
	.p2align	2                               // -- Begin function make_dir
	.type	make_dir,@function
make_dir:                               // @make_dir
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	luaL_checkstring
	stur	x0, [x29, #-24]
	mov	x0, xzr
	bl	umask
	str	x0, [sp, #24]
	ldur	x0, [x29, #-24]
	adrp	x8, S_IRUSR
	ldr	w8, [x8, :lo12:S_IRUSR]
	adrp	x9, S_IWUSR
	ldr	w9, [x9, :lo12:S_IWUSR]
	orr	w8, w8, w9
	adrp	x9, S_IXUSR
	ldr	w9, [x9, :lo12:S_IXUSR]
	orr	w8, w8, w9
	adrp	x9, S_IRGRP
	ldr	w9, [x9, :lo12:S_IRGRP]
	orr	w8, w8, w9
	adrp	x9, S_IWGRP
	ldr	w9, [x9, :lo12:S_IWGRP]
	orr	w8, w8, w9
	adrp	x9, S_IXGRP
	ldr	w9, [x9, :lo12:S_IXGRP]
	orr	w8, w8, w9
	adrp	x9, S_IROTH
	ldr	w9, [x9, :lo12:S_IROTH]
	orr	w8, w8, w9
	adrp	x9, S_IXOTH
	ldr	w9, [x9, :lo12:S_IXOTH]
	orr	w1, w8, w9
	bl	mkdir
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushfstring
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #24]
	bl	umask
	ldur	x0, [x29, #-16]
	mov	w1, #1
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	lua_pushboolean
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_dir, .Lfunc_end0-make_dir
                                        // -- End function
	.type	S_IRUSR,@object                 // @S_IRUSR
	.bss
	.globl	S_IRUSR
	.p2align	2
S_IRUSR:
	.word	0                               // 0x0
	.size	S_IRUSR, 4
	.type	S_IWUSR,@object                 // @S_IWUSR
	.globl	S_IWUSR
	.p2align	2
S_IWUSR:
	.word	0                               // 0x0
	.size	S_IWUSR, 4
	.type	S_IXUSR,@object                 // @S_IXUSR
	.globl	S_IXUSR
	.p2align	2
S_IXUSR:
	.word	0                               // 0x0
	.size	S_IXUSR, 4
	.type	S_IRGRP,@object                 // @S_IRGRP
	.globl	S_IRGRP
	.p2align	2
S_IRGRP:
	.word	0                               // 0x0
	.size	S_IRGRP, 4
	.type	S_IWGRP,@object                 // @S_IWGRP
	.globl	S_IWGRP
	.p2align	2
S_IWGRP:
	.word	0                               // 0x0
	.size	S_IWGRP, 4
	.type	S_IXGRP,@object                 // @S_IXGRP
	.globl	S_IXGRP
	.p2align	2
S_IXGRP:
	.word	0                               // 0x0
	.size	S_IXGRP, 4
	.type	S_IROTH,@object                 // @S_IROTH
	.globl	S_IROTH
	.p2align	2
S_IROTH:
	.word	0                               // 0x0
	.size	S_IROTH, 4
	.type	S_IXOTH,@object                 // @S_IXOTH
	.globl	S_IXOTH
	.p2align	2
S_IXOTH:
	.word	0                               // 0x0
	.size	S_IXOTH, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_dir
	.addrsig_sym luaL_checkstring
	.addrsig_sym umask
	.addrsig_sym mkdir
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym lua_pushboolean
	.addrsig_sym S_IRUSR
	.addrsig_sym S_IWUSR
	.addrsig_sym S_IXUSR
	.addrsig_sym S_IRGRP
	.addrsig_sym S_IWGRP
	.addrsig_sym S_IXGRP
	.addrsig_sym S_IROTH
	.addrsig_sym S_IXOTH
	.addrsig_sym errno