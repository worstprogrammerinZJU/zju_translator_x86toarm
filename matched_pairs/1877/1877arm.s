	.text
	.p2align	2                               // -- Begin function read_declarator_params_oldstyle
	.type	read_declarator_params_oldstyle,@function
read_declarator_params_oldstyle:        // @read_declarator_params_oldstyle
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	get
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, type_int
	ldr	w0, [x8, :lo12:type_int]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	bl	ast_lvar
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	mov	w0, #41
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #44
	bl	next_token
	cbnz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	get
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.Lfunc_end0:
	.size	read_declarator_params_oldstyle, .Lfunc_end0-read_declarator_params_oldstyle
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"identifier expected, but got %s"
	.size	.L.str, 32
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"comma expected, but got %s"
	.size	.L.str.1, 27
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_params_oldstyle
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym vec_push
	.addrsig_sym ast_lvar
	.addrsig_sym next_token
	.addrsig_sym TIDENT
	.addrsig_sym type_int