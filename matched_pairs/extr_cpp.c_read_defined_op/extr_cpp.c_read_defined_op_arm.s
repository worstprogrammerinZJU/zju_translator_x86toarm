	.text
	.p2align	2                               // -- Begin function read_defined_op
	.type	read_defined_op,@function
read_defined_op:                        // @read_defined_op
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	lex
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	lex
	stur	x0, [x29, #-8]
	mov	w0, #41
	bl	expect
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_4
.LBB0_4:
	adrp	x8, macros
	ldr	w0, [x8, :lo12:macros]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #8]
	bl	map_get
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, cpp_token_one
	ldr	x8, [x8, :lo12:cpp_token_one]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	adrp	x8, cpp_token_zero
	ldr	x8, [x8, :lo12:cpp_token_zero]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_defined_op, .Lfunc_end0-read_defined_op
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
	.type	cpp_token_one,@object           // @cpp_token_one
	.globl	cpp_token_one
	.p2align	3
cpp_token_one:
	.xword	0
	.size	cpp_token_one, 8
	.type	cpp_token_zero,@object          // @cpp_token_zero
	.globl	cpp_token_zero
	.p2align	3
cpp_token_zero:
	.xword	0
	.size	cpp_token_zero, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_defined_op
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym expect
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym map_get
	.addrsig_sym TIDENT
	.addrsig_sym macros
	.addrsig_sym cpp_token_one
	.addrsig_sym cpp_token_zero