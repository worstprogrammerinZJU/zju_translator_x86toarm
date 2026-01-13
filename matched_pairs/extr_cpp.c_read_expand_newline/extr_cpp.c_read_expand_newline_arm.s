	.text
	.p2align	2                               // -- Begin function read_expand_newline
	.type	read_expand_newline,@function
read_expand_newline:                    // @read_expand_newline
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	bl	lex
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-24]
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldur	x1, [x29, #-24]
	bl	map_get
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	ldur	x1, [x29, #-24]
	bl	set_has
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_5:
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_12
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_9
	b	.LBB0_13
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	ldur	x1, [x29, #-24]
	bl	set_add
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-32]
	ldur	x2, [x29, #-40]
	mov	x1, xzr
	bl	subst
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-16]
	bl	propagate_space
	ldr	x0, [sp, #48]
	bl	unget_all
	bl	read_expand
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_9:
	mov	w0, #40
	bl	next
	cbnz	w0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_11:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	read_args
	str	x0, [sp, #40]
	bl	peek_token
	str	x0, [sp, #32]
	mov	w0, #41
	bl	expect
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	ldr	x8, [sp, #32]
	ldr	w1, [x8, #16]
	bl	set_intersection
	ldur	x1, [x29, #-24]
	bl	set_add
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #24]
	bl	subst
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	propagate_space
	ldr	x0, [sp, #16]
	bl	unget_all
	bl	read_expand
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_12:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	ldur	x0, [x29, #-16]
	blr	x8
	bl	read_expand
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_13:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_expand_newline, .Lfunc_end0-read_expand_newline
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	macros,@object                  // @macros
	.globl	macros
	.p2align	2
macros:
	.word	0                               // 0x0
	.size	macros, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.size	.L.str, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expand_newline
	.addrsig_sym lex
	.addrsig_sym map_get
	.addrsig_sym set_has
	.addrsig_sym set_add
	.addrsig_sym subst
	.addrsig_sym propagate_space
	.addrsig_sym unget_all
	.addrsig_sym read_expand
	.addrsig_sym next
	.addrsig_sym read_args
	.addrsig_sym peek_token
	.addrsig_sym expect
	.addrsig_sym set_intersection
	.addrsig_sym error
	.addrsig_sym TIDENT
	.addrsig_sym macros