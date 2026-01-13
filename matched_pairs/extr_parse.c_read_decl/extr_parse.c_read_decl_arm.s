	.text
	.p2align	2                               // -- Begin function read_decl
	.type	read_decl,@function
read_decl:                              // @read_decl
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	sub	x0, x29, #16
	stur	wzr, [x29, #-16]
	bl	read_decl_spec_opt
	stur	x0, [x29, #-24]
	mov	w0, #59
	bl	next_token
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_21
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	sub	x8, x29, #32
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	mov	x8, xzr
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	stur	xzr, [x29, #-32]
	ldur	x0, [x29, #-24]
	bl	copy_incomplete_type
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	mov	w1, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	adrp	x8, DECL_BODY
	ldr	w3, [x8, :lo12:DECL_BODY]
	bl	read_declarator
	stur	x0, [x29, #-40]
	ldur	w8, [x29, #-16]
	adrp	x9, S_STATIC
	ldr	w9, [x9, :lo12:S_STATIC]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldur	w8, [x29, #-16]
	adrp	x9, S_TYPEDEF
	ldr	w9, [x9, :lo12:S_TYPEDEF]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-32]
	bl	ast_typedef
	b	.LBB0_16
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	cbz	w8, .LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-12]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-40]
	bl	ensure_not_void
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-32]
	bl	read_static_local_var
	b	.LBB0_15
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-40]
	bl	ensure_not_void
	ldur	w10, [x29, #-12]
	adrp	x9, :got:ast_lvar
	ldr	x9, [x9, :got_lo12:ast_lvar]
	adrp	x8, :got:ast_gvar
	ldr	x8, [x8, :got_lo12:ast_gvar]
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-32]
	blr	x8
	str	x0, [sp, #48]
	mov	w0, #61
	bl	next_token
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	x8, [sp, #48]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	read_decl_init
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	ast_decl
	mov	w1, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_14
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-16]
	adrp	x9, S_EXTERN
	ldr	w9, [x9, :lo12:S_EXTERN]
	subs	w8, w8, w9
	b.eq	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #48]
	mov	x1, xzr
	bl	ast_decl
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #59
	bl	next_token
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_21
.LBB0_18:                               //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #44
	bl	next_token
	cbnz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_3 Depth=1
	bl	peek
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	peek
	bl	tok2s
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_21:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_decl, .Lfunc_end0-read_decl
                                        // -- End function
	.type	DECL_BODY,@object               // @DECL_BODY
	.bss
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
	.type	S_TYPEDEF,@object               // @S_TYPEDEF
	.globl	S_TYPEDEF
	.p2align	2
S_TYPEDEF:
	.word	0                               // 0x0
	.size	S_TYPEDEF, 4
	.type	S_EXTERN,@object                // @S_EXTERN
	.globl	S_EXTERN
	.p2align	2
S_EXTERN:
	.word	0                               // 0x0
	.size	S_EXTERN, 4
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"';' or ',' are expected, but got %s"
	.size	.L.str, 36
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl
	.addrsig_sym read_decl_spec_opt
	.addrsig_sym next_token
	.addrsig_sym read_declarator
	.addrsig_sym copy_incomplete_type
	.addrsig_sym ast_typedef
	.addrsig_sym ensure_not_void
	.addrsig_sym read_static_local_var
	.addrsig_sym ast_gvar
	.addrsig_sym ast_lvar
	.addrsig_sym vec_push
	.addrsig_sym ast_decl
	.addrsig_sym read_decl_init
	.addrsig_sym errort
	.addrsig_sym peek
	.addrsig_sym tok2s
	.addrsig_sym DECL_BODY
	.addrsig_sym S_STATIC
	.addrsig_sym S_TYPEDEF
	.addrsig_sym S_EXTERN
	.addrsig_sym KIND_FUNC