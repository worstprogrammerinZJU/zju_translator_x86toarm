	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	wzr, [x29, #-4]
	adrp	x8, TRUE
	ldr	w8, [x8, :lo12:TRUE]
	stur	w8, [x29, #-20]
	adrp	x8, g_ascii_strcasecmp
	ldr	x8, [x8, :lo12:g_ascii_strcasecmp]
	mov	w0, w8
	bl	g_tree_new
	stur	x0, [x29, #-16]
	str	xzr, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	bl	sql_token_get_last_id
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	subs	x8, x8, x0
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	mov	x1, xzr
	bl	sql_token_get_name
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #7
	bl	strncmp
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	mov	x1, xzr
	bl	sql_token_get_name
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	add	x8, x8, #8
	subs	x8, x8, #1
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	GINT_TO_POINTER
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	g_tree_insert
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_6:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldur	x0, [x29, #-16]
	adrp	x8, trav
	ldr	w1, [x8, :lo12:trav]
	sub	x2, x29, #20
	bl	g_tree_foreach
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	ldur	x0, [x29, #-16]
	bl	g_tree_destroy
	mov	w0, wzr
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	TRUE,@object                    // @TRUE
	.bss
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.type	g_ascii_strcasecmp,@object      // @g_ascii_strcasecmp
	.globl	g_ascii_strcasecmp
	.p2align	3
g_ascii_strcasecmp:
	.xword	0                               // 0x0
	.size	g_ascii_strcasecmp, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TK_SQL_"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"static int sql_keywords[] = {"
	.size	.L.str.1, 30
	.type	trav,@object                    // @trav
	.bss
	.globl	trav
	.p2align	2
trav:
	.word	0                               // 0x0
	.size	trav, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\n};\n"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"int *sql_keywords_get() { return sql_keywords; }\n"
	.size	.L.str.3, 50
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"int sql_keywords_get_count() { return sizeof(sql_keywords) / sizeof(sql_keywords[0]); }\n"
	.size	.L.str.4, 89
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym g_tree_new
	.addrsig_sym sql_token_get_last_id
	.addrsig_sym strncmp
	.addrsig_sym sql_token_get_name
	.addrsig_sym g_tree_insert
	.addrsig_sym GINT_TO_POINTER
	.addrsig_sym printf
	.addrsig_sym g_tree_foreach
	.addrsig_sym g_tree_destroy
	.addrsig_sym TRUE
	.addrsig_sym g_ascii_strcasecmp
	.addrsig_sym trav