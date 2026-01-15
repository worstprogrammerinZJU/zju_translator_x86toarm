	.text
	.p2align	2                               // -- Begin function read_declarator_params
	.type	read_declarator_params,@function
read_declarator_params:                 // @read_declarator_params
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-28]
	ldur	x8, [x29, #-24]
	str	wzr, [x8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	peek
	str	x0, [sp, #40]
	adrp	x8, KELLIPSIS
	ldr	w0, [x8, :lo12:KELLIPSIS]
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	vec_len
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #40]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_4
.LBB0_4:
	mov	w0, #41
	bl	expect
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_12
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-28]
	add	x0, sp, #32
	bl	read_func_param
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	ensure_not_void
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	vec_push
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	ast_lvar
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	bl	get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_12
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #40]
	mov	w1, #44
	bl	is_keyword
	cbnz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	read_declarator_params, .Lfunc_end0-read_declarator_params
                                        // -- End function
	.type	KELLIPSIS,@object               // @KELLIPSIS
	.bss
	.globl	KELLIPSIS
	.p2align	2
KELLIPSIS:
	.word	0                               // 0x0
	.size	KELLIPSIS, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"at least one parameter is required before \"...\""
	.size	.L.str, 48
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"comma expected, but got %s"
	.size	.L.str.1, 27
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_params
	.addrsig_sym peek
	.addrsig_sym next_token
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym read_func_param
	.addrsig_sym ensure_not_void
	.addrsig_sym vec_push
	.addrsig_sym ast_lvar
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym tok2s
	.addrsig_sym KELLIPSIS