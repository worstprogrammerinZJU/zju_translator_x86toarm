	.text
	.p2align	2                               // -- Begin function read_func_body
	.type	read_func_body,@function
read_func_body:                         // @read_func_body
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	adrp	x8, localenv
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldr	x0, [x8, :lo12:localenv]
	bl	make_map_parent
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, :lo12:localenv]
	bl	make_vector
	adrp	x8, localvars
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	str	x0, [x8, :lo12:localvars]
	ldur	x8, [x29, #-8]
	adrp	x9, current_func_type
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	str	x8, [x9, :lo12:current_func_type]
	adrp	x8, ENC_NONE
	ldr	w8, [x8, :lo12:ENC_NONE]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	strlen
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	add	x2, x8, #1
	bl	ast_string
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldr	x0, [x8, :lo12:localenv]
	ldur	x2, [x29, #-32]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	map_put
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x0, [x8, :lo12:localenv]
	ldur	x2, [x29, #-32]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	map_put
	bl	read_compound_stmt
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-40]
	ldr	x4, [x8, :lo12:localvars]
	bl	ast_func
	ldr	x10, [sp, #24]                  // 8-byte Folded Reload
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	str	x0, [sp, #48]
                                        // kill: def $x11 killed $xzr
	str	xzr, [x10, :lo12:current_func_type]
	str	xzr, [x9, :lo12:localenv]
	str	xzr, [x8, :lo12:localvars]
	ldr	x0, [sp, #48]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_func_body, .Lfunc_end0-read_func_body
                                        // -- End function
	.type	localenv,@object                // @localenv
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.type	localvars,@object               // @localvars
	.globl	localvars
	.p2align	3
localvars:
	.xword	0
	.size	localvars, 8
	.type	current_func_type,@object       // @current_func_type
	.globl	current_func_type
	.p2align	3
current_func_type:
	.xword	0
	.size	current_func_type, 8
	.type	ENC_NONE,@object                // @ENC_NONE
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.word	0                               // 0x0
	.size	ENC_NONE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__func__"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"__FUNCTION__"
	.size	.L.str.1, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_body
	.addrsig_sym make_map_parent
	.addrsig_sym make_vector
	.addrsig_sym ast_string
	.addrsig_sym strlen
	.addrsig_sym map_put
	.addrsig_sym read_compound_stmt
	.addrsig_sym ast_func
	.addrsig_sym localenv
	.addrsig_sym localvars
	.addrsig_sym current_func_type
	.addrsig_sym ENC_NONE