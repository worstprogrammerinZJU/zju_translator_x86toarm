	.text
	.p2align	2                               // -- Begin function read_ifndef
	.type	read_ifndef,@function
read_ifndef:                            // @read_ifndef
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	lex
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	bl	expect_newline
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #16]
	bl	map_get
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	do_read_if
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #2
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, cond_incl_stack
	ldr	w0, [x8, :lo12:cond_incl_stack]
	bl	vec_tail
	str	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_ifndef, .Lfunc_end0-read_ifndef
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
	.type	macros,@object                  // @macros
	.bss
	.globl	macros
	.p2align	2
macros:
	.word	0                               // 0x0
	.size	macros, 4
	.type	cond_incl_stack,@object         // @cond_incl_stack
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.word	0                               // 0x0
	.size	cond_incl_stack, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_ifndef
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym expect_newline
	.addrsig_sym do_read_if
	.addrsig_sym map_get
	.addrsig_sym vec_tail
	.addrsig_sym TIDENT
	.addrsig_sym macros
	.addrsig_sym cond_incl_stack