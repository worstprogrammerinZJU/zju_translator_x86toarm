	.text
	.p2align	2                               // -- Begin function version_l
	.type	version_l,@function
version_l:                              // @version_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, VERSION
	ldr	w1, [x8, :lo12:VERSION]
	bl	lua_pushstring
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	version_l, .Lfunc_end0-version_l
                                        // -- End function
	.type	VERSION,@object                 // @VERSION
	.bss
	.globl	VERSION
	.p2align	2
VERSION:
	.word	0                               // 0x0
	.size	VERSION, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym version_l
	.addrsig_sym lua_pushstring
	.addrsig_sym VERSION