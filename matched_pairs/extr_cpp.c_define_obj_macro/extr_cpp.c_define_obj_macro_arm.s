	.text
	.p2align	2                               // -- Begin function define_obj_macro
	.type	define_obj_macro,@function
define_obj_macro:                       // @define_obj_macro
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x8, macros
	ldr	w8, [x8, :lo12:macros]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	make_vector1
	bl	make_obj_macro
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	map_put
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	define_obj_macro, .Lfunc_end0-define_obj_macro
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
	.addrsig_sym define_obj_macro
	.addrsig_sym map_put
	.addrsig_sym make_obj_macro
	.addrsig_sym make_vector1
	.addrsig_sym macros