	.text
	.p2align	2                               // -- Begin function read_ifdef
	.type	read_ifdef,@function
read_ifdef:                             // @read_ifdef
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	lex
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	bl	expect_newline
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #8]
	bl	map_get
	bl	do_read_if
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_ifdef, .Lfunc_end0-read_ifdef
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_ifdef
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym expect_newline
	.addrsig_sym do_read_if
	.addrsig_sym map_get
	.addrsig_sym TIDENT
	.addrsig_sym macros