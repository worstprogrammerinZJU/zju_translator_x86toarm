	.text
	.p2align	2                               // -- Begin function read_funclike_macro
	.type	read_funclike_macro,@function
read_funclike_macro:                    // @read_funclike_macro
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	bl	make_map
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	read_funclike_macro_params
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	read_funclike_macro_body
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	hashhash_check
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	map_len
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	w2, [x29, #-20]
	bl	make_func_macro
	str	x0, [sp, #8]
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	ldr	x2, [sp, #8]
	bl	map_put
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_funclike_macro, .Lfunc_end0-read_funclike_macro
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
	.addrsig_sym read_funclike_macro
	.addrsig_sym make_map
	.addrsig_sym read_funclike_macro_params
	.addrsig_sym read_funclike_macro_body
	.addrsig_sym hashhash_check
	.addrsig_sym make_func_macro
	.addrsig_sym map_len
	.addrsig_sym map_put
	.addrsig_sym macros