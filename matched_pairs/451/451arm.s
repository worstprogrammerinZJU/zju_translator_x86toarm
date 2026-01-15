	.text
	.p2align	2                               // -- Begin function read_obj_macro
	.type	read_obj_macro,@function
read_obj_macro:                         // @read_obj_macro
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	bl	make_vector
	stur	x0, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	lex
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	vec_push
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	hashhash_check
	adrp	x8, macros
	ldr	w8, [x8, :lo12:macros]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	make_obj_macro
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	map_put
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_obj_macro, .Lfunc_end0-read_obj_macro
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	macros,@object                  // @macros
	.globl	macros
	.p2align	2
macros:
	.word	0                               // 0x0
	.size	macros, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_obj_macro
	.addrsig_sym make_vector
	.addrsig_sym lex
	.addrsig_sym vec_push
	.addrsig_sym hashhash_check
	.addrsig_sym map_put
	.addrsig_sym make_obj_macro
	.addrsig_sym TNEWLINE
	.addrsig_sym macros