	.text
	.p2align	2                               // -- Begin function read_undef
	.type	read_undef,@function
read_undef:                             // @read_undef
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_ident
	str	x0, [sp, #8]
	bl	expect_newline
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	map_remove
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_undef, .Lfunc_end0-read_undef
                                        // -- End function
	.type	macros,@object                  // @macros
	.bss
	.globl	macros
	.p2align	2
macros:
	.word	0                               // 0x0
	.size	macros, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_undef
	.addrsig_sym read_ident
	.addrsig_sym expect_newline
	.addrsig_sym map_remove
	.addrsig_sym macros