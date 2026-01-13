	.text
	.p2align	2                               // -- Begin function read_funclike_macro_body
	.type	read_funclike_macro_body,@function
read_funclike_macro_body:               // @read_funclike_macro_body
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	make_vector
	str	x0, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	lex
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #12]
	bl	map_get
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	bl	copy_token
	str	x0, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	bl	vec_push
	b	.LBB0_1
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	vec_push
	b	.LBB0_1
.Lfunc_end0:
	.size	read_funclike_macro_body, .Lfunc_end0-read_funclike_macro_body
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	TIDENT,@object                  // @TIDENT
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funclike_macro_body
	.addrsig_sym make_vector
	.addrsig_sym lex
	.addrsig_sym map_get
	.addrsig_sym copy_token
	.addrsig_sym vec_push
	.addrsig_sym TNEWLINE
	.addrsig_sym TIDENT