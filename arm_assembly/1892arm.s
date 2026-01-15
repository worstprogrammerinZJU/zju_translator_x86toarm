	.text
	.p2align	2                               // -- Begin function read_funcdef
	.type	read_funcdef,@function
read_funcdef:                           // @read_funcdef
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	sub	x0, x29, #4
	stur	wzr, [x29, #-4]
	bl	read_decl_spec_opt
	stur	x0, [x29, #-16]
	adrp	x8, globalenv
	ldr	w0, [x8, :lo12:globalenv]
	bl	make_map_parent
	adrp	x8, localenv
	str	x0, [x8, :lo12:localenv]
	bl	make_vector
	adrp	x8, gotos
	str	x0, [x8, :lo12:gotos]
	bl	make_map
	adrp	x8, labels
	str	w0, [x8, :lo12:labels]
	bl	make_vector
	str	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #16]
	adrp	x8, DECL_BODY
	ldr	w3, [x8, :lo12:DECL_BODY]
	add	x0, sp, #24
	bl	read_declarator
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	vec_len
	cbnz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	str	wzr, [x8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	read_oldstyle_param_type
	ldr	x0, [sp, #16]
	bl	param_types
	ldr	x8, [sp, #8]
	str	w0, [x8, #8]
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-4]
	adrp	x9, S_STATIC
	ldr	w9, [x9, :lo12:S_STATIC]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	bl	ast_gvar
	mov	w0, #123
	bl	expect
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	read_func_body
	str	x0, [sp]
	bl	backfill_labels
                                        // kill: def $x8 killed $xzr
	adrp	x8, localenv
	str	xzr, [x8, :lo12:localenv]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_funcdef, .Lfunc_end0-read_funcdef
                                        // -- End function
	.type	globalenv,@object               // @globalenv
	.bss
	.globl	globalenv
	.p2align	2
globalenv:
	.word	0                               // 0x0
	.size	globalenv, 4
	.type	localenv,@object                // @localenv
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.type	gotos,@object                   // @gotos
	.globl	gotos
	.p2align	3
gotos:
	.xword	0
	.size	gotos, 8
	.type	labels,@object                  // @labels
	.globl	labels
	.p2align	2
labels:
	.word	0                               // 0x0
	.size	labels, 4
	.type	DECL_BODY,@object               // @DECL_BODY
	.globl	DECL_BODY
	.p2align	2
DECL_BODY:
	.word	0                               // 0x0
	.size	DECL_BODY, 4
	.type	S_STATIC,@object                // @S_STATIC
	.globl	S_STATIC
	.p2align	2
S_STATIC:
	.word	0                               // 0x0
	.size	S_STATIC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funcdef
	.addrsig_sym read_decl_spec_opt
	.addrsig_sym make_map_parent
	.addrsig_sym make_vector
	.addrsig_sym make_map
	.addrsig_sym read_declarator
	.addrsig_sym vec_len
	.addrsig_sym read_oldstyle_param_type
	.addrsig_sym param_types
	.addrsig_sym ast_gvar
	.addrsig_sym expect
	.addrsig_sym read_func_body
	.addrsig_sym backfill_labels
	.addrsig_sym globalenv
	.addrsig_sym localenv
	.addrsig_sym gotos
	.addrsig_sym labels
	.addrsig_sym DECL_BODY
	.addrsig_sym S_STATIC